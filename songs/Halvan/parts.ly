global = {
	\key aes \major
	\time 4/4
}

system = \relative c' {
	\partial 4
	\override DynamicLineSpanner.staff-padding = #3

	s4 \bar ".|:"

	\repeat volta 2 {

		s1 |
		s1 |
		s1 |s2. s4\ff | \break

		s1 |
		s2. s4\p |
		s2. s8. s16\f |
	}
	\alternative {
		{ s1 \bar ":|."}
		{ s1 }
	}

	\bar ".|:"
	\repeat volta 2 {
		s1 | \break
		s1 |
		s1 |
		s1 |

		s1 | \break
		s1 |
	}
	\alternative {
		{ s1 | s1 \bar ":|." }
		{ s1 | s2. \bar "|."}
	}
}

tOne = \relative c' {
	\override Voice.Rest.staff-position = #0
	\override MultiMeasureRest.staff-position = #2
	\autoBeamOff
	\partial 4
	\override DynamicLineSpanner.staff-padding = #3

	r4 \bar ".|:"

	\repeat volta 2 {

		R1 |
		R1 |
		R1 |
		r2 r4 es4 |

		aes4. es8 c4 aes4 |
		g4 es'2 es4 |
		aes8 r8 g8 r8 f4 r8. es16 |
	}
	\alternative {
		{ es2. r4 \bar ":|."}
		{ es2. es4^\f }
	}

	\bar ".|:"
	\repeat volta 2 {
		es2 es2 |
		es4 es4 es4 e8 e8 |
		f2 f2 |
		f4 f4 f4 ges4 |

		g2 g2 |
		aes4 aes4 aes4 aes8 aes8 |
	}
	\alternative {
		{ es4. es8 g4 g4 | aes2 r2 \bar ":|." }
		{ es4. es8 <g bes>4\fermata aes4 | aes2. \bar "|."}
	}
}

tTwo = \relative c' {
	\autoBeamOff
	\partial 4
	\override DynamicLineSpanner.staff-padding = #3

	s4 \bar ".|:"

	\repeat volta 2 {

		s1 |
		s1 |
		s1 |
		s2 s4 es4 |

		es4. c8 aes4 es4 |
		g4 bes2 des4 |
		c8 s8 c8 s8 c4 s8. bes16 |
	}
	\alternative {
		{ bes2. s4 \bar ":|."}
		{ bes2. r4 }
	}

	\bar ".|:"
	\repeat volta 2 {
		des4 bes8 bes8 g4 bes4 |
		aes4 c4 r2 |
		es4 c8 c8 a4 c4 |
		bes4( des4) r2 |

		g4 es8 es8 des4 bes4 |
		c8[ des8] es8[ ges8] f8[ fes8] es8 des8 |
	}
	\alternative {
		{ c4. aes8 bes4 es4 | es2 s2 \bar ":|." }
		{ c4. aes8 bes4 es4 | es2. \bar "|."}
	}
}

bOne = \relative c {
	\autoBeamOff
	\partial 4
	\override DynamicLineSpanner.staff-padding = #3

	s4 \bar ".|:"

	\repeat volta 2 {

		R1 |
		r2 r4 es4 |
		aes4. g8 f4 f4 |
		g4 bes4 es4 des4 |

		c4. aes8 es4 c4 |
		des4 es2 g4 |
		f8 s8 bes8 s8 aes4 s8. aes16 |
	}
	\alternative {
		{ g2. s4 \bar ":|."}
		{ g2. s4 }
	}

	des4( bes'4) r2 |
	\bar ".|:"
	\repeat volta 2 {
		bes4 g8 g8 es4 des4 |
		c4 aes'4 r2 |
		c4 a8 a8 f4 es'4 |

		es4 des8 des8 bes4 bes4 |
		aes8[ bes8] c8[ es8] des4 c8 bes8 |
	}
	\alternative {
		{ aes4. c8 des4 des4 | c2 s2 \bar ":|." }
		{ aes4. c8 des4 des4 | c2. \bar "|."}
	}
}

bTwo = \relative c {
	\autoBeamOff
	\partial 4
	\override DynamicLineSpanner.staff-padding = #3

	es4 \bar ".|:"

	\repeat volta 2 {

		aes4. es8 c4 aes4 |
		g4 es'2 des4 |
		c4 bes4 aes4 bes4 |
		es4 des4 c4 bes4 |

		aes2. aes4 |
		bes4 g2 es4 |
		f8 \once \override Voice.Rest.staff-position = #0 r8 g8 \once \override Voice.Rest.staff-position = #0 r8 aes4 \once \override Voice.Rest.staff-position = #0 r8. bes16 |
	}
	\alternative {
		{ bes2. es4 \bar ":|."}
		{ bes2. \once \override Voice.Rest.staff-position = #0 r4 }
	}

	\bar ".|:"
	\repeat volta 2 {
		r2 r4 es4 |
		aes,4 aes4 r4 c8 c8 |
		f,4 f4 r4 f'4 |
		bes,4 bes4 r4 bes'8 bes8 |

		es,4 r4 r4 es4 |
		aes4. aes,8 des4 es8 fes8 |
	}
	\alternative {
		{ es4. es8 es,4 es4 | aes2 \once \override Voice.Rest.staff-position = #0 r2 \bar ":|." }
		{ es'4. es8 es,4\fermata es4 | aes2. \bar "|."}
	}
}
