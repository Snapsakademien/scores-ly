global = {
	\time 4/4
	\key d \major
}

dynamics = \relative c {
	\override DynamicLineSpanner.staff-padding = #3
	\partial 4

  s4\f
	s1 | s1 | s1 | s1 | \break
	s1 | s1 | s1 | s1 | \break
	s1 | s1 | s1 | s1 | \break

%	\bar ".|:"

	\repeat volta 2 {

		s1 | s1 | s1 | \break s1 | s2. s4\f |
		s1 | s1 | \break s1 | s1 |
		s1 | s1 | \break s1 | s1 |
	}

	\alternative {
	{
%			\set Timing.measureLength = #(ly:make-moment 4/4)
			s1
%			\bar ":|."
		}{
%			\set Timing.measureLength = #(ly:make-moment 3/4)
			s2.
		}
	}
		\bar "|."

}

tOne = \relative c {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\partial 4

	d8. fis16|
	a4.. a16 a4 b8.( cis16) |
	d2 a4 fis'8. e16 |
	d4. cis8 d4 b4 |
	a2 s4 a8. a16 |

	cis4. d8 e4 fis4 |
	g2 e4 a,8. a16 |
	fis'4. d8 b4 cis4 |
	d2 s4 d8. fis16 |

	e4 e4 e4 e4 |
	e4..( a16) a2 |
	e4.. cis16 e8. d16 cis8. b16 |
	a2 r2 |

	\repeat volta 2 {

		r2 r4 e'8.^\p d16 |
		cis8 r8 a8 r8 a8 r8 fis'8.( e16) |
		d2 a8 r8 e'8. d16 |
		cis8 r8 a8 r8 a8 r8 fis'8.( e16) |
		d2 s4 d8. cis16 |

		b4. b8 b4 dis4 |
		e4.( fis8) g2 |
		a,4.. a16 b8. cis16 d8. e16 |
		fis2 r4 fis8. fis16 |

		g4 fis4 e4 d4 |
		a'4.^\>( g8) fis2\! |
		fis4.^\>( e8) d2\! |
		a8. a16 a8. d16 fis4 e4 |
	}

	\alternative {
		{
			d2 r2
		}{
			d2 s4
		}
	}
}

tTwo = \relative c {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\partial 4

	d8. fis16|
	a4.. a16 a4 b8.( cis16) |
	d2 a4 a8. a16 |
	a4. a8 g4 g4 |
	a2 \once 	\override Voice.Rest.staff-position = #0 r4 a8. a16 |

	a4. a8 cis4 d4 |
	e2 cis4 a8. a16 |
	fis'4. d8 b4 ais4 |
	b2 \once 	\override Voice.Rest.staff-position = #0 r4 d8. cis16 |

	b4 gis4 a4 b4 |
	cis2 dis2 |
	e4.. cis16 cis8. b16 a8. gis16 |
	a2 r4 a8.\p a16 |

	\repeat volta 2 {

		a8 r8 a8 r8 a8 r8 a8 r8 |
		a2_> a2_>
		r4 a8. a16 a8 r8 a8 r8 |
		a2 a2 |
		a2 \once 	\override Voice.Rest.staff-position = #0 r4 d8. cis16 |

		b4. b8 b4 b4 |
		b4.( dis8) e2 |
		a,4.. a16 a8. a16 a8. cis16 |
		d4 a8. fis16 d'2~ |

		d4 d4 cis4 d4 |
		e2 d2 |
		cis2 b2 |
		a8. a16 a8. a16 d4 cis4 |
	}

	\alternative {
		{
			a2 r4 a8.\p a16
		}{
			a2 \once \override Voice.Rest.staff-position = #0 r4
		}
	}
}

bOne = \relative c {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\override Voice.Rest.staff-position = #0
	\partial 4

	d8. fis16|
	a4.. a16 a4 b8.( cis16) |
	d2 a4 a8. g16 |
	fis4. a8 b4 g4 |
  fis2 r4 a8. a16 |

	a4. a8 a4 a4 |
	a2 a4 a,8. a16 |
	fis'4. d8 b4 fis'4 |
	fis2 r4 b8. a16 |

	gis4 e4 fis4 gis4 |
	a2 b2 |
	cis4.. a16 e8. e16 e8. e16 |
	a2 r2 |

	\repeat volta 2 {

		r2 r4 g8. fis16 |
		e8 r8 g8 r8 e8 r8 a8.( g16) |
		fis2 fis4 g8. fis16 |
		e8 r8 g8 r8 e8 r8 a8.( g16) |
		fis2 r4 d8. cis16 |

		b4. b8 b'4 b4 |
		b2 b2 |
		a4.. a16 a8. a16 a8. a16 |
		a2 r4 a8. a16 |

		b4 a4 g4 fis4 |
		a2 a2 |
		ais2 b2 |
		a8. a16 a8. fis16 a4 g4 |
	}

	\alternative {
		{
			fis2 r2
		}{
			a2 r4
		}
	}
}

bTwo = \relative c {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\override Voice.Rest.staff-position = #0
	\partial 4

	d8. fis16|
	a4.. a16 a4 b8.( cis16) |
	d2 a4 d,8. d16 |
	d4. d8 d4 d4 |
	d2 r4 a'8. a16 |

	g4. fis8 e4 d4 |
	a2 a'4 a,8. a16 |
	fis'4. d8 b4 fis4 |
	b2 r4 \once \override Voice.Rest.staff-position = #-3 r4 |

	\once	\override Voice.Rest.staff-position = #-3 r4 e8. e16 e4 e4 |
	a4 a4 fis4 fis4 |
	e4.. e16 e8. e16 e8. e16 |
	a,2 r2 |

	\repeat volta 2 {

		r2 r4 a8. a16 |
		a8 r8 a8 r8 a8 r8 a8 r8 |
		d2 d4 cis8. d16 |
		a8 r8 a8 r8 a8 r8 a4 |
		d2 r4 d8. cis16 |

		b4. b8 b'4 a4 |
		g4.( fis8) e2 |
		a4.. a16 gis8. g16 fis8. e16 |
		d2 r4 d8. d16 |

		d4 d4 d4 d4 |
		cis2_> d2_> |
		fis2_> b2_> |
		a8. a16 fis8. d16 a'4 a,4 |
	}

	\alternative {
		{
			d2 r2
		}{
			d2 r4
		}
	}
}
