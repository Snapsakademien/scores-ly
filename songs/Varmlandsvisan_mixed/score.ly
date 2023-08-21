\score { % centered <<

	\header {
	    poet = \markup \left-column {{
	               {"1:a strofen Anders Fryxell (1795 - 1881)"} \line
	               {"2:a strofen Fredrik August Dahlgren (1816 - 1895)"}}}
	    composer =  \markup \right-column {{
	               {"Från 1822, baserad på en traditionell folkmelodi"} \line
	               {"Arr. för SATB av C. J. Berg, A. W. Larsson, F. Tiger"}}}
	    title = "Ack Värmeland, du sköna"
	    subtitle = "Värmlandsvisan"
	    tagline = \markup { \tiny \italic "Allmän egendom och för fri användning"}
	}

	\new ChoirStaff <<
		\new Staff <<
			\global
			\clef "treble"
			\new Voice = "tOne" <<
				\voiceOne
				\tOne
			>>
			\new Voice = "tTwo" <<
				\voiceTwo
				\tTwo
			>>
		>>
		\new Lyrics  {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Staff = "staff" <<
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
		>>
	>>
}  % End score
