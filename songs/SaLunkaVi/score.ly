\score { % centered <<

	\saLunkaViHeader

	\new ChoirStaff <<
		\new Staff <<
			\global
			\key a \major
			\clef "treble_8"
			\new Voice = "tOne" <<
				\voiceOne
				\tOne
			>>
			\new Voice = "tTwo" <<
				\voiceTwo
				\tTwo
			>>
		>>
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricThree
		}
		\new Staff = "staff" <<
			\global
			\key a \major
			\clef "bass"
			\new Voice = "bOne" <<
				\voiceOne
				\bOne
			>>
			\new Voice = "bTwo" <<
				\voiceTwo
				\bTwo
			>>
		>>
		\new Lyrics \with { alignAboveContext = "staff" } {
			\lyricsto "bOne"
			\bOneLyricOne
		}
		\new Lyrics {
			\lyricsto "bTwo"
			\bTwoLyricOne
		}
		\new Lyrics {
			\lyricsto "bTwo"
			\bTwoLyricThree
		}
	>>
}  % End score
