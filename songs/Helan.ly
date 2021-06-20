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
	systems-per-page = 4
}

#(set-global-staff-size 17)

global = {
	\time 4/4
	\key a \major
}

\include "../Include/midiVolume.ly"

%Helan går

tenorDynamics = \relative c {
	\override DynamicLineSpanner.staff-padding = #3
	s1\f
	s1 | s1 | s1
	s4\p\< s4 s2\!

	s4\< s4 s2\!
	s4\f s2.
	s1
	s4\mf s2.
	s1
	s2 s4\ff s4
	s1\fermata
}


bOneDynamics = \relative c {
	\override DynamicLineSpanner.staff-padding = #3
	s1 | s1 | s1 |s1 
	s4\p\< s4 s2 \!
	s4\< s4 s2 \!

}


bTwoDynamics = \relative c {
	\override DynamicLineSpanner.staff-padding = #3
	s1 | s1 | s1 | s1
	s2 s8\mf s4.
	s1
	s1\f
	s2 s8\mf s4.
	s1 | s1
	s2 s2\ff

}

tOne = \relative c {
	%\set beamExceptions = #'()
	%\set beatStructure = #'(1 1 1 1)
	\autoBeamOff

	cis'4 e4 a,4. cis8
	b8 b16 b16 b8 b8 cis8 a8 a4
	cis4 e4 a,4. cis8
	b8 b16 b16 b8 b8 a2
	b4 d4 b2
	cis4 e4 cis2
	d4 fis4 a,4 d4
	e8 r16 e16 e4 r2
	cis4 e4 cis2
	d4 fis4 d4 fis4
	e2 gis4 gis4
	a1
	
}

tTwo = \relative c {
	%\set beamExceptions = #'()
	%\set beatStructure = #'(1 1 1 1)
	\autoBeamOff


	a'4 cis4 a4. a8
	gis8 gis16 gis16  gis8 gis8 a8 a8 a4
	a4 cis4 a4. a8
	gis8 gis16 gis16  gis8  gis8 a2
	gis4 b4 gis2
	a4 cis4 a2
	b4 b4 d4 b4
	b8 r16 b16 b4 r2
	a4 cis4 a2
	b4 d4 b4 b4
	cis2 e4 e4
	e1


}

bOne = \relative c {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	r2 cis4 e4
	e8 e16 e16 e8 e8 e8 cis8 cis4
	r2 cis4 e4
	e8 e16 e16 e8 d8 cis2
	e4 e4 e2
	a4 a4 a2
	a4 a4 fis4 a4
	gis8 r16 gis16 gis4 r8 e8 e8 e8
	e2 cis4 e4
	fis2 d4 fis4
	a2 b4 b4
	cis1

}

bTwo = \relative c {
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	r2 a4 cis4
	e8 e16 e16 e8 e8 a,8 a8 a4
	r2 a4 cis4
	e8 e16 e16 e8 e8 a,2
	r2 r8 e'8 gis8 e8
	a2(a8)
	a,8 cis8 e8
	fis4 dis4 b4 b4
	e8 r16 e16 e4 r8 e,8 fis8 gis8
	a2 a4 cis4
	b2 b4 d4
	e2 e4 e4
	a,1

}


tTwoLyric = \lyricmode {
	He -- lan går! Sjung
	hopp fal -- le -- ral -- la -- la -- la -- lej 

	He -- lan går! Sjung
	hopp fal -- le -- ral -- la -- lej 

	He -- lan går
	He -- lan går
	He -- lan, he --lan,
	går, gu -- tår!
	He -- lan går,
	he -- lan går, gu --
	tår! He -- lan går!
}

bTwoLyric = \lyricmode {
	He -- lan
	går fal -- le -- ral -- la -- la -- la -- lej 
	He -- lan
	går fal -- le -- ral -- la -- lej 

	Ja, he -- lan 
	går! __ Ja, he -- lan,
	he -- lan, he -- lan går, gu -- tår
	Ja, he -- lan går, he -- lan 
	går, he -- lan går
	He -- lan går!

}


%Helan går

\score { % centered <<
	\header {
		title = "Helan går"
		composer = "Julius Wibergh"
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
				\tenorDynamics
			>>
			\new Voice = "tTwo" <<
				\voiceTwo
				\tTwo
			>>
		>>

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
			\new Voice = "b2Dynamics"<<
				\voiceTwo
				\dynamicDown
				\bTwoDynamics
			>>

			\new Voice = "b1Dynamics" <<
				\voiceOne
				\dynamicUp
				\bOneDynamics
			>>
		>>

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
