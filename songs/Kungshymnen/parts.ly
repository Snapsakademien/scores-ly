global = {
	\time 4/4
	\key es \major
}

tOne = \relative c' {
	\partial 4
	\autoBeamOff

	bes4 | g bes es es | d4. c8 bes4 bes |
	aes' g f es | g4. f8 f4 es |
	d c bes c8[ d] | es2 s4

	\bar ":|.|:"

	bes | d4. es8 f4 bes, | g'4. f8 es4 es |
	d4. d8 es4 c | bes4. aes8 g4 bes |

	d4. es8 f4 bes, | g' f es d |
	c4. f8 es4 d | es2 s4

	\bar ":|."
}

tTwo = \relative c' {
	\partial 4
	\autoBeamOff

	bes4 | g bes bes a | bes4. a8 bes4 bes |
	f' es es es | es4. d8 d4 c |
	bes aes g aes | g2 bes4\rest

	bes | bes4. bes8 bes4 bes | bes4. bes8 bes4 bes |
	aes4. aes8 g4 g | aes4. f8 g4 bes |

	bes4. bes8 bes4 bes | bes b c bes |
	aes4. bes8 bes4 bes | bes2 bes4\rest
}

bOne = \relative c' {
	\partial 4
	\autoBeamOff

	bes4 | es, f g f | f4. es8 d4 bes' |
	bes bes c c | bes4. bes8 bes4 g |
	g es es f | es2 s4

	bes' | aes4. g8 f4 bes | g4. aes8 bes4 g |
	f4. f8 es4 es | f4. d8 es4 bes' |

	aes4. g8 f4 bes | g g g g |
	es4. aes8 g4 f | g2 s4
}

bTwo = \relative c {
	\partial 4
	\autoBeamOff

	bes4 | es d c c | bes4. bes8 bes4 bes |
	d es aes a | bes4. bes,8 bes4 c |
	g aes bes bes | es,2 d'4\rest

	bes' | f4. es8 d4 bes' | es,4. f8 g4 bes, |
	b4. b8 c4 c | d4. bes8 es4 bes' |

	f4. es8 d4 bes' | es, d c g |
	aes4. aes8 bes4 bes | es2 d4\rest
}

dynamics = \relative c {
	\override DynamicLineSpanner.staff-padding = #3

	\mark "Ej fort, men kraftigt"

	s4\mf | s1 |
	s2. s4\< |
	s4\! s2.\> | s2\> s4\! s4\dim |
	s1\! | s2.

	\bar ":|.|:"

	s4\f | s2\> s2\! |
	s2\> s4\! s4\p |
	s1 | s2. s4\cresc |
	s1 | s2.\!\f\> s4\!
	s1\dim | s2.\!

	\bar ":|."
}
