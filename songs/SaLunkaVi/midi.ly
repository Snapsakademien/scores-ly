tempoMark = {
	\tempo 4 = 72
}

\score {
	\unfoldRepeats
	\new ChoirStaff <<
		\new Staff <<
			\midiVolumeMax
			\global
			\new Voice = "tOne" <<
				\tOne
			>>
		>>
		\new Staff = "staff" <<
			\midiVolumeMax
			\global
			\new Voice = "tTwo" <<
				\tTwo
			>>
			\new Voice = "bOne" <<
				\bOne
			>>
			\new Voice = "bTwo" <<
				\bTwo
			>>
		>>
	>>
	\midi {
		\unfoldRepeats
		\tempoMark
	}
}
\score {
	\unfoldRepeats
	\new ChoirStaff <<
		\new Staff <<
			\midiVolumeMax
			\global
			\new Voice = "tOne" <<
				\tOne
			>>
		>>
		\new Staff = "staff" <<
			\midiVolumeMin
			\global
			\new Voice = "tTwo" <<
				\tTwo
			>>
			\new Voice = "bOne" <<
				\bOne
			>>
			\new Voice = "bTwo" <<
				\bTwo
			>>
		>>
	>>
	\midi {
		\tempoMark
	}
}
\score {
	\unfoldRepeats
	\new ChoirStaff <<
		\new Staff <<
			\midiVolumeMax
			\global
			\new Voice = "tOne" <<
				\tTwo
			>>
		>>
		\new Staff = "staff" <<
			\midiVolumeMin
			\global
			\new Voice = "tTwo" <<
				\tOne
			>>
			\new Voice = "bOne" <<
				\bOne
			>>
			\new Voice = "bTwo" <<
				\bTwo
			>>
		>>
	>>
	\midi {
		\tempoMark
	}
}
\score {
	\unfoldRepeats
	\new ChoirStaff <<
		\new Staff <<
			\midiVolumeMax
			\global
			\new Voice = "tOne" <<
				\bOne
			>>
		>>
		\new Staff = "staff" <<
			\midiVolumeMin
			\global
			\new Voice = "tTwo" <<
				\tTwo
			>>
			\new Voice = "bOne" <<
				\tOne
			>>
			\new Voice = "bTwo" <<
				\bTwo
			>>
		>>
	>>
	\midi {
		\tempoMark
	}
}
\score {
	\unfoldRepeats
	\new ChoirStaff <<
		\new Staff <<
			\midiVolumeMax
			\global
			\new Voice = "tOne" <<
				\bTwo
			>>
		>>
		\new Staff = "staff" <<
			\midiVolumeMin
			\global
			\new Voice = "tTwo" <<
				\tTwo
			>>
			\new Voice = "bOne" <<
				\bOne
			>>
			\new Voice = "bTwo" <<
				\tOne
			>>
		>>
	>>
	\midi {
		\tempoMark
	}
}
