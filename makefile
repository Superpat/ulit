# RTFM: pdflatex(1) ghc(1) rm(1) sed(1)

default: tex2hs build

build:
	ghc ${EX}.hs 2>&1 | sed "s/${EX}.hs/${EX}.tex/g"

tex2hs:
	sh tex2hs.sh ${EX}.tex > ${EX}.hs
	
pdf:
	pdflatex ${EX}.tex

clean:
	rm ${EX}.hs ${EX}.hi ${EX}.o ${EX}.log ${EX}.aux ${EX}