global = {
	\key b \major
}

system = \relative c' {
	\autoBeamOff
	\partial 4
	\override DynamicLineSpanner.staff-padding = #3

	s4
	\repeat unfold 4 { s1 | } \break
	\repeat unfold 4 { s1 | } \break

 s4 s2.\< |
 s2\> s2\! |
 s4 s2.\< |
 s2\> s2\! |

 \break

 \repeat unfold 3 { s1 | }
 s2.

 \bar "|."
}

tOne = \relative c' {
	\autoBeamOff
	\partial 4
	\override Voice.Rest.staff-position = #0

	b8^\markup { Andante } gis8 |
	fis4 fis4 fis4 fis4 |
	b4 b4 r4 dis8 fis8 |
	e4 e4 e4 fis8[ e8] |
	dis2 r4 b8 gis8 |

	fis4 fis4 fis4 fis4 |
	b4 b2 fis'8 dis8 |
	cis4 cis4 cis8[ b8] cis8[ dis8] |
	b2 r4 fis'8 e8

	dis4 dis4 dis4 gis4 |
	fis4 e4 r4 e8 dis8 |
	cis4 cis4 cis4 fis4 |
	e4( dis4) r4 b8 gis8 |

	fis4 fis4 fis4 fis4 |
	b4 b2 fis'8 dis8 |
	cis4 cis4 cis8[ b8] cis8[ dis8] |
	b2 r4
}

tTwo = \relative c' {
	\autoBeamOff
	\partial 4
	\override Voice.Rest.staff-position = #0

	b8 gis8 |
	fis4 fis4 fis4 fis4 |
	fis4 fis4 r4 b8 b8 |
	gis4 gis4 ais4 ais4 |
	b2 r4 b8 gis8 |

	fis4 fis4 fis4 fis4 |
	fis4 fis2 b8 b8 |
	cis4 b4 ais8[ gis8] ais4 |
	b2 r4 dis8 cis8

	b4 b4 bis4 bis4 |
	dis4 cis4 r4 gis8 bis8 |
	cis4 b4 ais4 ais4 |
	cis4( b4) r4 b8 gis8 |

	fis4 fis4 fis4 fis4 |
	fis4 fis2 b8 b8 |
	cis4 b4 ais8[ gis8] ais4 |
	fis2 r4
}

bOne = \relative c' {
	\autoBeamOff
	\partial 4
	\override Voice.Rest.staff-position = #0

	b8 gis8 |
	fis4 fis4 fis4 e4 |
	dis4 dis4 r4 fis8 dis8 |
	e4 e4 fis4 fis4 |
	fis2 r4 b8 gis8 |

	fis4 fis4 fis4 e4 |
	dis4 dis2 fis8 fis8 |
	gis4 g4 fis4 e4 |
	dis2 r4 fis8 fis8

	b4 a4 gis4 gis4 |
	gis4 gis4 r4 e8 fis8 |
	gis4 gis4 fis4 fis4 |
	fis2 r4 b8 gis8 |

	fis4 fis4 fis4 e4 |
	dis4 dis2 dis8 fis8 |
	eis4 cis4 fis4 e4 |
	dis2 r4
}

bTwo = \relative c' {
	\autoBeamOff
	\partial 4
	\override Voice.Rest.staff-position = #0

	b8 gis8 |
	fis4 e4 dis4 cis4 |
	b4 b4 r4 b8 b8 |
	cis4 cis4 fis,4 fis4 |
	b2 r4 b'8 gis8 |

	fis4 e4 dis4 cis4 |
	b4 b2 dis8 b8 |
	e4 cis4 fis4 fis,4 |
	b2 r4 fis'8 fis8

	b4 a4 gis4 gis,4 |
	bis4 cis4 r4 cis8 dis8 |
	e4 eis4 fis4 fis,4 |
	ais4( b4) r4 b'8 gis8 |

	fis4 e4 dis4 cis4 |
	b4 b2 a8 a8 |
	gis4 g4 fis4 fis4 |
	b2 r4
}
