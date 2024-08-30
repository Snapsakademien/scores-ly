\gutarBadNattOchDagHeader

\introText

\score { % centered <<

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
		\new Lyrics \with {alignAboveContext = "tenor"} {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Lyrics  {
			\lyricsto "tTwo"
			\tTwoLyricOne
		}
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
		>>
		\new Lyrics \with {alignAboveContext = "bass"} {
			\lyricsto "bOne"
			\bOneLyricOne
		}
		\new Lyrics  {
			\lyricsto "bTwo"
			\bTwoLyricOne
		}
	>>
}  % End score

\middleText

\score { % centered <<
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
		\new Lyrics \with {alignAboveContext = "tenor"} {
			\lyricsto "tOne"
			\tOneLyricTwo
		}
		\new Lyrics  {
			\lyricsto "tTwo"
			\tTwoLyricTwo
		}
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
		>>
		\new Lyrics \with {alignAboveContext = "bass"} {
			\lyricsto "bOne"
			\bOneLyricTwo
		}
		\new Lyrics  {
			\lyricsto "bTwo"
			\bTwoLyricTwo
		}
	>>
}  % End score
