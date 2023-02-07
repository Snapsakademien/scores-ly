global = {
	\time 4/4
	\key a \major
}

tenorDynamics = \relative c {
	\override DynamicLineSpanner.staff-padding = #3
	s1\f |
	s1 | \break
	s1 |
	s1 |

	s4\p\< s4 s2\! \break
	s4\< s4 s2\! |
	s4\f s2. |
	s1 | \break

	s4\mf s2. |
	s1 |
	s2 s4\ff s4 |
	s1
	\bar "|."
}


bOneDynamics = \relative c {
	\override DynamicLineSpanner.staff-padding = #3
	s1 | s1 | s1 |s1
	s4\p\< s4 s2\!
	s4\< s4 s2\!

}


bTwoDynamics = \relative c {
	\override DynamicLineSpanner.staff-padding = #3

	s1 | s1 | s1 | s1

	s2 s8\mf s4.
	s1
	s1\f

	s2 s8\mf s4.
	s1 | s1
	s2 s2\ff

}

tOne = \relative c' {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	cis4 e4 a,4. cis8
	b8 b16 b16 b8 b8 cis8 a8 a4
	cis4 e4 a,4. cis8
	b8 b16 b16 b8 b8 a2

	b4 d4 b2
	cis4 e4 cis2
	dis4 fis4 a4 dis,4
	e8 r16 e16 e4 r2

	cis4 e4 cis2
	d4^\< fis4\! d4 fis4
	e2 gis4 gis4
	a1\fermata

}

tTwo = \relative c' {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	a4 cis4 a4. a8
	gis8 gis16 gis16  gis8 gis8 a8 a8 a4
	a4 cis4 a4. a8
	gis8 gis16 gis16  gis8  gis8 a2

	gis4 b4 gis2
	a4 cis4 a2
	b4 b4 dis4 b4
	b8 r16 b16 b4 r2

	a4 cis4 a2
	b4 d4 b4 b4
	cis2 e4 e4
	e1


}

bOne = \relative c {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	r2 cis4 e4
	e8 e16 e16 e8 e8 e8 cis8 cis4
	r2 cis4 e4
	e8 e16 e16 e8 d8 cis2
	e4 e4 e2
	a4 a4 a2
	a4 a4 fis4 a4
	gis8 r16 gis16 gis4 r8 e8 e8 e8
	e2 cis4 e4
	fis2 d4 fis4
	a2 b4 b4
	cis1

}

bTwo = \relative c {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	r2 a4 cis4
	e8 e16 e16 e8 e8 a,8 a8 a4
	r2 a4 cis4
	e8 e16 e16 e8 e8 a,2

	\once \override Voice.Rest.staff-position = #-4 r2 \once \override Voice.Rest.staff-position = #-4 r8 e'8 gis8 e8
	a2~ a8
	a,8 cis8 e8
	fis4 dis4 b4 b4

	e8 r16 e16 e4 r8 e,8 fis8 gis8
	a2 a4 cis4
	b2 b4 d4
	e2 e4 e4
	a,1\fermata

}
