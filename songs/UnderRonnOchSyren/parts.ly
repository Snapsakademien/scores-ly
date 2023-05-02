global = {
	\time 6/8
	\key ges \major
}

bars = \relative c' {
	\repeat unfold 4 { s2. \noBreak} \break
	\repeat unfold 4 { s2. \noBreak} \break
	\repeat unfold 4 { s2. \noBreak} \break
	\repeat unfold 4 { s2. \noBreak}
}

dynamics = \relative c' {
	\override DynamicLineSpanner.staff-padding = #3

	s2.   | s4.\< s4.\> | s4.\< s4 s8\! | s2.\>                |
	s2.\! | s2.\<       | s4.\! s4.\>   | s4. s4.\!            |
	s2.\p | s2.         | s2.           | s8\< s8\> s8\! s4.\> |
	s2.\p | s4.\< s4.\> | s2.\!         | s2.
	\bar "|."
}

tOne = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\repeat volta 3 {
		des8.^\markup{\italic {dolce}} ges16 f8 es4 des8 |
		c4. ces4. |
		bes8. ces16 des8 es4 f8 |
		d4.( des4.) |

		des8. ges16 f8 es4 des8 |
		c4. ces4 \once \override NoteHead.font-size = #-4 ces8 |
		bes8. es16 aes8 ges4 f8 |
		ges4. r4. |

		ges8. f16 es8 es4 d8 |
		f4 ges8 f8( es4) |
		es8 es8 es8 f8.[ es16] f8 |
		ges4 ges8 f4. |

		des8.-\markup{\translate #'(-6 . 1.5) \italic{mel.}} ges16 f8 es4 des8 |
		c4. ces4. |
		bes8. es16 aes8-\markup{\italic {dim e un poco rit. smorz.}} ges4 f8 |
		ges4. r4. |
	}
}

tTwo = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\repeat volta 3 {
		bes8. des16 des8 ces4 bes8 |
		aes4. aes4. |
		ges8. aes16 bes8 ces4 a8 |
		bes4.( ces4.) |

		bes8. des16 des8 ces4 bes8 |
		aes4. aes4 \once \override NoteHead.font-size = #-4 aes8 |
		ges8. bes16 ces8 bes4 ces8 |
		bes4. r4. |

		bes8. bes16 ges8 aes4 bes8 |
		d4 d8 d8( es4) |
		es8 ces8 ces8 ces4 ces8 |
		bes8[ des8] c8 des4( ces8) |

		bes8. des16 d8 es8[ ces8] bes8 |
		aes4. aes4. |
		ges8. bes16 ces8 bes8.[ des16] ces8 |
		bes4. r4. |
	}
}

bOne = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\repeat volta 3 {
		ges8. bes16 bes8 ges4 ges8 |
		ges4. f4. |
		des8. ges16 ges8 ges4 es8 |
		f2. |

		ges8. bes16 bes8 ges4 ges8 |
		ges4. f4 \once \override NoteHead.font-size = #-4 f8 |
		ges8. \once \override NoteHead.font-size = #-4 ges16 es8 des4 des8 |
		des4. r4. |

		bes'8.^\markup{\translate #'(-7 . -2) \italic{mel.} \translate #'(-5 . -2) \dynamic mf} aes16 bes8 ces4 aes8 |
		f4 bes8 aes8( ges4) |
		ces8-- ces8-- bes8-- aes8.[ ges16] aes8 |
		bes4 aes8 aes4. |

		ges8. bes16 aes8 ges4 ges8 |
		ges4. f4. |
		ges8. \once \override NoteHead.font-size = #-4 ges16 es8 des8.[ bes'16] aes8 |
		ges4. r4. |
	}
}

bTwo = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\repeat volta 3 {
		ges8. ges16 ges8 ges4 ges8 |
		es4. des4. |
		ges,8. ges16 ges8 ces4 ces8 |
		bes4.( aes4.) |

		ges8. ges'16 ges8 ges4 ges8 |
		es4. des4 \once \override NoteHead.font-size = #-4 d8 |
		es8. \once \override NoteHead.font-size = #-4 es16 ces8 des4 des8 |
		ges,4. r4. |

		es'8. es16 es8 f4 f8 |
		bes,4 bes8 es4. |
		aes,8 aes8 aes8 des4 des8 |
		ges,4 aes8 des4. |

		ges8. ges16 bes,8 ces4 des8 |
		es4. des4( d8) |
		es8. \once \override NoteHead.font-size = #-4 es16 ces8 des4 des8 |
		<des ges,>4. r4. |
	}
}
