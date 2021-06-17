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
	\time 9/8
	\key d \major
}

\include "../Include/midiVolume.ly"

%METSÄMIEHEN JUOMALAULU

systemUp = \relative c' {
	\autoBeamOff
	\partial 2
	\override DynamicLineSpanner.staff-padding = #3

	s2 |

	s4. s4. s4. |
	s4. s4 s8\< s4. |
	s4.\f s4. s4.\> |
	s4. s4.\! s4. |

	s4. s4. s4. |
	s4. s4. s4. |
	s4.\f s4. s4.\mf |
	s4. s4. s4. |

	s4. s4. s4. |
	s4. s4 s8\f s4. |
	s4. s4. s4. |
	s4. s4. s4. |

	s4.\sf s4. s4. |
	s4. s4. s4. |
	s4. s4. s4. |
	s4.\f s4. s4. |

	s4. s4. s4. |
	s4. s4. s4. |
	s4. s4. s4. |
	s4.\ff s4. s4. |

	s4. s4. s4. |
	s4. s4

 	\bar "|."
}

systemBone = \relative c' {
	\autoBeamOff
	\partial 2
	\override DynamicLineSpanner.staff-padding = #3

	s2 |

	\repeat unfold 10 { s4. s4. s4. | }

	s4. s4 s8\f s4. |
	s4. s4. s4. |
	s4.\sf s4. s4. |

}

systemBtwo = \relative c' {
	\autoBeamOff
	\partial 2
	\override DynamicLineSpanner.staff-padding = #3

	s2 |

	s4. s4. s4. |
	s4. s4 s8\< s4. | \break
	s4.\f s4. s4.\> |
	s4. s4.\! s4. |

	s4. s4. s4. | \break
	s4. s4. s4. |
	s4.\f s4. s4.\mf |
	s4. s4. s4. | \break

	s4. s4. s4. |
	s4. s4. s4. |
	s8 s4\f s4. s4. | \break
	s4. s4. s4. |

	s4. s4. s4. |
	s4. s4. s4. | \break
	s4. s4. s4. |
	s4.\f s4. s4. |

	s4. s4. s4. |
	s4. s4. s4. | \break
	s4. s4. s4. |
	s4.\ff s4. s4. |

	s4. s4. s4. |
	s4. s4

 	\bar "|."
}

tOne = \relative c' {
	\autoBeamOff
	\partial 2
	\override Voice.Rest #'staff-position = #0

	a8^\markup { Vivace } a8. gis16 a8 |

	d4.~ d8. cis16 b8 a8. cis16 d8 |
	e4.~ e4 d8 cis8. e16 fis8 |
	g4.~ g8. fis16 e8 d8. cis16 b8 |
	a4.~ a4. s4. |

	s4. r4 a8 a8. b16 cis8 |
	d4.~ d8 r8 d8 d8. cis16 d8 |
	fis2. e4. |
	d8. cis16 b8 cis8. d16 dis8 e8. d16 b8 |

	a4.~ a4 r8 s4. |
	s4. r4 a8 a8. a16 a8 |
	cis4.~ cis4 cis8 cis8. cis16 cis8 |
	e4.~ e4 e8 e8. e16 e8 |

	g2.~ g4.~ |
	g4. s4. s4. |
	s4. r4 fis8 fis8. fis16 fis8 |
	a2. d,4 e8 |

	fis2. e4. |
	fis4.~ fis8 r4 s4. |
	s4. r4 fis8 fis8. fis16 fis8 |
	a2. d,4 e8 |

	fis2. e4. |
	d4.~ d8\fermata r8
}

tTwo = \relative c' {
	\autoBeamOff
	\partial 2
	\override Voice.Rest #'staff-position = #0

	a8 a8. gis16 a8 |

	a4.~ a8. a16 a8 a8. a16 a8 |
	cis4.~ cis4 a8 a8. cis16 d8 |
	cis4.~ cis8. a16 a8 a8. a16 g8 |
	g4.~ g4. r4. |

	r4. r4 g8 g8. g16 g8 |
	fis4.~ fis8 r8 b8 b8. ais16 b8 |
	cis2. cis4. |
	b8. ais16 b8 a8. b16 c8 b8. b16 gis8 |

	e4.~ e4 r8 r4. |
	r4. r4 a8 a8. a16 a8 |
	a4.~ a4 a8 a8. a16 a8 |
	cis4.~ cis4 cis8 cis8. cis16 cis8 |

	e2.~ e4.~ |
	e4. r4. r4. |
	r4. r4 a,8 a8. a16 a8 |
	a2. b4 d8 |

	d2. cis4. |
	d4.~ d8 r4 r4. |
	r4. r4 a8 a8. a16 a8 |
	a2. b4 d8 |

	d2. cis4. |
	a4.~ a8 r8
}

bOne = \relative c' {
	\autoBeamOff
	\partial 2

	a8 a8. gis16 a8 |

	fis4.~ fis8. g16 fis8 g8. g16 fis8 |
	a4.~ a4 a8 a8. a16 a8 |
	a4.~ a8. a16 g8 g8. g16 e8 |
	e4.~ e4. r4. |

	r4. r4 cis8 cis8. d16 e8 |
	d4.~ d8  \once	\override Voice.Rest #'staff-position = #0 r8 fis8 fis8. fis16 b8 |
	ais2. fis4. |
	fis8. fis16 b8 a8. a16 a8 gis8. gis16 d8 |

	cis4.~ cis4 r8 r4. |
	r4. r4 s8 \once	\override Voice.Rest #'staff-position = #0 r4. |
	r4. r4 a'8 a8. a16 a8 |
	a4.~ a4 a8 a8. a16 a8 |

	cis2.~ cis4.~ |
	cis4. r4 a8 a8. a16 a8 |
	d2.~ d4.( |
	cis2.) b4 bes8 |

	a2. a4. |
	a4.~ a8 r8 a8 a8. a16 a8 |
	d2.~ d4.( |
	cis2.) b4 bes8 |

	a2. g4. |
	fis4.~ fis8  \once	\override Voice.Rest #'staff-position = #0 r8
}

bTwo = \relative c' {
	\autoBeamOff
	\partial 2
%	\override Voice.Rest #'staff-position = #0

	a8 a8. gis16 a8 |

	fis4.~ fis8. e16 d8 cis8. e16 fis8 |
	g4.~ g4 fis8 e8. g16 fis8 |
	e4.~ e8. d16 cis8 b8. a16 d8 |
	cis4.~ cis4 e8 g8. e16 cis8 |

	a4.~ a4 a8 a8. a16 a8 |
	b4.~ b8  \once	\override Voice.Rest #'staff-position = #0 r8 b8 b8. b16 b8 |
	fis2. ais4. |
	b8. cis16 d8 e8. e16 e8 e8. e16 e8 |

	a,4.~ a4 cis16[ d16] e8. fis16 gis8 |
	a4.~ a4 \once	\override Voice.Rest #'staff-position = #0 r8 s4. |
	r4 a,8 a'4 r8 r4. |
	r4 a,8 a'4 r8 r4. |

	r4 a,8 a'4.~ a4.~ |
	a4. r4. r4. |
	r4. r4 d,8 d8. d16 d8 |
	fis2. g4 g8 |

	a2. a,4. |
	d4.~ d8 r4 r4. |
	r4. r4 d8 d8. d16 d8 |
	fis2. g4 g8 |

	a2. a,4. |
	<d d,>4.~ <d d,>8\fermata  \once	\override Voice.Rest #'staff-position = #0 r8
}

tOneLyricOne = \lyricmode {
	Käy met -- so -- lan hal -- ki nyt ret -- kem -- me tie
	se kun -- nail -- la kul -- kee se laak -- so -- hon vie

	Nyt e -- des -- päin vaan, nyt e -- des -- päin vaan!
	Meit' es -- te le vir -- ta ei kuo -- hu -- va kaan

	Nyt veik -- ko -- nen juo!
	Nyt veik -- ko -- nen juo!
	Nyt veik -- ko -- nen juo!

	Ain' e -- lä -- köön met -- sä ja rie -- mun vuo
	Ain' e -- lä -- köön met -- sä ja rie -- mun vuo!
}

bTwoLyricOne = \lyricmode {

	\repeat unfold 22 { \skip 1}

	se laak -- so -- hon vie

	\repeat unfold 21 { \skip 1}

	ei kuo -- hu -- va kaan

	Nyt juo!
	Nyt juo!
	Nyt juo!

	Ain' e -- lä -- köön met -- sä ja rie -- mun vuo
	Ain' e -- lä -- köön met -- sä ja rie -- mun vuo!
}

bOneLyricOne = \lyricmode {

	\repeat unfold 53 { \skip 1}

	Ain' e -- lä -- köön met -- sä ja rie -- mun vuo
	Ain' e -- lä -- köön met -- sä ja rie -- mun vuo!
}

%ÄR JAG FÖDD SÅ VILL JAG LEVA

\score { % centered <<

	\header {
		title = "Metsämiehen Juomalaulu"
		composer = "Edvard Hermes"
	}

	\new ChoirStaff <<
		\new Staff <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
				\dynamicUp
				\systemUp
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
		\new Lyrics  {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
				\dynamicDown
				\systemBtwo
			>>
			\new Voice = "system" <<
				\dynamicUp
				\systemBone
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
		\new Lyrics  \with { alignAboveContext = "staff" }{
			\lyricsto "bOne"
			\bOneLyricOne
		}
		\new Lyrics  {
			\lyricsto "bTwo"
			\bTwoLyricOne
		}
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

\include "../Include/midiMetsamiehen.ly"
