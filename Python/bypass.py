import kms

cmd = ""
while True:

    print("""\033[1;36;[1] -> XSS Reflected Bypass

    [99] -> exit
    \033[1;37;""")

    #Get Input
    cmd = input(">> ")

    #Exit If cmd Is 99{Exit}
    if cmd == "99":
        break

    #Get String That Contains A Javascript Code.
    str = input("Enter Your String : ")

    #XSS Reflected Bypass
    if cmd == "1":
        #Get All Of Bypassed Strings And Print Them One By One In Green Color.
        for i in kms.xss_reflected_bypass(str):
            print("\033[1;31;[+] -> " + i + "\033[1;37;")

    else:
        print("\033[1;31;You Entered Wrong Command!\033[1;37;")
