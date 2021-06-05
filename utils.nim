proc getEncryptedText*(text: string, key: int): string =
    var encryptedtext: string;
    for letter in text:
        encryptedtext.add(char(ord(letter) + key));
    return encryptedtext;