\score { % centered <<

	\helanHeader

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
}  % End score
