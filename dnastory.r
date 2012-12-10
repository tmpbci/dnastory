
REBOL [ Title: "dnastory" 
	author: Sam Neurohack
	note: "convert dna to text"
	Version: 0.3
]
code: 3
dnaname: %dna.txt
storyname: %story.txt
binary: 0

addbinary: does [
	binary: 0
	if code = 1 [
				letter: checksum dna-letter
				;print letter
				if any [letter = 10464553 letter = 9657536] [binary: 0]  		; A = 00
				if any [letter = 5201594 letter = 4435795]  [binary: 1]  		; T = 01
				if any [letter = 1408548 letter = 1675213] [binary: 2]  		; C = 10
				if any [letter = 8819909 letter = 9069868] [binary: 3]  		; G = 11
				;print binary
				]
	if code = 2 [
				letter: checksum dna-letter
				;print letter
				if any [letter = 10464553 letter = 9657536] [binary: 1]  		; A = 01
				if any [letter = 5201594 letter = 4435795]  [binary: 2]  		; T = 10
				if any [letter = 1408548 letter = 1675213] [binary: 3]  		; C = 11
				if any [letter = 8819909 letter = 9069868] [binary: 0]  		; G = 00
				;print binary
				]
	if code = 3 [
				letter: checksum dna-letter
				;print letter
				if any [letter = 10464553 letter = 9657536] [binary: 2]  		; A = 10
				if any [letter = 5201594 letter = 4435795] [binary: 3]  		; T = 11
				if any [letter = 1408548 letter = 1675213] [binary: 0]  		; C = 00
				if any [letter = 8819909 letter = 9069868] [binary: 1]  		; G = 01
				;print binary
				]
	if code = 4 [
				letter: checksum dna-letter
				;print letter
				if any [letter = 10464553 letter = 9657536] [binary: 0]  		; A = 00
				if any [letter = 5201594 letter = 4435795]  [binary: 3]  		; T = 11
				if any [letter = 1408548 letter = 1675213] [binary: 1]  		; C = 01
				if any [letter = 8819909 letter = 9069868] [binary: 2]  		; G = 10
				;print binary
				]
	
]

dna-data: read dnaname
length-dna: length? dna-data
print ajoin ["Longueur : " length-dna]

delete storyname
write/lines storyname "dnastory results"

for dna-marker 0 (length-dna / 3) 1 [					; read 4 DNA to make an ASCII letter
	ascii-letter: 0
	
	dna-letter: copy/part skip dna-data dna-marker 1
	;print dna-letter
	addbinary 
	ascii-letter: binary + (binary * 2)
	
	dna-letter: copy/part skip dna-data (dna-marker + 1) 1
	;print dna-letter
	addbinary
	ascii-letter: ascii-letter + (binary * 8)
	
	dna-letter: copy/part skip dna-data (dna-marker + 2) 1
	;print dna-letter
	addbinary
	ascii-letter: ascii-letter + (binary * 32)
	
	
	print to-char ascii-letter
	write/append storyname to-char ascii-letter
	]
	
	
