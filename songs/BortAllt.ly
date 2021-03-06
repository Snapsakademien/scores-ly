% LilyBin
\version "2.18.2"

\header {
	tagline = ##f
}

\paper {
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #6
	print-all-headers = ##t
	print-page-number = ##f
	#(include-special-characters)
%	ragged-last = ##t
}

#(set-global-staff-size 17)

citation = "&erqq"

global = {
	\key es \major
	\time 3/4
}

\include "../Include/midiVolume.ly"

%BORT ALLT VAD ORO

system = \relative c' {
%	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #3

	s2. \f |
	s2. |
	s2. |
	s2. |

	s2.\mf | \break
	s2. |
	s2. |
	s2. |

	s2.\> |
	s2.\! |

	\bar ".|:"

	\repeat volta 2 {
		s2. \f | \break
		s2. |
		s2. |
		s2. |

		s2.\mf |
		s2. | \break
		s2 s8 s8\ff |
		s2. |

		s2.\> |
		s2.\! |
	}

	\bar "|."
}

tOne = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0

	es4 es4 es4 |
	bes'4 bes4 bes4 |
	es4 es8 d8 es8 f8 |
	es2 d4 |

	c4 c4 f4 |
	bes,4 bes4 es4 |
	aes,4 aes4 aes4 |
	aes4.( bes8) g4 |

	f4 es4 d4 |
	es2 r4 |

	\repeat volta 2 {
		g'4 g8 f8 g8 aes8 |
		g8 f8 f2 |
		es4 es8 d8 es8 f8 |
		es8 des8 des2 |

		c4 c4 f4 |
		bes,4 bes4 es4 |
		aes,4 aes4 r8 aes8 |
		aes4.( bes8) g4 |

		f4 es4 d4 |
		es2 r4 |
	}
}

tTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0

	es4 es4 es4 |
	bes'4 bes4 bes4 |
	bes4 bes8 bes8 a8 a8 |
	bes2 bes4 |

	c4 c4 c4 |
	bes4 bes4 bes4 |
	aes4 aes4 aes4 |
	aes4.( bes8) g4 |

	f4 es4 d4 |
	es2 r4 |

	\repeat volta 2 {
		bes'4 bes4 bes4 |
		bes8 bes8 bes8 bes8 bes4 |
		a4 a4 a4 |
		bes8 bes8 bes8 bes8 bes4 |

		c4 c4 c4 |
		bes4 bes4 bes4 |
		aes4 aes4 r8 aes8 |
		aes4.( bes8) g4 |

		f4 es4 d4 |
		es2 r4 |
	}
}

bOne = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0

	es4 es4 es4 |
	f4 f4 f4 |
	g4 g8 g8 f8 f8 |
	f2 f4 |

	aes4 aes4 aes4 |
	g4 g4 g4 |
	f4 f4 f4 |
	f2 es4 |

	f4 g4 aes4 |
	g2 r4 |

	\repeat volta 2 {
		es4 g4 es4 |
		f8 f8 f8 f8 f4 |
		f4 f4 f4 |
		f8 f8 f8 f8 f4 |

		aes4 aes4 aes4 |
		g4 g4 g4 |
		f4 f4 r8 f8 |
		f2 es4 |

		f4 g4 aes4 |
		g2 r4 |
	}
}

bTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0

	es4 es4 es4 |
	d4 d4 d4 |
	c4 c8 c8 c8 c8 |
	bes2 bes4 |

	aes4 aes'4 aes4 |
	g4 g4 g4 |
	f4 f4 es4 |
	d2 es4 |

	aes,4 bes4 bes4 |
	es2 r4 |

	\repeat volta 2 {
		es4 es4 es4 |
		d8 d8 d8 d8 d4 |
		c4 c4 c4 |
		bes8 bes8 bes8 bes8 bes4 |

		aes4 aes'4 aes,4 |
		g4 g'4 g,4 |
		f4 f'4 r8 es8 |
		d2 es4 |

		aes,4 bes4 bes4 |
		es2 r4 |
	}
}

tOneLyricOne = \lyricmode {

	\repeat unfold 28 { \skip 1 }

	Gran -- ne, g??r du just som jag g??r!
	Vet den -- na ol -- jan ger hu -- m??r.
}

tTwoLyricOne = \lyricmode {
	Bort allt vad o -- ro g??r, bort allt vad hj??r -- tat kv??l -- jer.
	B??st att man v??l -- jar bland des -- sa bu -- tel -- jer sin mag -- li -- k??r.

	Gran -- ne, g??r du just som jag g??r!
	Vet den -- na ol -- jan ger hu -- m??r.
	Vad det var l??c -- kert vad var det?
	Rhenskt blec -- kert? &erqq;Oui mon -- seig -- neur!&erqq;
}

tTwoLyricTwo = \lyricmode {
	Bort allt vad o -- ro g??r, Allt ??r ju stoft och as -- ka.
	L??t oss bli ras -- ka och t??m -- ma v??r flas -- ka bland br?? -- der -- na!

	Gran -- ne, g??r du just som jag g??r!
	Vet den -- na ol -- jan ger hu -- m??r.
	Vad det var m??k -- tigt vad var det?
	&erqq;Jo, pr??k -- tigt!&erqq; Ma -- la -- ga? &erqq;Ja!&erqq;
}

%BORT ALLT VAD ORO G??R

\score { % centered <<

	\header {
		title = "Bort allt vad oro g??r"
		composer = "Carl-Michael Bellman"
		arranger = "Johan Alfred Ahlstr??m"
	}

	\new ChoirStaff <<
		\new Staff = "staffTenor" <<
			\global
			\clef "treble_8"
			\new Voice = "systemUp" <<
				\dynamicUp
				\system
			>>
			\new Voice = "tOne" <<
				\voiceOne
				\tOne
			>>
			\new Voice = "tTwo" <<
				\voiceTwo
				\tTwo
			>>
		>>
		\new Lyrics \with { alignAboveContext = "staffTenor" } {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Lyrics  {
			\lyricsto "tTwo"
			\tTwoLyricOne
		}
		\new Lyrics  {
			\lyricsto "tTwo"
			\tTwoLyricTwo
		}
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice = "systemDown" <<
				\system
			>>
			\new Voice = "bOne" <<
				\voiceOne
				\bOne
			>>
			\new Voice = "bTwo" <<
				\voiceTwo
				\bTwo
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

\include "../Include/midiBortAllt.ly"
