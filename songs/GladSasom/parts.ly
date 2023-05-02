global = {
	\time 2/2
	\key g \major
}

dynamics = \relative c {
	\override DynamicLineSpanner.staff-padding = #3
	\override DynamicTextSpanner.style = #'none

	\repeat volta 2 {

		s1\p | s1 | s1 | \break
		s1 | s2 s2\cresc | s1 | \break
		s1\f |
	}
	\alternative {
		{
			s2 s2-\markup{\italic{rit.}}
			\bar ":|."
		}{
			s1 \break
		}
	}
	\repeat volta 2 {
		\bar ".|:-||"
		s2\p s2\< | s2\> s2\! | s1 | \break
		s2\< s2\>-\markup{\italic{ten.}} | s1\p | s1 | \break
		s1\cresc | s1 | s1 | \break
		s2\f s2-\markup{\italic{2 ggn. ten.}} | s1 |
	}
	\alternative {
		{
			s1 \bar ":|." \break
		}{
			s1 |
		}
	}
	s1 | s1 | s1 \bar "|."
}

tOne = \relative c' {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	\repeat volta 2 {
		d4-\markup{\bold{Lätt och livligt}} d8 d8 d4 d8 c8 |
		b4 b4 b4 b4 |
		c4 c8 c8 b4 b8 b8 |

		a4 c8 b8 a2 |
		b4 b8 b8 d4 d8 d8 |
		g4 g8 g8 g4 fis4 |

		e4 e8 e8 e4 e8 e8 |
	}
	\alternative {
		{
			fis4 e8 e8 d2 \bar ":|."
		}{
			fis4 e8 e8 d2
		}
	}
	\repeat volta 2 {
		d4 d8-. d8-. d4-. d8-. d8-. |
		d4 d8-. d8-. d2 |
		d4 d8 d8 d2 |

		cis4 cis8 cis8 d2~ |
		d4 d8 d8 d4 d8 c8 |
		b4 b8 b8 b4 b4 |

		c4 c8 c8 b4 b8 b8 |
		a4 a8 a8 a4 ais8 ais8 |
		b4 b8 b8 d4 d4 |

		g4 g8 g8 g2 |
		g4. g8 d4 d8 d8 |
	}
	\alternative {
		{
			d4 e8 fis8 g2 \bar ":|."
		}{
			d4 e8 fis8 g4 r4 |
		}
	}
	r2 r4 d8 g8 |
	b2 a4. g8 |
	g1\fermata \bar "|."
}

tTwo = \relative c' {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	\repeat volta 2 {
		b4 b8 b8 a4 a8 a8 |
		g4 g4 g4 g4 |
		g4 g8 g8 g4 g8 g8 |

		fis4 a8 g8 fis2 |
		g4 g8 g8 a4 a8 a8 |
		cis4 e8 e8 e4 d4 |

		d4 d8 d8 d4 d8 d8 |
	}
	\alternative {
		{
			d4 cis8 cis8 d4(\> c4\!) \bar ":|."
		}{
			d4 cis8 cis8 d2
		}
	}
	\repeat volta 2 {
		fis,4\mf g8 a8 bes4 a8 bes8 |
		c4 bes8 bes8 a2 |
		fis4 g8 a8 bes2 |

		\set melismaBusyProperties = #'()

		bes4 bes8 bes8 a2( |
		b4) b8 b8 a4 a8 a8 |
		g4 g8 g8 g4 g4 |

		g4 g8 g8 g4 g8 g8 |
		fis4 fis8 fis8 fis4 fis8 fis8 |
		g4 g8 g8 fis4 a4 |

		d4 b8 b8 cis2 |
		d4. d8 b4 b8 b8 |
	}
	\alternative {
		{
			c4 c8 d8 d2 \bar ":|."
		}{
			c4 c8 d8 d4 r4 |
		}
	}
	r2 r4 b8\ff d8 |
	g2 fis4. d8 |
	d1 \bar "|."
}

bOne = \relative c' {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	\repeat volta 2 {
		g4 g8 g8 fis4 fis8 fis8 |
		e4 e4 d4 d4 |
		e4 e8 e8 d4 d8 d8 |

		d4 d8 d8 d2 |
		g4 g8 g8 fis4 fis8 fis8 |
		a4 a8 a8 a4 a4 |

		b4 b8 b8 b4 b8 b8 |
	}
	\alternative {
		{
			a4 g8 g8 fis2 \bar ":|."
		}{
			a4 g8 g8 fis2
		}
	}
	\repeat volta 2 {
		d4^\mf e8 fis8 g4 fis8 g8 |
		a4 g8 g8 fis2 |
		d4 e8 fis8 g2 |

		g4 g8 g8 fis2( |
		g4) g8 g8 fis4 fis8 fis8 |
		e4 e8 e8 d4 d4 |

		e4 e8 e8 d4 d8 d8 |
		d4 d8 d8 d4 d8 d8 |
		d4 d8 d8 d4 fis4 |

		g4 g8 g8 g2 |
		b4. b8 g4 g8 g8 |
	}
	\alternative {
		{
			a4 a8 c8 b2 \bar ":|."
		}{
			a4 a8 c8 b4 d,8-\markup{\italic{poco ten.}} d8 |
		}
	}
	b4 g8 b8 d2( |
	d'2) c4. b8 |
	b1\fermata \bar "|."
}

bTwo = \relative c' {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	\repeat volta 2 {
		g4 g8 g8 fis4 d8 dis8 |
		e4 e4 d4 d4 |
		c4 c8 c8 g4 b8 b8 |

		d4 d8 d8 d2 |
		g4 g8 g8 fis4 fis8 fis8 |
		e4 cis8 cis8 d4 d4 |

		g4 g8 g8 gis4 gis8 gis8 |
	}
	\alternative {
		{
			a4 a,8 a8 d2 \bar ":|."
		}{
			a'4 a,8 a8 d2
		}
	}
	\repeat volta 2 {
		d4 d8-. d8-. d4-. d8-. d8-. |
		d4 d8-. d8-. d2 |
		d4 d8 d8 d2 |

		es4 es8 es8 d2( |
		g4) g8 g8 fis4 d8 dis8 |
		e4 e8 e8 d4 d4 |

		c4 c8 c8 g4 b8 b8 |
		d4 d8 d8 d4 d8 d8 |
		g,4 g8 g8 d'4 c4 |

		b4 e8 e8 es2 |
		d4. d8 d4 d8 d8 |
	}
	\alternative {
		{
			d4 d8 d8 g,2 \bar ":|."
		}{
			d'4 d8 d8 g,4 d'8\ff d8 |
		}
	}
	b4 g8 b8 d2~ |
	d2 d4. g,8 |
	g1 \bar "|."
}
