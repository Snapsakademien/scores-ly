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
}

#(set-global-staff-size 17)

global = {
	\key b \minor
	\time 4/4
}

\include "../Include/midiVolume.ly"

%TILL ÖSTERLAND

system = \relative c' {
	\partial 4

	s4\p |
	s2\< s2\> |
	s2\< s4\! s4\mf | \break
	s1 |
	s2. \bar ":|.|:" s4\< |

	s1\f | \break
	s2\> s4\! s4\p |
	s1 |
	s2.

	\bar ":|."
}

tOne = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 4

	fis4^\markup { Andante }

	b4. cis8 d4 cis8. b16
	cis2 fis,4 fis4
	fis'4 e8. e16 d4 d8. b16
	cis2\fermata r4 cis8. cis16

	d4 d4 e4 e4
	fis4.( e8) d4 d8. cis16
	b4 b8. d16 cis4 fis,8. ais16
	b2 r4
}

tTwo = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 4

	fis4

	fis4. ais8 b4 ais8. b16
	ais2 fis4 fis4
	d'4 cis8. cis16 b4 b8. b16
	ais2 r4 a8. a16

	a4 a4 cis4 cis4
	d4.( cis8) b4 b4
	b4 b8. b16 ais4 fis8. fis16
	fis2 r4
}

bOne = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 4

	fis4

	d4. fis8 fis4 e8. d16
	fis2 fis4 fis4
	a4 a8. g16 fis4 fis8. fis16
	fis2 r4 g8. g16

	fis4 a4 a4 a4
	a4.( ais8) b4 g4
	fis4 fis8. fis16 fis4 fis8. e16
	d2 r4
}

bTwo = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 4
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)

	fis4

	d4. cis8 b4 b8. b16
	fis2 fis'4 fis4
	d4 a8. ais16 b4 b8. d16
	fis2\fermata r4 e8. e16

	d4 fis8 d8 g8 e8 cis8 a8
	d4( fis4) g4 e4
	d4 d8. b16 fis'4 fis,8. fis16
	b2 r4
}

bOneLyricOne = \lyricmode {
	\set stanza = #"1."

	Till Ös -- ter -- land vill jag fa -- ra,
	där bor all -- ra -- kä -- res -- tan min,

	bor -- tom berg och dju -- pa da -- lar,
	allt un -- der så grö -- nan en lind.
}

bTwoLyricOne = \lyricmode {
	\repeat unfold 19 { \skip 1 }
	bort -- om berg och dju -- pa
}

bOneLyricTwo = \lyricmode {
	\set stanza = #"2."

	Jag där vill byg -- ga en hyd -- da
	där mar -- ken står stän -- digt så grön

	och där trä -- den ä -- ro pryd -- da
	med blom -- mor som dof -- ta så skönt.
}

bTwoLyricTwo = \lyricmode {
	\repeat unfold 19 { \skip 1 }
	och där trä -- den ä -- ro
}
%TILL ÖSTERLAND

\score { % centered <<

	\header {
		title = "Till Österland"
		composer = "Svensk folkvisa"
		arranger = "Lars Gunnar Hedin"
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
		>>
		\new Staff = "staff" <<
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
			\new Lyrics \with {alignAboveContext = "staff"} {
				\lyricsto "bOne"
				\bOneLyricOne
			}
			\new Lyrics \with {alignAboveContext = "staff"} {
				\lyricsto "bOne"
				\bOneLyricTwo
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\bTwoLyricOne
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\bTwoLyricTwo
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

\include "../Include/midiTillOsterland.ly"
