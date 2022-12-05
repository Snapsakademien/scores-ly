global = {
	\key aes \minor
	\time 3/4
}

system = \relative c' {

	s2.\f | s2. | s2  s4\< | s2. |
	s2.\f | s2. | s2.\p | s2. |
	s2. | s2. | s2. | s2. |
	s2.\ff | s2 s8 s8\pp | s2. | s2. \bar "||"

	s2. | s2. | s2.\p | s2.\<  |
	s2.\mf | s2. | s2.\p | s2 s8  s8\mf-\< |
	s2 s8 s8\! | s2. | s2. | s2. |
	s2. | s2. | s2. | s2.  |

	s2.  | s2. | s2. | s2. | s2. \bar "|."
}

tOne = \relative c'' {
	\override Voice.Rest #'staff-position = #0
	\override Voice.MultiMeasureRest #'staff-position = #0
	\autoBeamOff

	aes8 r8 es4 es8 r16 es16 |
	\tuplet 3/2 {des8 es8 des8} ces4 ces8 r8 |
	aes8 bes8 ces8 des8  es8 ces8 |
	des8 es8 fes8  ges16[ fes16]  es4 |

	aes8 r8 es4. es8 |
	des8 es16[ des16] ces4 ces8 r8 |
	aes8 bes8 ces8 des8  es8 r16 des16 |
	bes8 ces16[ bes16] aes4 r8 es8\mf |

	aes8 aes8 \tuplet 3/2 {ces8 ces8 ces8} es8 es8 |
	des8 des8 \tuplet 3/2 {fes8 ges8 fes8} es8 r8 |
	R2. |
	R2. |

	g4\fermata r4 bes4 |
	es,4-> es4-> r8\fermata es,8  |
	aes8 bes8 ces8 des8 es8 des8 |
	bes8 ces16[ bes16] aes4\fermata r4\fermata |

	aes'4\mf es4. es8 |
	\tuplet 3/2 {des8 es8 des8} ces4 ces8 r8 |
	aes8 bes8 ces8 des8 es8 ces8 |
	des8 es8 fes8 ges16[ fes16] es4 |

	aes4 es4. es8 |
	\tuplet 3/2 {des8 es8 des8} ces4 ces8 r8 |
	aes8 bes8 ces8 des8 es8 r16 des16 |
	\tuplet 3/2 {bes8 ces8 bes8} aes4 r8 es8 |

	aes8 aes8 \tuplet 3/2 {ces8 ces8 ces8} es8 es8 |
	des8 des8 \tuplet 3/2 {fes8 ges8 fes8} es8 r8 |
	R2. |
	\override Voice.Rest #'staff-position = #2
	r2 r8\fermata es,8^\markup{\dynamic pp \italic "a tempo"} |

	\override Voice.Rest #'staff-position = #6
	aes8 bes8 ces8 des8 es8 des8 |
	fes8 ges16[ fes16] es8 r8  r4 |
	\once \override Voice.MultiMeasureRest #'staff-position = #2 R2. |
	R2. |
  \override Voice.Rest #'staff-position = #0

	r4 aes2^\ff-\fermata |
	es4 \tuplet 3/2 {es8  r8  es8} \tuplet 3/2 {des8 es8 des8} |
	ces4 \tuplet 3/2  {ces8  r8 bes8} \tuplet 3/2 {bes8-> ces8-> bes8->} |
	es4( bes'2\fermata) |
	aes2.
}

tTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\override Voice.MultiMeasureRest #'staff-position = #0
	\autoBeamOff

	es8 r8 ces4 ces8 r16 ces16 |
	\tuplet 3/2 {bes8 ces8 bes8} aes4 aes8 r8 |
	aes8 aes8 aes8 ces8 ces8 ces8 |
	bes8 ces8 des8 des8 es4 |

	fes8 r8 ces4. ces8 |
	bes8 bes8 aes4 ges8 r8 |
	fes8 aes8 aes8 bes8 ces8 r16 aes16 |
	g8 g8 aes4 r8 es8 |

	aes8 aes8 \tuplet 3/2 {ces8 ces8 ces8} ces8 ces8 |
	bes8 bes8 \tuplet 3/2 {des8 des8 des8} bes8 r8 |
	R2. |
	R2. |

	es4\fermata r4 d4 |
	bes4 bes4 r8 es,8  |
	aes8 aes8 aes8 bes8 ces8 bes8 |
	g8 g8 aes4 r4 |

	es'4 ces4. ces8 |
	\tuplet 3/2 {bes8 ces8 bes8} aes4 aes8 r8 |
	aes8 aes8 aes8 ces8 ces8 ces8 |
	bes8 ces8 des8 des8 es4 |

	fes4 ces4. ces8 |
	\tuplet 3/2 {bes8 bes8 bes8} aes4 ges8 r8 |
	fes8 aes8 aes8 bes8 ces8 r16 aes16 |
	\tuplet 3/2 {g8 g8 g8} aes4 r8 es8 |

	aes8 aes8 \tuplet 3/2 {aes8 aes8 aes8} ces8 ces8 |
	bes8 bes8 \tuplet 3/2 {des8 des8 des8} bes8 r8 |
	R2. |
	\once \override Voice.MultiMeasureRest #'staff-position = #-4 R2._\fermata |
	\override Voice.Rest #'staff-position = #-6

	r4 r4  aes8->-\pp bes8 |
	ces8 des8 es8 des8 bes8 ces16[ bes16] |
	\override Voice.Rest #'staff-position = #-4
	aes8 r8 r2 |
	R2. |

	\override Voice.Rest #'staff-position = #0

	r4 d2 |
	es4 \tuplet 3/2 {es8  r8  es8} \tuplet 3/2 {des8 es8 des8} |
	ces4 \tuplet 3/2  {ces8  r8 bes8} \tuplet 3/2 {bes8 ces8 bes8} |
	bes4( des2\fermata) |
	ces2.
}

bOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\override Voice.MultiMeasureRest #'staff-position = #4
	\autoBeamOff

	ces8 r8 aes4 aes8 \once	\override Voice.Rest #'staff-position = #4 r16 aes16 |
	\tuplet 3/2 {aes8 g8 aes8} es4 es8 r8 |
	fes8 aes8 aes8 aes8 ges8 ges8 |
	ges8 ces8 ces8 bes8 ces4 |

	ces8 r8 ges4. ges8 |
	fes8 fes8 fes4 es8 r8 |
	fes8 fes8 es8 aes8 aes8 r16 fes16 |
	es8 des8 ces4 \once \override Voice.Rest #'staff-position = #4 r8 es8^\mf |

	aes8 aes8 \tuplet 3/2 {aes8 aes8 aes8} aes8 aes8 |
	aes8 aes8 \tuplet 3/2 {aes8 aes8 aes8} g8 \once	\override Voice.Rest #'staff-position = #4 r8 |
	R2. |
	R2. |

	bes4 r4 aes4 |
	g4 g4 r8\fermata es8  |
	aes8 aes8 aes8 ges8 ges8 fes8 |
	es8 des8 ces4 r4 |

	ces'4 aes4. aes8 |
	\tuplet 3/2 {aes8 g8 g8} es4 es8 r8 |
	fes8 aes8 aes8 aes8 ges8 ges8 |
	ges8 ces8 ces8 bes8 ces4 |

	ces4 ges4. ges8 |
	\tuplet 3/2 {fes8 fes8 fes8} fes4 es8 r8 |
	fes8 fes8 es8 aes8 aes8 \override Voice.Rest #'staff-position = #4 r16 fes16 |
	\tuplet 3/2 {es8 des8 des8} ces4 r8 es8 |

	aes8 aes8 \tuplet 3/2 {aes8 aes8 aes8} aes8 aes8 |
	aes8 aes8 \tuplet 3/2 {aes8 aes8 aes8} g8 \once	\override Voice.Rest #'staff-position = #6 r8 |
	R2. |
	R2. |

	r4 aes8->^\pp bes8 ces8 bes8 |
	aes4. bes8 g8 g8 |
	aes8 \override Voice.Rest #'staff-position = #6 r8 r4 r4^\markup{\italic rallent.} |
	R2.\fermata |

	bes2.^\ff-\fermata |
	\override Voice.Rest #'staff-position = #4
	ces4 \tuplet 3/2 {ces8 r8 ces8} \tuplet 3/2 {bes8 ces8 bes8} |
	aes4 \tuplet 3/2 {aes8 \once \override Voice.Rest #'staff-position = #0 r8 bes8} \tuplet 3/2 {bes8 ces8 bes8} |
	as4( g2\fermata) |
	es2.
}

bTwo = \relative c' {
	\autoBeamOff

	aes8 \once \override Voice.Rest #'staff-position = #0 r8 r4 r4 |
	es8  r8 aes,4 aes8 \once \override Voice.Rest #'staff-position = #0 r8 |
	fes'8 fes8 fes8 fes8 ges8 es8 |
	ges8 ges8 ges8 ges8 ces4 |

	fes,8 \once \override Voice.Rest #'staff-position = #0 r8 r4 r4 |
	ges,8 r8 ces4 ces8 \once \override Voice.Rest #'staff-position = #0 r8 |
	des8 des8 es8 es8 es8 \once \override Voice.Rest #'staff-position = #0 r16 fes16 |
	es8 es8 aes,4 r4 |

	R2. |
	r2 r8\mf es'8
	aes,8 aes8 \tuplet 3/2 {ces8 ces8 ces8} es8 es8 |
	des8 des8 \tuplet 3/2 {fes8 ges8 fes8} es4 |

	bes'4\fermata \once \override Voice.Rest #'staff-position = #0 r4 bes,4 |
	es4-> es4-> \once \override Voice.Rest #'staff-position = #0 r8\fermata es8  |
	aes8 aes8 aes8 ges8 ces,8 des8 |
	es8 es,8 fes4\fermata \once \override Voice.Rest #'staff-position = #0 r4\fermata |

	R2. |
	es'8\mf r8 aes,4 aes8 \once \override Voice.Rest #'staff-position = #0 r8 |
	fes'8 fes8 fes8 fes8 ges8 es8 |
	ges8 ges8 ges8 ges8 ces4 |

	fes,4 ges4 r4 |
	ges,8 r8 ces4 ces8 \once \override Voice.Rest #'staff-position = #0 r8 |
	des8 des8 es4 r4 |
	es,8 r8 aes4 r4 |

	R2. |
	r2 r8 es'8
	aes,8^\markup{\italic{poco  rallent.}} aes8 \tuplet 3/2 {ces8 ces8 ces8} es8 es8 |
	des8 des8 \tuplet 3/2 {fes8 ges8 fes8} es8_\fermata r8 |

	R2. |
	aes,8->-\pp bes8 ces8 des8 es8 des8 |
	fes8 ges16[ fes16] ces8 bes8 des8 es16[ des16] |
	aes8 g8 bes8 ces16[ bes16] fes4\fermata |

	r4 bes2_\ff-\fermata |
	es4 es8 r8 r8 es8 |
	fes4 \tuplet 3/2 {fes8 \once	\override Voice.Rest #'staff-position = #0 r8 bes8} \tuplet 3/2 {bes8-> ces8-> bes8->} |
	es,2.\fermata |
	aes,2.
}
