# About #

MUletter is the document class for typesetting letters at the Masaryk
University in Brno in the LaTeX typesetting system. This material is
subject to the LaTeX Project Public License.

# Installation #

To install the package, interpret the file `muletter.ins` using a TeX
engine (`tex muletter.ins`). This should produce the file
`muletter.cls`.

## Local installation ##

To perform a local installation,

  1. create the base directory `<TEXMF>/tex/latex/muletter/` and
  2. place the file `muletter.cls` and the subdirectories `logo/`,
     `label/`, and `locale/` into the base directory.

`<TEXMF>` corresponds to a root of your TeX distribution, such as
`/usr/share/texmf` and `~/texmf` on UN\*X systems or
`c:\users\<YOUR USERNAME>\texmfhome` on Windows systems. When in doubt,
consult the manual of your TeX distribution.

## Portable installation ##

Alternatively, you can also

  1. place the file `muletter.cls` next to your LaTeX document,
  2. create the base directory `muletter/` next to your LaTeX document,
     and
  3. place subdirectories `logo/`, `label/`, and `locale/` into the base
     directory.

This way you can distribute your LaTeX document and MUletter together.

# Further information #

For further information, consult the package documentation, which can be
typeset by running the [LaTeXMK][LaTeXMK] tool on the `muletter.dtx` file
(`latexmk muletter.dtx`). [LaTeXMK][LaTeXMK] should be included in your
TeX distribution. The typeset documentation will reside in the file
`muletter.pdf`.

 [LaTeXMK]: https://www.ctan.org/pkg/latexmk/
