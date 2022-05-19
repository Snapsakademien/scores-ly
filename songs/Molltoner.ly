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
}

#(set-global-staff-size 17)

global = {
	\key b \minor
	\time 3/4
}

\include "../Include/midiVolume.ly"

%MOLLTONER FRÅN NORRLAND

system = \relative c' {

	s2. | s2. | s2. | s2. |
	s2. | s2. | s2. | s2. \bar "||"
	s2. | s2. | s2. | s2. |
	s2. | s2. | s2. | s2. \bar "|."
}

tOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	b4 b8. cis16 b8. cis16 |
	d4 d8. e16 d8. e16 |
	fis4 fis8. e16 cis8. d16 |
	b4 b8. ais16 fis4 |

	b4 b8. cis16 b8. cis16 |
	d4 d8. e16 d8. e16 |
	fis4 fis8. e16 cis8. d16 |
	b4 b8. b16 b4 |

	fis'4 fis8. d16 a'8. fis16 |
	e4 e8. d16 cis4 |
	d4 d8. b16 fis'8. d16 |
	cis4 cis8. ais16 fis4 |

	b4 b8. cis16 b8. cis16 |
	d4 d8. e16 d8. e16 |
	fis4 fis8. e16 cis8. d16 |
	b2 r4 \bar "|."
}

tTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	fis,4 fis8. fis16 fis8. fis16 |
	b4 b8. b16 b8. b16 |
	d4 cis8. cis16 cis8. fis,16 |
	fis4 fis8. fis16 fis4 |

	fis4 fis8. fis16 fis8. fis16 |
	b4 b8. b16 b8. b16 |
	d4 b8. b16 ais8. ais16 |
	b4 b8. b16 b4 |

	d4 d8. d16 d8. d16 |
	cis4 cis8. b16 a8[ g8] |
	fis4 b8. b16 b8. b16 |
	ais4 ais8. fis16 fis4 |

	fis4 fis8. fis16 fis8. fis16 |
	b4 b8. b16 b8. b16 |
	d4 b8. b16 ais8. ais16 |
	b2 r4 \bar "|."
}

bOne = \relative c {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	d4 d8. e16 d8. e16 |
	fis4 fis8. g16 fis8. g16 |
	fis4 g8. g16 e8. e16 |
	d4 d8. cis16 ais4 |

	d4 d8. e16 d8. e16 |
	fis4 fis8. g16 fis8. g16 |
	fis4 g8. g16 e8. fis16 |
	d4 d8. d16 d4 |

	a'4 a8. fis16 a8. a16 |
	a4 e8. e16 e8[ g8] |
	fis4 fis8. d16 fis8. fis16 |
	fis4 fis8. fis16 fis8[ e8] |

	d4 d8. e16 d8. e16 |
	fis4 fis8. g16 fis8. g16 |
	fis4 g8. g16 e8. fis16 |
	d2 r4 \bar "|."
}

bTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0

	b4 b8. b16 b8. b16 |
	b4 b8. b16 b8. b16 |
	b4 b8. b16 b8. b16 |
	b4 fis8. fis16 fis4 |

	b4 b8. b16 b8. b16 |
	b4 b8. b16 b8. b16 |
	b4 g8. g16 fis8. fis16 |
	b4 b8. b16 b4 |

	d4 d8. d16 fis8. d16 |
	a4 a8. a16 a8[ ais8] |
	b4 b8. b16 d8. b16 |
	fis4 fis'8. e16 d8[ cis8] |

	b4 b8. b16 b8. b16 |
	b4 b8. b16 b8. b16 |
	b4 g8. g16 fis8. fis16 |
	b2 r4 \bar "|."
}

LyricToneOne = \lyricmode {

}

LyricTtwo = \lyricmode {
	Fes -- ten kan bör -- ja in  -- gen får sör -- ja,
	här finns det bå -- de bränn  -- vin och mat.

	He -- lan ska töm -- mas, sor -- ger -- na glö -- mas
	in  -- gen får va --  ra trå -- kig kam  -- rat.

	Klap -- pa mitt hjär -- ta, fröj  -- das min själ.
	Nub -- ben ser -- ve  -- ras ge  -- nast, nå -- väl.

	Nu  tar vi su -- pen,  öpp -- nar på stru -- pen,
	gäs  -- ter --  nas väl -- komst -- skål.
}

LyricBone = \lyricmode {

}

LyricBtwoOne = \lyricmode {

}

%FESTEN KAN BÖRJA

\score { % centered <<

	\header {
		title = "Festen kan börja"
		composer = "Trad."
		Arranger =  "A. Jahnke"
	}

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
%				\dynamicUp
%				\system
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
%				\lyricsto "tOne"
%				\LyricToneOne
			}
			\new Lyrics {
				\lyricsto "tTwo"
				\LyricTtwo
			}
		>>
		\new Staff = "bass" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
%				\dynamicDown
%				\system
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
%				\lyricsto "bTwo"
%				\LyricBtwoOne
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

\include "../Include/midiMolltoner.ly"
