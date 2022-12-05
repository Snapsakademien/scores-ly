\book{
	\bookOutputName "Angbatssang"
	\score { % centered <<

		\angbatssangHeader

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
	}  % End score
}

%ÅNGBÅTSSÅNG - FARVÄL, FARVÄL

\book{
	\bookOutputName "AngbatssangEnd"
	\score { % centered <<

		\header {
			title = "Ångbåtssång - Farväl, farväl"
			composer = "Otto Lindblad"
		}

		\new ChoirStaff <<
			\new Staff = "tenor" <<
				\global
				\clef "treble_8"
				\new Voice = "system" <<
					\dynamicUp
					\systemEnd
				>>
				\new Voice = "tOne" <<
					\voiceOne
					\tOneEnd
				>>
				\new Voice = "tTwo" <<
					\voiceTwo
					\tTwoEnd
				>>
				\new Lyrics \with {alignAboveContext = "tenor"} {
					\lyricsto "tOne"
					\LyricToneEnd
				}
				\new Lyrics {
					\lyricsto "tTwo"
					\LyricTtwoEnd
				}
			>>
			\new Staff = "bass" <<
				\global
				\clef "bass"
				\new Voice = "system" <<
					\dynamicDown
					\systemEnd
				>>
				\new Voice = "bOne" <<
					\voiceOne
					\bOneEnd
				>>
				\new Voice = "bTwo" <<
					\voiceTwo
					\bTwoEnd
				>>
				\new Lyrics \with {alignAboveContext = "bass"} {
					\lyricsto "bOne"
					\LyricBoneEnd
				}
				\new Lyrics {
					\lyricsto "bTwo"
					\LyricBtwoEnd
				}
			>>
		>>
	}  % End score
}
