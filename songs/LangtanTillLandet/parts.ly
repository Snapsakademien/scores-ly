global = {
	\key d \major
	\time 4/4
}

system = \relative c' {

	s1\f |	s1 |	s1 |	s1 |
	s1   |	s1 |	s1 |	s1 |

  \bar ".|:"

	\repeat volta 2 {
		s1\p |	s1         |	s1    |	s1 |
		s1   |	s2.\< s4\! |	s1\ff |	s1 |
	}

	\bar ":|."
}

tOne = \relative c' {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	d4^\markup { Tempo di marcia } d4 fis4.-> e8 |
	e8. d16 cis8. d16 e4 e4 |
	fis4 fis4 g4.-> fis8 |
	fis8. e16 e8. e16 e4 r4 |

	d4 d4 fis4. e8 |
	e8. d16 cis8. d16 e4 e4 |
	e4 fis4 fis8. e16 a,8. b16 |
	cis4 b4 a4 r4 |

	\repeat volta 2 {
		a8. b16 a8. b16 a4 fis'4 |
		fis4 e8.[ d16] d4 cis4 |
		a8. b16 a8. b16 a4 g'4 |
		g4 fis8[ e8] d4 r4 |

		a8. b16 a8. b16 a4 fis'4 |
		e4 fis8[ g8] a4 fis4 |
		e4. e8 e4. e8 |
		fis8. fis16 fis8. e16 d4 r4 |
	}
}

tTwo = \relative c' {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	a4 a4 d4. d8 |
	cis8. b16 a8. b16 cis4 cis4 |
	d4 d4 d4. d8 |
	d8. d16 d8. d16 cis4 r4 |

	a4 a4 d4. d8 |
	cis8. b16 a8. b16 cis4 cis4 |
	b4 b4 a8. a16 a8. a16 |
	a4 gis4 a4 r4 |

	\repeat volta 2 {
		fis8\staccato fis8\staccato fis8\staccato fis8\staccato fis4 a4 |
		a4 a4 a4 a4 |
		g8\staccato g8\staccato g8\staccato g8\staccato g4 e4 |
		cis'4 d8[ a8] a4 r4 |

		fis8\staccato fis8\staccato fis8\staccato fis8\staccato fis4 a4 |
		cis4 d8[ e8] fis4 d4 |
		d4. d8 d4. d8 |
		d8. d16 cis8. cis16 d4 r4 |
	}
}

bOne = \relative c {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	fis4 fis4 gis4. gis8 |
	a8. a16 a8. a16 a4 a4 |
	a4 a4 b4. a8 |
	b8. b16 b8. b16 a4 r4 |

	fis4 fis4 gis4. gis8 |
	a8. a16 a8. a16 a4 a4 |
	gis4 gis4 a8. a16 fis8. fis16 |
	e4 d4 cis4 r4 |

	\repeat volta 2 {
		d8\staccato d8\staccato d8\staccato d8\staccato d4 d4 |
		d4 g8.[ fis16] g4 g4 |
		e8\staccato e8\staccato e8\staccato e8\staccato e4 a4 |
		a4 a8[ g8] fis4 r4 |

		d8\staccato d8\staccato d8\staccato d8\staccato d4 d4 |
		a'4 a4 a4 a4 |
		b4. b8 b4. b8 |
		a8. a16 g8. g16 fis4 r4 |
	}
}

bTwo = \relative c {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	d4 d4 b4.-> b8 |
	a8. a16 a8. a16 a4 a4 |
	d4 d4 d4.-> d8 |
	g8. g16 gis8. gis16 a4 r4 |

	d,4 d4 b4. b8 |
	a8. a16 a8. a16 a4 a4 |
	e'4 d4 cis8. cis16 d8. d16 |
	e4 e4 a,4 r4 |

	\repeat volta 2 {
		d8\staccato a8\staccato d8\staccato a8\staccato d4 d4 |
		d4 cis8.[ d16] e4 e4 |
		e8\staccato a,8\staccato e'8\staccato a,8\staccato cis4 cis4 |
		e4 d8.[ cis16] d4 r4 |

		d8\staccato a8\staccato d8\staccato a8\staccato d4 d4 |
		g4 fis8.[ e16] d4 d4 |
		g4. g8 g4. g8 |
		a8. a16 a,8. a16 d4 r4 |
	}
}
