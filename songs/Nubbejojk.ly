% LilyBin
\version "2.18.2"

\header {
	tagline = ##f
}

\paper {
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #10
	print-all-headers = ##t
	print-page-number = ##f
%	ragged-last = ##t
	systems-per-page = 4
}

#(set-global-staff-size 17)

global = {
	\key g \major
	\time 4/4
}


%Nubbejojk


tOne = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 2
	e2\fermata
	r1\fermata
	r1
	r1
	d'4 d4 d4 d4
	r4 b4 g4 fis4

	e8 fis8 g8 fis8 e8 fis8 g8 b8
	a1
}

tTwo = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 2
	e2\fermata
	r1\fermata
	r1
	\repeat unfold 2 {g4 e4 g4 e4}
	r4 b'4 g4 fis4

	e8 fis8 g8 fis8 e8 fis8 g8 b8
	d,1
}

bass = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 2
	e2\fermata
	r1\fermata
	\repeat unfold 3 {e4 b4 e4 b4}
	r4 b4 g4 fis4
	
	e'1
	g4 d4 g4 d8 fis8
	e1
}


tOneLyric = \lyricmode {
	Heya
	Höj nu gla -- set
	skål, skål, skål
	
	in i norr -- lands -- skogs -- be -- kläd -- da
	djup,
}

tTwoLyric = \lyricmode {
	Heya
	\repeat unfold 2 {höj nu gla -- set }
	skål, skål, skål


	in i norr -- lands -- skogs -- be -- kläd -- da
	djup,
}

bassLyric = \lyricmode {
	Heya 
	\repeat unfold 3 {höj nu gla -- set}
	skål, skål, skål

	ah
	långt in i norr -- lands
	djup
}


\score { % centered <<

	\header {
		title = "Nubbejojk"
		composer = "Martin Lignell"
	}

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
				\dynamicUp
			>>
			\new Voice = "tOne" <<
				\voiceOne
				\tOne
			>>
			\new Lyrics {
				\lyricsto "tOne"
				\tOneLyric
			}



		>>
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "tTwo" <<
				\voiceTwo
				\tTwo
			>>
			\new Lyrics {
				\lyricsto "tTwo"
				\tTwoLyric
			}
		>>
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
				\dynamicDown
			>>
			\new Voice = "bass" <<
				\voiceOne
				\bass
			>>

			\new Lyrics {
				\lyricsto "bass"
				\bassLyric
			}

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
