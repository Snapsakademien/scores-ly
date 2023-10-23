\score { % centered <<

	\norgesFjeldeHeader

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
				\lyricsto "bOne"
				\LyricBoneOne
			}
			\new Lyrics \with {alignAboveContext = "bass"} {
				\lyricsto "bOne"
				\LyricBoneTwo
			}
			\new Lyrics \with {alignAboveContext = "bass"} {
				\lyricsto "bOne"
				\LyricBoneThree
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
}  % End score
