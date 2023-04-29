% LilyBin
\version "2.18.2"

\header {
	tagline = ##f
}

\paper {
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #7
	print-all-headers = ##t
	print-page-number = ##f
}

#(set-global-staff-size 17)

global = {
	\time 6/8
	\key as \major
}

\include "../../Include/midiVolume.ly"

%EN SOMMARAFTON

system = \relative c {
	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #4

	\repeat volta 2 {
		s2.\pp
		s2.
		s4. s4.\<
		s4.\> s4.\!

		\break

		s2.
		s4. s4.\cresc
		s4. s4 s8\dim
		s2.
	}

	\bar ":|."
	\break

	\repeat volta 2 {
		s4.\pp s4.\<
		s2.\!
		s2.\p
		s2.

		\break

		s2.
		s4.\cresc s4.\f
		s2.\dim
		s2.\!
	}

	\bar ":|."
}

tOne = \relative c' {
	\autoBeamOff
	\override Rest #'staff-position = #0

	\repeat volta 2 {
		c4^\markup { \bold { Largettho } \italic {Röster på avstånd } } c8 c8[ as8] bes8
		des4 des8 c4 r8
		es4 es8 es8[ des8] f
		c4. bes4 r8

		des4 des8 c8[ f8] es8
		es4 d8 es8[ f8] g8
		g4 f8 es4 d8
		f4. es4 r8
	}
	\repeat volta 2 {
		des8 r8 des8 des8[ c8] f8
		es4. d4.
		des4 bes8 es8[ des8] c8
		c4. bes4 b8

		c4 es8 es8[ des8] f8
		g4 es8 es8[ aes8] g16[ f16]
		es4 c8 es8[ des8] g,8
		bes4. as4 r8
	}
}

tTwo = \relative c' {
	\autoBeamOff
	\override Rest #'staff-position = #0

	\repeat volta 2 {
		aes4 aes8 f4 f8
		g4 g8 aes4 s8
		aes4 a8 bes4 bes8
		aes4. g4 s8

		bes4 bes8 a4 c8
		bes4 bes8 bes4 bes8
		c4 c8 bes4 bes8
		bes4. bes4 s8
	}

	\repeat volta 2 {
		bes8 s8 bes8 aes4 aes8
		aes4. aes4.
		bes4 g8 aes8[ g8] aes8
		aes4. g4 g8

		aes4 a8 bes4 bes8
		des4 des8 c8[ aes8] bes8
		c4 aes8 c8[ bes8] es,8
		g4. aes4 s8
	}
}

bOne = \relative c {
	\autoBeamOff
	\override Rest #'staff-position = #0

	\repeat volta 2 {
		es4 es8 des4 des8
		es4 es8 es4 r8
		es4 f8 f4 f8
		es4. es4 r8

		f4 f8 f4 f8
		f8[ bes8] aes8 g8[ f8] es16[ g16]
		aes4 aes8 g4 f8
		aes4. g4 r8
	}

	\repeat volta 2 {
		g8 r8 g8 aes4 aes8
		aes4. f4.
		g8[ es8] es8 es4 es8
		es4. es4 es8

		es4 ges8 f4 f8
		fes8[ es8] f16[ g16] aes4 aes8
		aes4 aes8 a8[ bes8] des,8
		des4. c4 r8
	}
}

bTwo = \relative c {
	\autoBeamOff
	\override Rest #'staff-position = #0

	\repeat volta 2 {
		aes4 aes8 aes4 aes8
		aes4 aes8 aes4 s8
		c4 c8 bes4 bes8
		es4. es4 s8

		bes4 bes8 c4 a8
		bes4 bes8 es8[ d8] es8
		aes,4 aes8 bes4 bes8
		bes4. es4 s8
	}

	\repeat volta 2 {
		es8 s8 es8 f8[ es8] des8
		c4. ces4.
		bes4 des8 c8[ bes8] aes8
		es'4. es4 des8

		c4 c8 des4 des8
		bes4 bes8 c4 des8
		es8[ e8] f8 bes,4 es8
		aes,4. aes4 s8
	}
}

tOneLyricOne = \lyricmode {
	Ö -- ver sko -- gen, ö -- ver sjön
	du din slö -- ja sän -- ker,
	mil -- da skym -- ning, och till bön
	du den -- na stund oss skän -- ker.

	Dock, vad kval, o hjär -- ta,
	i en stund som den -- na,
	ack, är all fröjd, som män -- skor kän -- na,
	blott en sa -- lig smär -- ta?
}

tOneLyricTwo = \lyricmode {
	Allt är stil -- la, ej ett ljud
	ge -- nom rym -- den svä -- var,
	jor -- den, lik en lyck -- lig brud,
	ack, blott av läng -- tan bä -- var!
}

%VÄRMLANDSVISAN

\score { % centered <<

	\header {
		title = "En sommarafton"
		composer = "A. F. Lindblad"
	}

	\new ChoirStaff <<
		\new Staff <<
			\global
			\clef "treble_8"
			\new Voice <<
				\dynamicUp
				\voiceOne
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
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricTwo
		}
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice <<
				\dynamicDown
				\voiceOne
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
	>>
	\layout {
		\context {
			\Score
			\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)

		}
		\context {
			\Staff
%				\remove "Time_signature_engraver"
		}
	}
}  % End score

\include "../../Include/midiSommarafton.ly"
