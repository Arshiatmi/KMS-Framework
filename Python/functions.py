import httplib
import js2py
import sys

def check(website):
    site = httplib.HTTPConnection(website)
    site.request("HEAD", '')
    if site.getresponse().status == 200:
       return 1
    return 0

def encode(str):
    a = sys.argv[1]
    js = f"encodeURI({a})"
    js2 = f"encodeURIComponent({a})"
    first = js2py.eval_js(js)
    sec = js2py.eval_js(js2)
    return [first,sec]

def decode(str):
    a = sys.argv[1]
    js = f"decodeURI({a})"
    js2 = f"decodeURIComponent({a})"
    first = js2py.eval_js(js)
    sec = js2py.eval_js(js2)
    return [first,sec]
