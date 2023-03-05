tempoMark = {
	\tempo 4 = 52
}

\score {
	\unfoldRepeats {
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
	}
	\midi {
		\tempoMark
	}
}
\score {
	\unfoldRepeats {
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
	}
	\midi {
		\tempoMark
	}
}
\score {
	\unfoldRepeats {
		\new ChoirStaff <<
			\new Staff <<
				\midiVolumeMax
				\global
				\new Voice = "tTwo" <<
					\tTwo
				>>
			>>
			\new Staff = "staff" <<
				\midiVolumeMin
				\global
				\new Voice = "tOne" <<
					\tOne
				>>
				\new Voice = "tOne" <<
					\bOne
				>>
				\new Voice = "bTwo" <<
					\bTwo
				>>
			>>
		>>
	}
	\midi {
		\tempoMark
	}
}
\score {
	\unfoldRepeats {
		\new ChoirStaff <<
			\new Staff <<
				\midiVolumeMax
				\global
				\new Voice = "bOne" <<
					\bOne
				>>
			>>
			\new Staff = "staff" <<
				\midiVolumeMin
				\global
				\new Voice = "tTwo" <<
					\tTwo
				>>
				\new Voice = "tOne" <<
					\tOne
				>>
				\new Voice = "bTwo" <<
					\bTwo
				>>
			>>
		>>
	}
	\midi {
		\tempoMark
	}
}
\score {
	\unfoldRepeats {
		\new ChoirStaff <<
			\new Staff <<
				\midiVolumeMax
				\global
				\new Voice = "bTwo" <<
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
				\new Voice = "tOne" <<
					\tOne
				>>
			>>
		>>
	}
	\midi {
		\tempoMark
	}
}
