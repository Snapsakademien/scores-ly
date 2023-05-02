\score { % centered <<

	\karasteBroderHeader

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
				\dynamicUp
				\systemUp
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
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricOneOne
		}
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricOneTwo
		}
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricTwoOne
		}
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricTwoTwo
		}
		\new Lyrics \with {alignAboveContext = "tenor"} {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Lyrics \with {alignAboveContext = "tenor"} {
			\lyricsto "tOne"
			\tOneLyricTwo
		}
		\new Lyrics {
			\lyricsto "tTwo"
			\tTwoLyricOne
		}
		\new Lyrics {
			\lyricsto "tTwo"
			\tTwoLyricTwo
		}
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
				\systemDown
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
	>>
}  % End score
