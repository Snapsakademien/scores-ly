global = {
	\time 2/4
	\key g \minor
}

tOne = \relative c {
	\autoBeamOff
	\partial 8

	d8 | g8. a16 bes8 c8 | d4 fis8 a | a8[ g] g f | d4 s8
	d | c4 es8 d | bes bes d8 c8 | a8.[ bes16] g4~ | g8 s8 s8
	d8 | g8. a16 bes8 c8 | d8 d fis8 a8 | a8[ g] g f | d4 s8
	d | c4 es8 d | bes bes d8 c8 | a8.[ bes16] g4~ | g8 s8

	a4 | bes bes8 d | d[ c] c a | bes8.[ a16] bes8 g | a4 s8

	d,8 | g8. a16 bes8 c8 | d4 fis8 a8 | a8 g g f | d4 s8
	d | f4 d8 c | bes bes d c | a8.[ bes16] g4~ | g8 s8 s8
	\bar "|."
}

dynamics = \relative c {
	\autoBeamOff
	\partial 8
	\override DynamicLineSpanner.staff-padding = #5

	s8\mf | s2\< | s | s\!\f\dim | s4.\!\p
	s8 | s2 | s4\< s\> | s2\! | s4.
	s8\mf | s2\< | s | s\!\f\dim | s4.\!\p
	s8 | s2 | s4\< s\> | s2\! | s4

	s4\p | s2 | s2 | s2 | s4.

	s8\mf | s2\< | s2 | s2\!\f\dim | s4.\!\p
	s8\< | s4\fz s4\> | s\! s\p | s2 | s4.
	\bar "|."
}


tTwo = \relative c {
	\autoBeamOff
	\partial 8

	d8 | g8. fis16 g8 a8 | bes4 a8 c8 | bes4 c8 c | bes4 bes8\rest
	bes | a4 c8 a | g g g8 g8 | fis4 g~ | g8 bes8\rest bes8\rest
	d,8 | g8. fis16 g8 a8 | bes8 bes a8 c8 | bes4 c8 c | bes4 bes8\rest
	bes | a4 c8 a | g g g8 g8 | fis4 g~ | g8 bes8\rest

	f4 | f f8 f | fis4 fis8 fis | g8.[ fis16] g8 g | fis4 bes8\rest

	d,8 | g8. fis16 g8 a8 | bes4 a8 c8 | bes8 bes a c | bes4 bes8\rest
	bes | c4 bes8 a | bes g g g | fis4 g~ | g8 bes8\rest bes8\rest
	\bar "|."
}

bOne = \relative c {
	\autoBeamOff
	\partial 8

	d8 | g8. d16 d8 d8 | d4 d8 d8 | d4 f8 f | f4 s8
	f | f4 g8 fis | g d d8 es8 | d4 bes~ | bes8 s8 s8
	d | g8. d16 d8 d8 | d8 d d8 d8 | d4 f8 f | f4 s8
	f | f4 g8 fis | g d d8 es8 | d4 bes~ | bes8 s8

	c4 | d d8 d | d4 d8 d | d4 d8 d | d4 s8

	d | g8. d16 d8 d8 | d4 d8 fis8 | g8 g a a | f4 s8
	f | f4 f8 f | d d d es | d4 bes~ | bes8 s8 s8
	\bar "|."
}

bTwo = \relative c {
	\autoBeamOff
	\partial 8

	d8 | g8. d16 bes8 a8 | g4 d'8 d8 | g,4 a8 a | bes4 d8\rest
	bes | f'4 c8 d | g, g bes8 c8 | d4 g,~ | g8 d'8\rest d8\rest
	d8 | g8. d16 bes8 a8 | g8 g d'8 d8 | g,4 a8 a | bes4 d8\rest
	bes | f'4 c8 d8 | g,8 g8 bes8 c8 | d4 g,~ | g8 d'8\rest

	f,4 | bes4 bes8 bes8 | a4 a8 d8 | g,4 g8 bes | d4 d8\rest

	d8 | g8. d16 bes8 a8 | g4 d'8 d8 | es8 es f f | bes,4 d8\rest
	bes | a4 bes8 f | g g bes c | d4 g,~ | g8 d'8\rest d8\rest
	\bar "|."

}
