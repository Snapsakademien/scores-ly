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
	\key bes \major
	\time 4/4
}

\include "../Include/midiVolume.ly"

%KUNG KARL

system = \relative c' {
	\partial 4

	s4\ff |
	s1 | s1 | s1 | s2. s4\f |
	s1 | s2. s4\ff| s1 | s2. s4\f |
	s1 | s1 | s1 | s1 |
	s1 | s1 | s1 | s2. s4\p |

	s1 | s1 | s1 | s2. s4\ff |
	s1 | s1 | s1 | s2. \bar "|."
}

tOne = \relative c' {
%	\override Voice.Rest #'staff-position = #0
	\autoBeamOff
	\partial 4

	f,4 |
	d'4. d8 es4. c8 |
	bes8[ d8] f,4 r8 f'8^\mf d8 bes8 |
	f2. a4 |
	bes4 \once \override Voice.Rest #'staff-position = #0 r4 \once \override Voice.Rest #'staff-position = #0 r4 f4 |

	d'4. d8 es4. es8 |
	d4 c4 \once \override Voice.Rest #'staff-position = #0 r4 c4 |
	c4. c8 e4. e8 |
	f2 \once \override Voice.Rest #'staff-position = #0 r4 f,4 |

	c'4-. es4-. d4-. f4-. |
	f8[ d8] bes4 \once \override Voice.Rest #'staff-position = #0 r4 d4 |
	es4 d4 c4 g'4 |
	f2 r4 f,4^\f |

	bes2~ bes8. d,16 es8. f16 |
	g4 es4 r4 g4 |
	es'2~ es8. d16 c8 bes8 |
	a4 f4 \once \override Voice.Rest #'staff-position = #0 r4 f'4 |

	f2 d4. es8 |
	f4 g4 f4. es8 |
	d4. es8 d4 c4 |
	bes2 \once \override Voice.Rest #'staff-position = #0 r4 f'4 |

	f2 d4. es8 |
	f4 g4 f4. es8 |
	d4. es8 d4 c4 |
	\set Timing.measureLength = #(ly:make-moment 3/4)
	bes2 \once \override Voice.Rest #'staff-position = #0 r4 |
}

tTwo = \relative c' {
%	\override Voice.Rest #'staff-position = #0
	\partial 4
	\autoBeamOff

	f,4 |
	f4. bes8 a4. a8 |
	f4 d4 r2 |
	r8 d'8\mf c8 bes8 a8[ g8] f8[ es8] |
	d4 \once \override Voice.Rest #'staff-position = #0 r4 \once \override Voice.Rest #'staff-position = #0 r4 f4 |

	f4. bes8 bes4. bes8 |
	bes4 bes4 \once \override Voice.Rest #'staff-position = #0 r4 bes4 |
	a4. a8 bes4. bes8 |
	a2 \once \override Voice.Rest #'staff-position = #0 r4 f4 |

	a4 c4 bes4 a4 |
	bes8[ d8] bes4 \once \override Voice.Rest #'staff-position = #0 r4 bes4 |
	a4 bes4 g4 bes4 |
	a2 r2 |

	r4 r8 bes8\f bes8. bes16 bes8. bes16 |
	bes4 g4 r2 |
	r2 r4. e'8 |
	f4 f,4 \once \override Voice.Rest #'staff-position = #0 r4 d'4 |

	d2 bes4. c8 |
	d4 es4 d4. c8 |
	bes4. c8 bes4 a4 |
	bes2 \once \override Voice.Rest #'staff-position = #0 r4 d4 |

	d2 bes4. c8 |
	d4 es4 d4. c8 |
	bes4. c8 bes4 a4 |
	\set Timing.measureLength = #(ly:make-moment 3/4)
	bes2 \once \override Voice.Rest #'staff-position = #0 r4 |
}

bOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\partial 4
	\autoBeamOff

	f,4 |
	f4. f8 f4. f8 |
	f4 f4 r2 |
	r4. d8 f8 es8 d8 c8 |
	bes4 r4 r4 f'4 |

	f4. f8 g4. g8 |
	f4 g4 r4 g4 |
	f4. f8 g4. g8 |
	f2 r4 f4 |

	f4 a4 bes4 c4 |
	bes4 bes4 r4 bes4 |
	c4 bes4 c4 c4 |
	c2 r2 |

	r4. bes8 bes8. aes16 g8. f16 |
	es4 es4 r2 |
	r4. c8 c'8. bes16 a8 a8 |
	f4 f4 r4 bes4 |

	bes2 bes4. bes8 |
	bes4 bes4 bes4. a8 |
	bes4. g8 f4 f4 |
	d2 r4 bes'4 |

	bes2 bes4. bes8 |
	bes4 bes4 bes4. a8 |
	bes4. g8 f4 f4 |
	\set Timing.measureLength = #(ly:make-moment 3/4)
	d2 r4 |
}

bTwo = \relative c' {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0
	\partial 4

	f,4 |
	bes,4. bes8 f'4. f8 |
	d4 bes4 r2 |
	r4. d8\mf f8 es8 d8 c8 |
	bes4 r4 r4 f'4 |

	bes,4. bes'8 g4. g8 |
	f4 e4 r4 e4 |
	f4. f8 c4. c8 |
	f2 r4 f4 |

	f4 f4 f4 es4 |
	d4 g4 r4 g4 |
	fis4 g4 es4 e4 |
	f2 r2 |

	r4. bes,8\f bes'8. aes16 g8. f16 |
	es4 es4 r2 |
	r4. c8 c'8. bes16 a8 a8 |
	f4 f4 r4 bes4 |

	bes,2 bes4. bes8 |
	bes4 bes4 bes4. f'8 |
	g4. es8 f4 f,4 |
	bes2 r4 bes'4 |

	bes,2 bes4. bes8 |
	bes4 bes4 bes4. f'8 |
	g4. es8 f4 f,4 |
	\set Timing.measureLength = #(ly:make-moment 3/4)
	bes2 r4 |
}

LyricToneOne = \lyricmode {
	\repeat unfold 7  { \skip 1 }
	han stod i rök och damm.
	\repeat unfold 26  { \skip 1 }
	Ur vä --  gen  Mos -- ko -- vi -- ter,
	ur vä --  gen Mos -- ko -- vi -- ter,
}

LyricToneTwo = \lyricmode {
	\repeat unfold 7  { \skip 1 }
	av re -- tad Wa -- sa -- son.
	\repeat unfold 26  { \skip 1 }
	Lugn stod han mot Eu -- ro -- pa,
	lugn stod han mot Eu -- ro -- pa.
}

LyricToneThree = \lyricmode {
	\repeat unfold 7  { \skip 1 }
	ut -- i hans sven -- ska barm,
	\repeat unfold 26  { \skip 1 }
	Han kun -- de ic -- ke vi  -- ka,
	han kun -- de ic -- ke vi -- ka.
}

LyricTtwoOne = \lyricmode {
	\set stanza = #"1."
	Kung Karl den un -- ga hjäl -- te, han stod i rök och damm.
	Han drog sitt svärd från bäl -- te och  bröt i stri -- den fram.
	Hur sven -- ska stå -- let bi  -- ter, kom låt oss prö -- va på!

	Ur vä --  gen  Mos -- ko -- vi -- ter,
	ur vä -- gen, \skip 1

	Friskt mod, i gos -- sar blå, friskt mod i gos -- sar blå. \skip 1
	Friskt mod, i gos -- sar blå, friskt mod i gos -- sar blå!

}

LyricTtwoTwo = \lyricmode {
	\set stanza = #"2."
	Och en mot ti -- o ställ -- des av re -- tad Wa -- sa -- son.
	Där flyd -- de vad ej fäll -- des det var hans lä -- ro -- spån.
	Tre ko -- nun -- gar till -- ho -- pa ej skre -- vo pil -- ten  bud.

	Lugn stod han mot Eu -- ro -- pa,
	lugn stod han.

	En skägg -- lös_ _ dun -- der -- gud, en skägg -- lös dun  -- der -- gud,
	en skägg -- lös_ _ dun -- der -- gud, en skägg -- lös dun  -- der -- gud.
}

LyricTtwoThree = \lyricmode {
	\set stanza = #"3."
	Där slog så stort en  hjär -- ta, ut -- i hans sven -- ska barm.
	I gläd -- je som i smär -- ta, blott för det rät -- ta varm.
	I med och mot -- gång li -- ka, sin lyc -- kas ö -- ver -- man.

	Han kun -- de ic -- ke vi -- ka,
	ej vi -- ka.

	Blott fal -- la_ _ kun -- de  han, blott fal -- la kun -- de han,
	blott fal -- la_ _ kun -- de  han, blott fal -- la kun -- de han.
}

LyricBone = \lyricmode {

}

LyricBtwoOne = \lyricmode {
	\repeat unfold 7  { \skip 1 }
	han stod i rök och damm.
	\repeat unfold 33  { \skip 1 }
	Ur vä --  gen  Mos -- ko -- vi -- ter,
}

LyricBtwoTwo = \lyricmode {
	\repeat unfold 7  { \skip 1 }
	av re -- tad Wa -- sa -- son.
	\repeat unfold 33  { \skip 1 }
	lugn stod han mot Eu -- ro -- pa.
}

LyricBtwoThree = \lyricmode {
	\repeat unfold 7  { \skip 1 }
	ut -- i hans sven -- ska barm,
	\repeat unfold 33  { \skip 1 }
	han kun -- de ic -- ke vi -- ka.
}

%KUNG KARL

\score { % centered <<

	\header {
		title = "Kung Karl"
		composer = "Otto Westerman"
		Arranger =  "Eric Jacob Arrhén von Kapfelmann"
		text = "Esias Tegnér"
	}

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
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
			\new Lyrics \with {alignAboveContext = "tenor"} {
				\lyricsto "tOne"
				\LyricToneOne
			}
			\new Lyrics \with {alignAboveContext = "tenor"} {
				\lyricsto "tOne"
				\LyricToneTwo
			}
			\new Lyrics \with {alignAboveContext = "tenor"} {
				\lyricsto "tOne"
				\LyricToneThree
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwoOne
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwoTwo
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwoThree
			}
		>>
		\new Staff = "bass" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
				\dynamicDown
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
			\new Lyrics \with {alignAboveContext = "bass"} {
%				\lyricsto "bOne"
%				\LyricBone
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoOne
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoTwo
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwoThree
			}
		>>
	>>
	\layout {
		\context {
			\Score
			\override SpacingSpanner.uniform-stretching = ##t
		}
		\context {
			\Lyrics
			\override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 2) (minimum-distance . 2) (padding . 2))
			\override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
		}
	}
}  % End score

\include "../Include/midiKungKarl.ly"
