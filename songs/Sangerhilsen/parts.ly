global = {
	\key a \major
	\time 4/4
}

system = \relative c' {

	s1\f | s1 | s8. s16\< s4 s2\! | s1 |
	s1 | s1| s1 | s1 |
	s1\p | s2. s4\fp | s4 s2.\cresc | s2.\f-\< s4\! |
	s1 | s4 s2. | s1 | s1
	 \bar "|."
}

tOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	a4.-> a8 a4 \tuplet 3/2 {a,8[( cis8 e8)]} |
	a4-> a4-> a4-> a4-> |
	a8.-> a16 a8 a8 b4.-> b8 |
	cis2->~ cis8 r8 r4 | \break

	cis4.-> cis8 cis4 \tuplet 3/2 {cis,8[( e8 gis8])} |
	cis4-> cis4-> cis4-> cis4-> |
	cis8.-> cis16 cis8 cis8 dis4.-> dis8 |
	e2->~ e8 r8 r4 | \break

	b4.-> b8-. cis4-. b4-. |
	a8.-. cis16 b4-. r4  e,4->~ |
	e8. e16 gis8 b8 d4.-> d8 |
	fis2. r4 | \break

	e1~ |
	e4 f4->^\markup{\italic{più \dynamic f}} fis4-> g4-> |
	gis2->( fis4->) \once \override NoteColumn.force-hshift = #0.6 e4-> |
	a2.-> r4
}

tTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	a4. a8 a4 \tuplet 3/2 {a,8[( cis8 e8)]} |
	a4 a4 a4 gis4 |
	fis8. fis16 fis8 fis8 a4. a8 |
	a2->~ a8 r8 r4 |

	cis4. cis8 cis4 \tuplet 3/2 {cis,8[( e8 gis8])} |
	cis4 cis4 cis4 b4 |
	a8. a16 a8 a8 cis4. cis8 |
	cis2~ cis8 r8 r4 |

	gis4. gis8 a4 gis4 |
	a8. a16 gis4 r4  e4~ |
	e8. e16 gis8 b8 d4. d8 |
	dis2. r4 |

	d1~ |
	d4 d4 d4 d4 |
	d2. 	\once \override NoteColumn.force-hshift = #-0.6 <e d>4 |
	<e cis>2. r4
}

bOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	a4. a8 a4 \tuplet 3/2 {a,8[( cis8 e8)]} |
	a4 gis4 fis4 e4 |
	d8. d16 d8 d8 fis4. fis8 |
	e2~ e8 r8 r4 | \break

	cis'4. cis8 cis4 \tuplet 3/2 {cis,8[( e8 gis8])} |
	cis4 b4 a4 gis4 |
	fis8. fis16 fis8 fis8 a4. a8 |
	gis2~ gis8 r8 r4 | \break

	e4. e8 e4 e4 |
	e8. e16 e4 r4  e4~ |
	e8. e16 e8 gis8 a4. a8 |
	c2. r4 | \break

	b4( e4 d4 cis4 |
	b4) b4 b4 b4 |
	b2( a4) gis4 |
	a2. r4
}

bTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	a4.-> a8 a4 \tuplet 3/2 {a,8[( cis8 e8)]} |
	a4-> gis4-> fis4-> e4-> |
	d8.-> d16 d8 d8 d4.-> d8 |
	a2->~ a8 r8 r4 | \break

	cis'4.-> cis8 cis4 \tuplet 3/2 {cis,8[( e8 gis8])} |
	cis4-> b4-> a4-> gis4-> |
	fis8.-> fis16 fis8 fis8 fis4.-> fis8 |
	cis2~ cis8 r8 r4 | \break

	d4.-> d8 d4-. d4-. |
	cis8.-. a16 e'4-. r4  e4->~ |
	e8. e16 e8 e8 fis4. fis8 |
	a2. r4 | \break

	gis4( cis4 b4 a4 |
	gis4) g4->_\markup{\italic{più \dynamic f}} fis4-> f4-> |
	e2.-> e4-> |
	<e a,>2. r4
}
