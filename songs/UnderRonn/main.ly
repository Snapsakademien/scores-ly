% LilyBin
\version "2.18.2"

\header {
	tagline = ##f
}

\paper {
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #4
	print-all-headers = ##t
	print-page-number = ##f
}

#(set-global-staff-size 17)

global = {
	\time 6/8
	\key ges \major
}

\include "../../Include/midiVolume.ly"

%UNDER RÖNN OCH SYREN

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
	\override Voice.Rest #'staff-position = #0
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
	\override Voice.Rest #'staff-position = #0
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
	\override Voice.Rest #'staff-position = #0
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
	\override Voice.Rest #'staff-position = #0
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

lyricOne = \lyricmode {
	\set stanza = #"1."

	Blom -- man -- de skö -- na da -- lar, hem för mitt hjär -- tas ro!
	Lum -- mi -- ga grö -- na sa -- lar, där vår __ \skip 1 och kär -- lek bo!
	So -- li -- ga barn av luft och ljus,
	o, jag för -- står ert tys -- ta sus.
	Blom -- man -- de skö -- na da -- lar, hem __ \skip 1 för hjär -- tats ro!
}

lyricTwo = \lyricmode {
	\set stanza = #"2."

	Kom, du min vän i sko -- gen, kom, vid min si -- da sjung!
	Sko -- gen är e -- vigt tro -- gen, __ \skip 1 vå -- ren är e -- vigt ung.
	Li -- vet för -- går som kväl -- lens fläkt;
	e -- vig är vå -- rens an -- de -- dräkt.
	Kom, du min vän i sko -- gen, kom, vid min si -- da sjung!
}

lyricThree = \lyricmode {
	\set stanza = #"3."

	Blom -- man -- de skö -- na da -- lar strå -- la av säll -- het då;
	kla -- ra -- re vå -- ren ta -- lar, __ \skip 1 bätt -- re vi den för -- stå.
	Af -- to -- nen råd -- nar, va -- kan slår,
	stil -- la en suck ur hjär -- tat går;
	blom -- man -- de skö -- na da -- lar strå - la säll -- het då.
}

%UNDER RÖNN OCH SYREN

\score { % centered <<

	\header {
		title = "Under rönn och syrén"
		composer = "Herman Palm"
		text = "Zacharias Topelius"
	}

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "tOne" <<
				\voiceOne
				\tOne
			>>
			\new Voice <<
				\dynamicUp
				\voiceOne
				\dynamics
			>>
			\new Voice <<
				\bars
			>>
			\new Voice = "tTwo" <<
				\voiceTwo
				\tTwo
			>>
		>>
		\new Lyrics  {
			\lyricsto "tOne"
			\lyricOne
		}
		\new Lyrics  {
			\lyricsto "tOne"
			\lyricTwo
		}
		\new Lyrics  {
			\lyricsto "tOne"
			\lyricThree
		}
		\new Staff = "basses" <<
			\global
			\clef "bass"
			\new Voice = "bOne" <<
				\voiceOne
				\bOne
			>>
			\new Voice = "bTwo" <<
				\voiceTwo
				\bTwo
			>>
			\new Voice <<
				\voiceTwo
				\dynamics
			>>
		>>
	>>
	\layout {
		\context {
			\Score
			\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
		}
		\context {
			\Lyrics
			\override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.5
			\override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
		}
	}
}  % End score

\include "../../Include/midiUnderRonn.ly"
