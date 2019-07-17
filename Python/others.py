import functions
import kms

cmd = ""
while True:

    print("""\033[1;36;[1] -> Find Admin PHP
    [2] -> Find Admin ASP
    [3] -> Find CMS
    [4] -> Encode Url
    [5] -> Decode Url

    [99] -> exit
    \033[1;37;""")

    #Get Input
    cmd = input(">> ")

    #Exit If cmd Is 99{Exit}
    if cmd == "99":
        break

    #Get Website Address
    website = input("Enter Target Website : ")

    # check If URL Is Valid.
    if not functions.check(website):
        print("Sorry! Target Not Found!")
        exit(0)

    #Find Admin Of Websites That Created By PHP.
    if cmd == "1":
        print("\033[1;31;[+] -> " + kms.find_admin_php(website) + "\033[1;37;")

    # Find Admin Of Websites That Created By ASP.
    elif cmd == "2":
        print("\033[1;31;[+] -> " + kms.find_admin_asp(website) + "\033[1;37;")

    # Find CMS Of Page.
    elif cmd == "3":
        print("\033[1;31;[+] -> " + kms.find_cms(website) + "\033[1;37;")

    # Encode URL.
    elif cmd == "4":
        str = input("Enter Your String : ")
        for i in functions.encode(str):
            print(f"\033[1;31;[+] -> {i}\033[1;37;")

    # Decode URL.
    elif cmd == "5":
        str = input("Enter Your String : ")
        for i in functions.decode(str):
            print(f"\033[1;31;[+] -> {i}\033[1;37;")

    else:
        print("\033[1;31;You Entered Wrong Command!\033[1;37;")
