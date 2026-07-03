from bottle import template

class Aplication():
    def __init__(self):
        self.pages = {"index": self.index}

    def render(self, page):
        content = self.pages.get(page, self.index)
        return content()

    def index(self):
        return template('app/views/index')
    