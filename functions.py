import httplib
import sys

def check(website):
    site = httplib.HTTPConnection(website)
    site.request("HEAD", '')
    if site.getresponse().status == 200:
       return 1
    return 0