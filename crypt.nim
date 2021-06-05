import utils;
type 
    myFile* = object
        path*: string;
type
    EncryptionMethod* = object
        key*: int
        tipe*: string;
proc Encrypt*(yourfile: myFile, metodfor: EncryptionMethod, metod: string): void =
    if metod == "key":
        var Cryptedtext = getEncryptedText(readFile(yourfile.path), metodfor.key)
        let file = open(yourfile.path, fmWrite)
        defer: file.close()
        file.writeLine(Cryptedtext);


    
