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
	\time 4/4
	\key d \major
}

\include "../Include/midiVolume.ly"

%DÅNE LIKSOM ÅSKAN, BRÖDER

dynamics = \relative c {
	\override DynamicLineSpanner.staff-padding = #3
	\partial 4

  s4\f
	s1 | s1 | s1 | s1 |
	s1 | s1 | s1 | s1 |
	s1 | s1 | s1 | s1 |

%	\bar ".|:"

	\repeat volta 2 {

		s1 | s1 | s1 | s1 | s2. s4\f |
		s1 | s1 | s1 | s1 |
		s1 | s1 | s1 | s1 |
	}

	\alternative {
	{
%			\set Timing.measureLength = #(ly:make-moment 4/4)
			s1
%			\bar ":|."
		}{
%			\set Timing.measureLength = #(ly:make-moment 3/4)
			s2.
		}
	}
		\bar "|."

}

tOne = \relative c {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\partial 4

	d8. fis16|
	a4.. a16 a4 b8.( cis16) |
	d2 a4 fis'8. e16 |
	d4. cis8 d4 b4 |
	a2 s4 a8. a16 |

	cis4. d8 e4 fis4 |
	g2 e4 a,8. a16 |
	fis'4. d8 b4 cis4 |
	d2 s4 d8. fis16 |

	e4 e4 e4 e4 |
	e4..( a16) a2 |
	e4.. cis16 e8. d16 cis8. b16 |
	a2 r2 |

	\repeat volta 2 {

		r2 r4 e'8.^\p d16 |
		cis8 r8 a8 r8 a8 r8 fis'8.( e16) |
		d2 a8 r8 e'8. d16 |
		cis8 r8 a8 r8 a8 r8 fis'8.( e16) |
		d2 s4 d8. cis16 |

		b4. b8 b4 dis4 |
		e4.( fis8) g2 |
		a,4.. a16 b8. cis16 d8. e16 |
		fis2 r4 fis8. fis16 |

		g4 fis4 e4 d4 |
		a'4.^\>( g8) fis2\! |
		fis4.^\>( e8) d2\! |
		a8. a16 a8. d16 fis4 e4 |
	}

	\alternative {
		{
			d2 r2
		}{
			d2 s4
		}
	}
}

tTwo = \relative c {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\partial 4

	d8. fis16|
	a4.. a16 a4 b8.( cis16) |
	d2 a4 a8. a16 |
	a4. a8 g4 g4 |
	a2 \once 	\override Voice.Rest #'staff-position = #0 r4 a8. a16 |

	a4. a8 cis4 d4 |
	e2 cis4 a8. a16 |
	fis'4. d8 b4 ais4 |
	b2 \once 	\override Voice.Rest #'staff-position = #0 r4 d8. cis16 |

	b4 gis4 a4 b4 |
	cis2 dis2 |
	e4.. cis16 cis8. b16 a8. gis16 |
	a2 r4 a8.\p a16 |

	\repeat volta 2 {

		a8 r8 a8 r8 a8 r8 a8 r8 |
		a2_> a2_>
		r4 a8. a16 a8 r8 a8 r8 |
		a2 a2 |
		a2 \once 	\override Voice.Rest #'staff-position = #0 r4 d8. cis16 |

		b4. b8 b4 b4 |
		b4.( dis8) e2 |
		a,4.. a16 a8. a16 a8. cis16 |
		d4 a8. fis16 d'2~ |

		d4 d4 cis4 d4 |
		e2 d2 |
		cis2 b2 |
		a8. a16 a8. a16 d4 cis4 |
	}

	\alternative {
		{
			a2 r4 a8.\p a16
		}{
			a2 \once \override Voice.Rest #'staff-position = #0 r4
		}
	}
}

bOne = \relative c {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\override Voice.Rest #'staff-position = #0
	\partial 4

	d8. fis16|
	a4.. a16 a4 b8.( cis16) |
	d2 a4 a8. g16 |
	fis4. a8 b4 g4 |
  fis2 r4 a8. a16 |

	a4. a8 a4 a4 |
	a2 a4 a,8. a16 |
	fis'4. d8 b4 fis'4 |
	fis2 r4 b8. a16 |

	gis4 e4 fis4 gis4 |
	a2 b2 |
	cis4.. a16 e8. e16 e8. e16 |
	a2 r2 |

	\repeat volta 2 {

		r2 r4 g8. fis16 |
		e8 r8 g8 r8 e8 r8 a8.( g16) |
		fis2 fis4 g8. fis16 |
		e8 r8 g8 r8 e8 r8 a8.( g16) |
		fis2 r4 d8. cis16 |

		b4. b8 b'4 b4 |
		b2 b2 |
		a4.. a16 a8. a16 a8. a16 |
		a2 r4 a8. a16 |

		b4 a4 g4 fis4 |
		a2 a2 |
		ais2 b2 |
		a8. a16 a8. fis16 a4 g4 |
	}

	\alternative {
		{
			fis2 r2
		}{
			a2 r4
		}
	}
}

bTwo = \relative c {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\override Voice.Rest #'staff-position = #0
	\partial 4

	d8. fis16|
	a4.. a16 a4 b8.( cis16) |
	d2 a4 d,8. d16 |
	d4. d8 d4 d4 |
	d2 r4 a'8. a16 |

	g4. fis8 e4 d4 |
	a2 a'4 a,8. a16 |
	fis'4. d8 b4 fis4 |
	b2 r4 \once \override Voice.Rest #'staff-position = #-3 r4 |

	\once	\override Voice.Rest #'staff-position = #-3 r4 e8. e16 e4 e4 |
	a4 a4 fis4 fis4 |
	e4.. e16 e8. e16 e8. e16 |
	a,2 r2 |

	\repeat volta 2 {

		r2 r4 a8. a16 |
		a8 r8 a8 r8 a8 r8 a8 r8 |
		d2 d4 cis8. d16 |
		a8 r8 a8 r8 a8 r8 a4 |
		d2 r4 d8. cis16 |

		b4. b8 b'4 a4 |
		g4.( fis8) e2 |
		a4.. a16 gis8. g16 fis8. e16 |
		d2 r4 d8. d16 |

		d4 d4 d4 d4 |
		cis2_> d2_> |
		fis2_> b2_> |
		a8. a16 fis8. d16 a'4 a,4 |
	}

	\alternative {
		{
			d2 r2
		}{
			d2 r4
		}
	}
}

tOneLyric = \lyricmode {
	\repeat unfold 45 {\skip 1}

	Må vi då i to -- ner svä -- ra
	tro -- hets -- ed -- en hand i hand

	\repeat unfold 15 {\skip 1}

	Liv och blod
}

tTwoLyric = \lyricmode {
	Då -- ne lik -- som ås -- kan, brö -- der,
	högt vår fos -- ter -- länds -- ka sång!
	Pul -- sen brin -- ner,
 hjär -- tat glö -- der,
 marsch fram -- åt än -- nu en gång!

 Sång -- en äd -- la käns -- lor fö -- der,
 hjär -- tats nyc -- kel he -- ter sång.

 Må vi då i to -- ner svä -- ra
 tro -- hets -- ed -- en hand i hand:

 Liv och blod för Sveri -- ges ä -- ra,
 hell, vårt dy -- ra fos -- ter -- land!

	Liv och blod för Sveri -- ges ä -- ra svä -- ra
	trog -- na brö -- der hand i hand!

	Må vi hand!

}

bOneLyric = \lyricmode {
	\repeat unfold 45 {\skip 1}

	Må vi då i to -- ner
}

bTwoLyric = \lyricmode {
	\repeat unfold 30 {\skip 1}

	Sång -- en äd -- la käns -- lor fö -- der,

	\repeat unfold 7 {\skip 1}

	Må vi då i to -- ner svä -- ra
	tro -- hets -- ed -- en hand i hand:

	\repeat unfold 15 {\skip 1}

	Liv och blod
}


%DÅNE LIKSOM ÅSKAN, BRÖDER

\score { % centered <<
	\header {
		title = "Dåne liksom åskan, bröder"
		composer = "Joseph Hartmann Stuntz"
		text = "Johan Christopher Jolin"
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
			\new Voice = "tTwo" <<
				\voiceTwo
				\tTwo
			>>
		>>
		\new Lyrics \with { alignAboveContext = "tenor" }  {
			\lyricsto "tOne"
			\tOneLyric
		}
		\new Lyrics  {
			\lyricsto "tTwo"
			\tTwoLyric
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
		\new Lyrics \with { alignAboveContext = "basses" }  {
			\lyricsto "bOne"
			\bOneLyric
		}
		\new Lyrics  {
			\lyricsto "bTwo"
			\bTwoLyric
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
\include "../Include/midiDaneLiksom.ly"
