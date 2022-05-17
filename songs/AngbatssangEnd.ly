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
	\key es \major
	\time 4/4
}

\include "../Include/midiVolume.ly"

%ÅNGBÅTSSÅNG

system = \relative c' {
	\partial 2.

	s2.\p | s1 | s1 | s4 s2.\f\< |
	s1\! | s1 | s1 |	\bar "|."
}

tOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff
	\partial 2.

  es4^\markup{\italic{ soli ad lib}} f4 fis4 |
	g1~ |
	g4 es8. es16 f4 d8. d16 |
	es4 es4^\markup{\italic{tutti}} f4 fis4 |
	g1~ |
	g4 es8. es16 f4 d8. d16 |
	es2 r2
}

tTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\override TupletBracket.bracket-visibility = ##f
	\omit TupletNumber
	\partial 2.
	\autoBeamOff

  es4 es4 es4 |
	es1~ |
	es4 bes8. bes16 c4 aes8. aes16 |
	g4 es'4 es4 es4 |
	es1~ |
	es4 bes8. bes16 c4 bes8. bes16 |
	bes2 r2
}

bOne = \relative c {
	\override Voice.Rest #'staff-position = #0
	\override TupletBracket.bracket-visibility = ##f
	\omit TupletNumber
	\partial 2.
	\autoBeamOff

  bes'4 c4 c4 |
	bes1~ |
	bes4 g8. g16 aes4 f8. f16 |
	es4 bes'4 c4 c4 |
	bes1~ |
	bes4 g8. g16 aes4 f8. aes16 |
	g2 r2

}

bTwo = \relative c {
	\autoBeamOff
	\partial 2.

  g'4 aes4 a4 |
	bes4 bes4 g4 es4 |
	bes2. bes8. bes16 |
	es4 g4 aes4 a4 |
	bes4 bes4 g4 es4 |
	bes2. bes8. bes16 |
	es2 s2
}

LyricTone = \lyricmode {
	\repeat unfold 103 { \skip 1 }
	Kan -- ske fäl -- ler hon en
	\repeat unfold 27 { \skip 1 }
	så vill jag äls -- ka
}

LyricTtwo = \lyricmode {
	Far -- väl, far -- väl, på den gun -- gan -- de färd,
	far -- väl, far -- väl, på den gun -- gan -- de färd.
}

LyricBone = \lyricmode {

}

LyricBtwo = \lyricmode {
	far -- väl, far -- väl, far -- väl på en färd,
	far -- väl, far -- väl, far -- väl, far -- väl på en färd.
}

%ÅNGBÅTSSÅNG

\score { % centered <<

	\header {
		title = "Ångbåtssång"
		composer = "Otto Lindblad"
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
				\LyricTone
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
				\lyricsto "bOne"
				\LyricBone
			}
			\new Lyrics {
				\lyricsto "bTwo"
				\LyricBtwo
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

\include "../Include/midiAngbatssangEnd.ly"
