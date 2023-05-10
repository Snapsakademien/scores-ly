global = {
	\time 4/4
	\key bes \major
}

bars = \relative c' {
	\repeat unfold 3 { s1 \noBreak} \break
	\repeat unfold 4 { s1 \noBreak} \break
	\repeat unfold 3 { s1 \noBreak} \break
	\repeat unfold 3 { s1 \noBreak} \break
	\repeat unfold 3 { s1 \noBreak} \break
	\repeat unfold 3 { s1 \noBreak} \break
	\repeat unfold 3 { s1 \noBreak} \break
	\repeat unfold 3 { s1 \noBreak}
}

dynamics = \relative c' {
	\override DynamicLineSpanner.staff-padding = #3

	s2\pp-\< s2\! |
	s2\p-\< s2\! |
	s2\mp-\< s2\! |
	s1\mf

	s4. s8\p s2 |
	s4. s8\cresc s2 |
	s2.\> s4\! |
	s1\p |

	s2\< s2\f |
	s2\dim s2\p |
	s1 |
	s1\< |

	s4.\f s8\mf s2 |
	s1 \bar "||"

	s1\p-\markup { \italic {molto}} |
	s1 |
	s4\< s4\> s2\! |
	s1 |

	s1\mf |
	s2\cresc s4.\< s8\f |
	s1 |
	s1 |

	s8 s4.\p s2 |
	s2.-\markup {\italic piú \dynamic p} s4\pp
	s1

	\bar "|."
}

tOne = \relative c' {
	\autoBeamOff

	d2~ d8^> d8 d4\fermata
	d2~ d8^> d8 d4\fermata
	d2~ d8^> d8 d4\fermata
	f4. es8 g,2

	s4. g8 c4 d4
	f,4 \once	\override Voice.Rest.staff-position = #0 r8 f8 bes4^> d4
	f2 d4 \once	\override Voice.Rest.staff-position = #0 r4
	f,4 g8 a8 bes8 f8 f8 bes8

	c8 c8 c8 a8 d4 \once	\override Voice.Rest.staff-position = #0 r8 d8
	g4.^> g8 f4 bes,4
	es8 es8 es8 f8 d2
	c4 d8 es8 f4. bes,8

	es4. g,8 a4 bes4
	c4. d8 bes4 bes4\fermata

	d2 d8 bes8 f8 f8
	g8 g8 es'8 c8 d2
	g2 g8 f8 es8 d8
	d8 c8 bes8 c8 d4 d4

	d4~ d16 es16 d8 f4 es4
	f8 f8 f8 bes,8 g'4. f8
	bes2~ bes8 g8 f8 es8
	d8 c8 es8 d8 bes2

	\once	\override Voice.Rest.staff-position = #0 r8 bes8 c8 d8 es4. c8
	d2 g,4 g8 bes8
	c4. d8 bes4 bes4\fermata
}

tTwo = \relative c' {
	\autoBeamOff

	bes2~ bes8 bes8 bes4
	bes2~ bes8 bes8 bes4
	bes2~ bes8 bes8 bes4
	bes4. bes8 g2

	\once	\override Voice.Rest.staff-position = #0 r4. g8 a4 a4
	f4 \once	\override Voice.Rest.staff-position = #0 r8 f8 f4 bes4
	a2 bes4 \once	\override Voice.Rest.staff-position = #0 r4
	r2 r4 r8 bes8

	bes8 bes8 a8 f8 fis4 \once	\override Voice.Rest.staff-position = #0 r8 d'8
	g,4. a8 bes4 bes4
	c8 c8 c8 c8 bes2
	a4 bes8 c8 bes4. bes8

	g4. es8 f4 f4
	a4. a8 f4 f4

	bes2 bes8 bes8 d,8 d8
	es8 es8 bes'8 a8 bes2
	d2 d8 d8 f,8 f8
	e8 e8 es8 bes'8 bes4 bes4

	bes4~ bes16 bes16 bes8 d4 c4
	es8 es8 d8 bes8 es4( c4
	bes4.) bes8	bes8-> bes8 bes8 bes8
	a8 a8 g8 fis8 g2

	\once	\override Voice.Rest.staff-position = #0 r8 g8 a8 bes8 c4. a8
	a2 g4 g8 f8
	a4. a8 f4 f4
}

bOne = \relative c {
	\autoBeamOff

	f2~ f8 f8 f4
	fis2~ fis8 fis8 fis4
	g2~ g8 g8 g4
	g4. g8 es2

	\once	\override Voice.Rest.staff-position = #0 r4. es8 es4 f4
	d4 \once	\override Voice.Rest.staff-position = #0 r8 d8 d4 bes'4
	c2 d4 \once	\override Voice.Rest.staff-position = #0 r4
	r8 f,8 f8 f8 f8 d8 d8 g8

	g8 g8 f8 f8 a4 \once \override Voice.Rest.staff-position = #0 r8 d8
	bes4. c8 f,4 g4
	g8 g8 f8 f8 f2
	f4 f8 f8 f4. g8

	c4. c,8 f4 f4
	es4. f8 d4 d4

	f2 f8 d8 bes8 bes8
	bes8 bes8 g'8 es8 f2
	bes2 a8 a8 b8 b8
	bes8 bes8 ges8 ges8 f4 f4

	g4~ g16 g16 g8 g4 g4
	c8 c8 bes8 bes8 bes4( a4
	f4.) f8	g8 bes8 a8 g8
	f8 es8 c8 bes'8 d,2

	\once	\override Voice.Rest.staff-position = #0 r8 g8 g8 g8 g4. f8
	f2 g4 g8 d8
	es4. f8 d4 d4
}

bTwo = \relative c {
	\autoBeamOff

	bes2~ bes8-> bes8 bes4\fermata
	bes2~ bes8-> bes8 bes4\fermata
	bes2~ bes8-> bes8 bes4\fermata
	bes4. bes8 bes2

	s4. bes8 bes4 bes4
	bes4 \once \override Voice.Rest.staff-position = #0 r8 bes8 d4-> bes4
	f'2 bes4 \once \override Voice.Rest.staff-position = #0 r4
	f4 e8 es8 d8 bes8 bes8 g'8

	es8 es8 f8 f8 d4 \once \override Voice.Rest.staff-position = #0 r8 d8
	es4.-> es8 d4 g4
	c,8 c8 a8 a8 bes2
	f'4 e8 es8 d4. g8

	c,4. c8 es4 d4
	f,4. f8 bes4 bes4\fermata

	bes2. bes4
	bes4. bes8 bes2
	bes2 d8 d8 g,8 g8
	c8 c8 es8 es8 bes4 bes4

	g'4~ g16 g16 g8 c,4 c4
	aes'8 aes8 bes8 bes8 es,2(
	d4.) d8 es8 es8 es8 es8
	f,8 f8 c'8 d8 g,2

	\once	\override Voice.Rest.staff-position = #0 r8 g'8 g8 g8 c,4. f8
	d2 g4 es8 f8
	f,4. f8 bes4 bes4\fermata
}
