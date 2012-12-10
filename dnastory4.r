
REBOL [ Title: "dnastory" 
	author: Sam Neurohack
	note: "convert dna to text"
	Version: 0.3
]
code: 1
dnaname: %dna.txt
storyname: %story.txt
binary: 0

addbinary: does [
	binary: 0
	if code = 1 [
				letter: checksum dna-letter
				;print letter
				if letter = 10464553 [binary: 0]  		; A = 00
				if letter = 5201594 [binary: 1]  		; T = 01
				if letter = 1408548 [binary: 2]  		; C = 10
				if letter = 8819909 [binary: 3]  		; G = 11
				;print binary
				]
		if code = 2 [
				letter: checksum dna-letter
				;print letter
				if letter = 10464553 [binary: 1]  	
				if letter = 5201594 [binary: 2]  		
				if letter = 1408548 [binary: 3]  		
				if letter = 8819909 [binary: 0]  		
				;print binary
				]
			if code = 3 [
				letter: checksum dna-letter
				;print letter
				if letter = 10464553 [binary: 2]  	
				if letter = 5201594 [binary: 3]  		
				if letter = 1408548 [binary: 0]  		
				if letter = 8819909 [binary: 1]  		
				;print binary
				]
	
]

dna-data: read dnaname
length-dna: length? dna-data
print ajoin ["Longueur : " length-dna]

delete storyname
write/lines storyname "dnastory results"

for dna-marker 0 (length-dna / 2) 1 [					; read 4 DNA to make an ASCII letter
	ascii-letter: 0
	
	dna-letter: copy/part skip dna-data dna-marker 1
	;print dna-letter
	addbinary 
	ascii-letter: binary + (binary * 16)
	
	dna-letter: copy/part skip dna-data (dna-marker + 1) 1
	;print dna-letter
	addbinary
	ascii-letter: ascii-letter + (binary * 64)
	
	
	
	print to-char ascii-letter
	write/append storyname to-char ascii-letter
	]
	
	
