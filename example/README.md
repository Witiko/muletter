This directory contains example documents for the various workplaces at
the Masaryk University (Brno, Czech Republic). The documents are archived
inside the `example.dtx` file. To unpack the archive, interpret the file
`example.ins` using a Unicode-aware TeX engine, such as XeTeX
(`xetex example.ins`) or LuaTeX (`luatex example.ins`). This should produce
several example documents.

You can typeset the individual example documents by running the [LaTeXMK][]
tool on them (`latexmk document.tex`). [LaTeXMK][] should be included in your
TeX distribution.  The typeset document will reside in the file `document.pdf`.

 [LaTeXMK]: https://www.ctan.org/pkg/latexmk/
