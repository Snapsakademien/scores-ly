\book{

	\bookOutputName "NorskaHalvan"
	\score { % centered <<

		\norgesBedsteHeader

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
					\LyricToneOne
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
					\LyricBtwoOne
				}
			>>
		>>
	}  % End score
}
