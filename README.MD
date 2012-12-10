DNA Story
By Sam Neurohack
www.lapaillasse.org
sam at lapaillasse dot org
License information : CC BY

Totally unnecessary tool to translate DNA Letters to ASCII letters :

- DNA is encoded with 4 letters A, T, C, G. That means 4 possibilities like 2 bits (00, 01, 10 and 11).
- ASCII letters are from 0 to 255. 

So reading 4 continuous DNA letters you get 4 * 2 = 8 bits = 256 possibilities, like ASCII code. Maybe some DNA has already some text stories inside ? You can find out with DNA Story. 

DNA Story is can be run in numerous operating system like OS X, Linux, Windows,...

Install : you need Rebol 2.x (get it at rebol.com)
Run : Open a terminal and type rebol dnastory.r

Alternatively windows users can double click on dnastory icon, if they installed Rebol.

Usage : DNAstory search in its directory a file call dna.txt, process it and save the computation in another file called story.txt.
		dna.txt must be one line only (see the included example), no carriage return or linefeed !
		
Of course many codes are available : maybe A is 01 but could be 00 or 11 or 10. Actually 4 encoding possibilities are included. You can modify it by changing the value code: 3 code line. code can have 1, 2, 3 or 4 values.

WARNING : Has it's totally useless DNAstory is pretty straight forward, it will crash if you don't do what is intended.

------------------------------------------------------------------------

Programme inutile permettant de traduire des sequences ADN en ASCII.

- L'ADN possede 4 lettres A,T,C, et G, soit 4 possibilités comme 2  bits (00, 01, 10 et 11).

- Les lettres ASCII sont codees de 0 a 255.

4 lettres ADN contigues forment donc 4 * 2  = 8 bits = 256 possibilités comme le code ASCII. Peut etre que des sequences ADN racontent deja une histoire ? Vous pouvez essayer avec DNA Story.
