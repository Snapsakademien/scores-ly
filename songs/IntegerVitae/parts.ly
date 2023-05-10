global = {
	\key d \major
}

system = \relative c' {
	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #3

	s2\p  s2\<  | s2\> s4\! s4 | s4  s4\< s4 s4\! | s2\> s2\! | \break
	s1\<        | s2\> s4\! s4 | s4. s8\< s4 s4\! | s2\> s2\! | \break
	s4\mf s2.\< | s2\> s4\! s4 | s1               | s1        | \break
	s1\p        | s1           | s1

	\bar "|."

	\stopStaff
	\repeat unfold 2 { s1 }
}

tOne = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	d2^\markup { Andantino } d4 d4 | e2 e | fis4 d4 d4 e4 | d2 cis4 r4 |
	fis2 fis4 fis4 | fis4.( e8) e2 | d4. d8 e4 d4 | d2 cis4 r4 |
	fis2 d4 d4 | g4.( fis8) e2 | fis4. fis8 e4 d4 | cis4( b4) a2 |
	fis'2 d4 e4 | d2( cis2) | d1 |
}

tTwo = \relative c' {
	\autoBeamOff

	a2 a4 a4 | a2 a2 | a4 ais4 b4 b4 | a2 a4 s4 |
	a2 a4 a4 | ais2 ais2 | b4. b8 b4 b4 | b2 ais4 s4 |
	d2 a4 a4 | a2 a2 | a4. a8 gis4 gis4 | a4( gis4) a2 |
	a2 b4 b4 | a1 | a1 |
}

bOne = \relative c {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	fis2 fis4 fis4 | g2 g2 | fis4 fis4 g4 g4 | fis2 e4 r4 |
	fis2 fis4 fis4 | fis2 fis2 | fis4. fis8 g4 fis4 | fis2 fis4 r4 |
	a2 fis4 fis4 | e2 e2 | d4. d8 e4 e4 | e4( d4) cis2 |
	d2 d4 g4 | fis2( e2) | fis1 |
}

bTwo = \relative c {
	\autoBeamOff

	d2 d4 d4 | cis2 cis2 | d4 d4 g,4 g4 | a2 a4 s4 |
	d2 d4 d4 | cis2 cis2 | b4. b8 b4 b4 | fis2 fis4 s4 |
	d'2 d4 d4 | cis2 cis2 | d4. d8 b4 b4 | a2 a2 |
	d2 g,4 e4 | a1 | d1 |
}
