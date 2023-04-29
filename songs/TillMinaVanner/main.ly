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
%	ragged-last = ##t
}

#(set-global-staff-size 17)

global = {
	\key bes \major
	\time 6/8
}

\include "../../Include/midiVolume.ly"

%TILL MINA VÄNNER

systemTone = \relative c' {
	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #3
	\partial 8

	s8  |

	s2. |
  s2. |
	s4. s4.\cresc |
	s4 s16.\! s32^\markup{ \center-align {(Ten. I)} } s4 s8\p |

	s2. |
	s4 s16.\! s32^\markup{ \center-align {(Ten. I)} } s4 s8\p |
	s2. |
	s2. |

	s2. |
  s2. |
	s4 s8\< s8\! s4\> |
	s2\p s8

 	\bar "|."
}

systemTtwo = \relative c' {
	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #3
	\partial 8

	s8  |

	s2. |
  s2. |
	s2. |
	s2. |

	s4 s8\p s4. |
  s2. |
	s2. |
	s2. |

	s2.\cresc |
  s2. |
	s2.\! |
	s2 s8

 	\bar "|."
}

systemBtwo = \relative c' {
	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #3
	\partial 8

	s8  |

	s2. |
  s2. |
	s4. s4.\cresc |
	s4 s8\! s4. |

	s4 s8 s4 s16. s32\p |
  s2. |
	s2. |
	s2. |

	s2.\cresc |
  s2. |
	s4\! s8\< s8\! s4\> |
	s2\p s8

 	\bar "|."
}

tOne = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0
	\partial 8

	f16.^\markup{\italic {Larghetto} }[ bes32] |

	d4 c8 c4 d8 |
  es4 f16. es32 es8 d8 f,16. bes32 |
	d4 c16. c32 c4 d8 |
	\grace { f8 } es8 d8 c16. c32 bes4 d,16.[ f32] |

	bes4 f16.[ bes32] d4 b16.[ d32] |
  f4 g8 f8 es8 f,16.[ a32] |
	c4 a16.[ c32] es4 c16.[ d32] |
	es4 f8 es8 d8 f,16. bes32 |

	d4-> c16.[ d32] es4 g,16. bes32 |
  e4-> d16.[ e32] f4 a,16. c32 |
	fis4-> e16.[ fis32] g8.[ f16] es16[ c16] |
	bes8 d8 c8 bes4

 	\bar "|."
}

tTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #-7
	\partial 8

	f16.[ d32] |

	f4 g8 a4 bes8 |
	bes4 a16. c32 a8 bes8 d,16. d32 |
	f4 g16. g32 a4 b8 |
	c8 bes8 a16. a32 bes4 \once \override Voice.Rest #'staff-position = #-9 r8 |

	r4 d,16.[ f32] bes4 g16.[ b32] |
	d4 b8 d8 c8 r8 |
	r4 f,16.[ a32] c4 a16.[ bes32] |
	c4 a8 c8 bes8 r8 |

	f4 f8 g4 r8 |
	g4 g8 a4 r8 |
	a4 a8 g8.[ d'16] c16[ g16] |
	f8 bes8 a8 bes4

	\bar "|."
}

bOne = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0
	\partial 8

	d16.[ f32] |

	f8[ bes8] bes8 a4 f8 |
	g4 f16. a32 c8 bes8 f16. f32 |
	bes4 bes16. bes32 a4 f8 |
	g8 f8 es16. es32 d4 r8 |

	r4 r8 r4 r16. g32 |
	g4 g8 g8 g8 r8 |
	r4 r8 r4 f8 |
	f4 f8 f8 f8 r8 |

	aes4 aes8 g4 r8 |
	bes4 bes8 a4 r8 |
	c4 c8 bes8.[ g16] g16[ es16] |
	d8 f8 es8 d4

	\bar "|."
}

bTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0
	\partial 8

	bes8 |

	bes4 es16.[ e32] f4 d8 |
	c4 f16. f32 bes,8 bes8 bes16. bes32 |
	bes4 es16. e32 f4 d8 |
	c8 f8 f,16. f32 bes4 r8 |

	r4 r8 r4 r16. f'32 |
	d8[ b8] g8 c8 c8 r8 |
	r4 r8 r4 es16.[ d32] |
	c8[ a8] f8 bes8 bes8 r8 |

	bes4-> bes8 es4 r8 |
	c4-> c8 f4 r8 |
	d4-> d8 es8.[ b16] c16[ es16] |
	f,8 f8 f8 bes4

	\bar "|."
}

tOneLyricOne = \lyricmode {
	\repeat unfold 22 { \skip 1 }
	Mitt stöd,
	\repeat unfold 7 { \skip 1 }
	Mitt stöd,
	\repeat unfold 7 { \skip 1 }
	Tag ock du e -- mot, tag ock du e -- mot, tag ock du
}

tTwoLyricOne = \lyricmode {
	Vän -- skap, haf tack för allt du mig gif -- vit!
	Jag ej gäl -- da det kan, men dig fi -- rar min sång.
	Mitt stöd, min tröst i lif -- vet;
	mitt stöd, min tröst i lif -- vet;
	Tag e -- mot, tag e -- mot, tag e -- mot mitt min -- ne en gång.
}

%TILL MINA VÄNNER

\score { % centered <<

	\header {
		title = "Till mina vänner"
		composer = "Erik Gustaf Geijer"
	}

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "systemTone" <<
				\dynamicUp
				\systemTone
			>>
			\new Voice = "systemTtwo" <<
				\dynamicDown
				\systemTtwo
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
		\new Lyrics \with { alignAboveContext = "tenor" } {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Lyrics  {
			\lyricsto "tTwo"
			\tTwoLyricOne
		}
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice = "systemBtwo" <<
				\dynamicDown
				\systemBtwo
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

\include "../../Include/midiTillMinaVanner.ly"
