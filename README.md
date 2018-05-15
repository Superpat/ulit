# Ulit

This is an evolving project, do not expect stability or support.

Ulit is a haskell literary programming tool with the intention of becoming
language agnostic. It will evolve as time goes on, it's current iteration is 
haskell specific and not totally necessary, since ghc can easily read .lhs files.

## Dependencies

 - ghc(1) compiler
 - pdflatex(1) Available in teX distributions (I used texlive-base on openbsd)
 - awk(1)
 - make(1)
 - sed(1)

## Use

Set an env variable with the filename (without extension) and call make

Use `EX=FILE_NAME make` to build the file

Use `EX=FILE_NAME make pdf` to generate the pdf.

## Example

`EX=example/ex2.5 make`