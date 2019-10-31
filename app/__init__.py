"""
APP Factory
"""
from flask import Flask, escape, request

APP = Flask(__name__)


def format_response(name):
    """Response formatter"""
    if name is None:
        name = "World"

    return name


@APP.route('/')
def hello():
    """Handler for '/' route"""
    name = format_response(request.args.get("name", None))
    return f'Hello, {escape(name)}!'
