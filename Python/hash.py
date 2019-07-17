import kms

cmd = ""
while True:

    print("""\033[1;36;[1] -> MD5
    [2] -> SHA256
    [3] -> OpenSSL Algorithm

    [99] -> exit
    \033[1;37;""")

    # Get Input
    cmd = input(">> ")

    #Hash Your String With MD5 Method
    if cmd == "1":
        str = input("Enter Your String For MD5 Hash Method : ")
        print("\033[1;31;[+] -> " + kms.MD5_hash(str) + "\033[1;37;")

    # Hash Your String With SHA256 Method
    elif cmd == "2":
        str = input("Enter Your String For SHA256 Method : ")
        print("\033[1;31;[+] -> " + kms.sha256_hash(str) + "\033[1;37;")

    # Hash Your String With OpenSSL Algorithm
    elif cmd == "3":
        str = input("Enter Your String For OpenSSL Algorithm : ")
        print("\033[1;31;[+] -> " + kms.sha256_hash(str) + "\033[1;37;")

    # Exit If cmd Is 99{Exit}
    elif cmd == "99":
        break

    else:
        print("\033[1;31;You Entered Wrong Command!\033[1;37;")
