import validators
import js2py
import sys

def check(website):
    return bool(validators.url(website))

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
