# The two flags cannot live in thesis.typ: Typst builds its font book before
# parsing the document, and it has no project config file (typst/typst#4378,
# closed as not planned).
#   --font-path fonts       use the bundled fonts; without it the build
#                           silently falls back and looks wrong
#   --ignore-system-fonts   ignore installed fonts, so the output is identical
#                           on every machine
typst := "typst"
flags := "--ignore-system-fonts --font-path fonts"

default: build

build:
    {{typst}} compile {{flags}} thesis.typ thesis.pdf

watch:
    {{typst}} watch {{flags}} thesis.typ thesis.pdf

fonts:
    {{typst}} fonts {{flags}}

clean:
    rm -f thesis.pdf
