"""
APP Factory
"""
from flask import Flask, escape, request

APP = Flask(__name__)


@APP.route('/')
def hello():
    """Handler for '/' route"""
    name = request.args.get("name", "World")
    return f'Hello, {escape(name)}!'
