# IDEJA
# 1. Iz asemblerske datoteke izbaciti sve razmake i komentare. Sjetite
#    se kako komentari u hack asembleru mogu biti jednolinijski i
#    viselinijski.
# 2. Sve simbole i varijable pretvoriti u numericke adrese (brojevi
#    linija ili adrese u memoriji).
# 3. Parsirati naredbe (A i C-instrukcije).

class Parser:
    from parseLines import _parse_lines, _parse_line
    from parseSymbs import _init_symbols, _parse_symbols, _parse_labels, _parse_variables
    from parseComms import _init_comms, _parse_command, _parse_commands
    
    def __init__(self, filename):
        # Otvaramo input asemblersku datoteku.
        try:
            self._file = open(filename + ".asm", "r")
        except:
            Parser._error("File", -1, "Cannot open source file")
            return

        # Linije iz input datoteke upisujuemo u ovu listu.
        self._lines = []
        
        # Citamo input datoteku.
        try:
            self._read_lines()
        except:
            Parser._error("File", -1, "Cannot read source file.")
            return

        # Pogreske prilikom parsiranja.
        self._flag = True # Ukoliko je flag postavljen na False, parsiranje je neuspjesno.
        self._line = -1   # lokacija (broj linije) na kojoj se pogreska nalazi.
        self._errm = ""   # Poruka koja opisuje pogresku.
        
        # oznake
        self._labels = {}
        self._variables = {}

        # Parsiramo linije izvornog koda.
        self._parse_lines()
        if self._flag == False:
            Parser._error("PL", self._line, self._errm)
            return
            
        self._parse_symbols()
        if self._flag == False:
            Parser._error("SYM", self._line, self._errm)
            return
            
        self._parse_commands()
        if self._flag == False:
            Parser._error("COM", self._line, self._errm)
            return
            
        # Na kraju parsiranja strojni kod upisujemo u ".hack" datoteku.
        try:
            self._outfile = open(filename + ".hack", "w")
        except:
            Parser._error("File", -1, "Cannot open output file")
            return

        try:
            self._write_file()
        except:
            Parser._error("File", -1, "Cannot write to output file")
            return          

    # Funkcija koja cita input datoteku te svaki redak sprema u listu uredjenih
    # trojki kojima su koordinate
    #   1. originalna linija iz datoteke
    #   2. broj linije u parsiranoj datoteci (u pocetku isti kao 3.)
    #   3. broj linije u originalnoj datoteci
    def _read_lines(self):
        n = 0
        for line in self._file:
            self._lines.append((line, n, n));
            n += 1

    # Funkcija upisuje parsirane linije u output ".hack" datoteku.
    def _write_file(self):
        for (line, p, o) in self._lines:
            self._outfile.write(line)
            if (line[-1] != "\n"):
                self._outfile.write("\n")

    # Funkcija iterira procitanim linijama i na svaku primjenjuje funkciju
    # "func". Funkcija "func" vraća string koji odgovara vrijednosti parsirane
    # linije.
    #
    # Primjer:
    # ("@END", 4, 4) postaje ("@3", 3, 4)
    #
    # Ukoliko je duljina vracene linije 0, tu liniju brisemo. Takodjer, svaka
    # funkcija "func" mora se brinuti o pogreskama na koje moze naici (npr.
    # viselinijski komentari koji nisu zatvoreni ili pogresna naredba M=B+1).
    def _iter_lines(self, func):
        newlines = []
        i = 0
        for (line, p, o) in self._lines:
            newline = func(line, i, o)
            if (self._flag == False):
                break
            if (len(newline) > 0):
                newlines.append((newline, i, o))
                i += 1
        self._lines = newlines

    def _parse_macro(self):
        br = 0
        t = []
        mparams = []
        for line in self._file.split("\n"):
            if len(line) > 0 and line[0] == "$":
                if line == "$END":
                    if len(t) == 0:
                        self._flag = False
                        self._line = br
                        self._errm = "Invalid macro"
                    else:
                        self._file = self._file.replace(line, self._end_while(t[-1]), 1)
                        t.pop(-1)
                        mparams.pop(-1)
                else:
                    s = line.replace(" ", "").split("(")
                    comm = s[0][1:]
                    params = s[1][:-1]
                    params = params.split(",")

                    if comm == "MV":
                        self._file = self._file.replace(line, self._mv(params[0], params[1]), 1)

                    elif comm == "SWP":
                        self._file = self._file.replace(line, self._swp(params[0], params[1]), 1)

                    elif comm == "SUM":
                        self._file = self._file.replace(line, self._sum(params[0], params[1], params[2]), 1)

                    elif comm == "WHILE":
                        t.append(br)
                        mparams.append(params[0])
                        self._file = self._file.replace(line, self._while(params[0], br), 1)

                    else:
                        self._flag = False
                        self._line = br
                        self._errm = "Invalid macro"
            br += 1


    def _while(self, A, o):
        return f"(WHILELOOP{o})\n@{A}\nD=M\n@END_WHILELOOP{o}\nD;JEQ\n"


    def _end_while(self, A):
        return f"@WHILELOOP{A}\n0;JMP\n(END_WHILELOOP{A})"


    def _mv(self, A, B):
        return f"@{A}\nD=M\n@{B}\nM=D"


    def _swp(self, A, B):
        return f"@{A}\nD=M\n@temp\nM=D\n@{B}\nD=M\n@{A}\nM=D\n@temp\nD=M\n@{B}\nM=D\n"


    def _sum(self, A, B, C):
        return f"@{A}\nD=M\n@{B}\nD=D+M\n@{C}\nM=D\n"
        
    @staticmethod
    def _error(src, line, msg):
        if len(src) > 0 and line > -1:
            print("[" + src + ", " + str(line) + "] " + msg)
        elif len(src) > 0:
            print("[" + src + "] " + msg)
        else:
            print(msg)  


if __name__ == "__main__":
    Parser("Pong")
