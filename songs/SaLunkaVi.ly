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
  \time 2/4
  \key a \major
}

\include "includeFiles/midiVolume.ly"

%SÅ LUNKA VI SÅ SMÅNINGOM

tOne = \relative c {
	\autoBeamOff
	\partial 8

	e8 | a a cis cis | e8. d16 cis8
	b | a a b cis | d8. cis16 b8

	e, | a a cis cis | e8. d16 cis8
	b | a a gis gis | a4 s8

	e8 | a a cis cis | e8. d16 cis8
	b | a a b cis | d8. cis16 b8

	e, | a a cis cis | e8. d16 cis8
	b | a a gis gis | a4 s8

	\bar ".|:"

	\repeat volta 2 {
		e'16. e32 | d8 b b gis' | a e e
		e16. e32 | d8 b b gis' | a e e

		e16. e32 | d8^\cresc d16. d32 cis8 cis16. cis32 | b8 b16. b32 a8
		s16 a16^\f | b[ cis] d[ b] a[ gis] fis[ gis] | a8 cis16.^\p cis32 cis8
	}

	\bar ":|."
}

tTwo = \relative c {
	\autoBeamOff
	\partial 8

	e8 | cis cis a' a | cis8. b16 a8
	gis | a a gis a | b8. a16 gis8

	e | e e a a | cis8. b16 a8
	b | a a gis gis | a4 b8\rest

	e,8 | cis cis a' a | cis8. b16 a8
	b | a a gis a | b8. a16 gis8

	e | e e a a | cis8. b16 a8
	b | a a gis gis | a4 b8\rest

	\bar ".|:"

	\repeat volta 2 {
		cis16. cis32 | b8 b b d | cis cis cis
		d16. cis32 | b8 b b d | cis cis cis

		cis16. cis32 | b8 b16. b32 a8 a16. a32 | gis8 gis16. gis32 a8
		b16\rest a16 | fis8. fis16 e8 e | e a16. a32 a8
	}

	\bar ":|."
}

bOne = \relative c {
	\autoBeamOff
	\partial 8

	e8 | a, a e' e | e8. e16 e8
	e | e e e e | e8. e16 e8

	e | cis cis e e | e8. e16 e8
	d | cis cis e e | cis4 r8

	e8 | a, a e' e | e8. e16 e8
	e | e e e e | e8. e16 e8

	e | cis cis e e | e8. e16 e8
	d | cis cis e e | cis4 r8

	\bar ".|:"

	\repeat volta 2 {
		r8 | r8 e16. e32 gis16. gis32 b16. b32 | a8 cis e
		r8 | r8 e,16. e32 gis16. gis32 b16. b32 | a8 cis e

		e,16. e32 | e8 e16. e32 e8 e16. e32 | e8 e16. e32 e8
		s16 e16 | d8. d16 e8 e | cis8 e16. e32 e8
	}

	\bar ":|."
}

bTwo =  \relative c {
	\autoBeamOff
	\partial 8

	e8 | a16 gis fis e d cis b a | a a cis e a e e
	e | cis16. cis32 cis16 cis b b a a | e' e e cis e8

	e | a, a a a | a8. a16 a8
	fis' | fis16. e32 e16 e e d cis b | a a cis e a8

	e8 | a16 gis fis e d cis b a | a a cis e a e e
	e | cis16. cis32 cis16 cis b b a a | e' e e cis e8

	e | a, a a a | a8. a16 a8
	fis' | fis16. e32 e16 e e d cis b | a a cis e a8

	\bar ".|:"

	\repeat volta 2 {
		a16. a32 | gis8 gis e e | a a a
		b16. a32 | gis8 gis e e | a a a

		a,16. a32 | gis8\cresc gis16. gis32 a8 a16. a32 | b8 b16. b32 cis8
		d16\rest cis16\f | d8. d16 e8 e, | a8 a16.\p a32 a8
	}

	\bar ":|."

}

tOneLyricOne = \lyricmode {
	Så lun -- ka vi så små -- ning -- om från Bac -- chi bul -- ler och tu -- mult,
	när dö -- den ro -- par: Gran -- ne, kom, ditt tim -- glas är nu fullt!
	Du gub -- be fäll din kryc -- ka ner och du, du yng -- ling, lyd min lag:
	den skön -- sta nymf som åt dig ler in -- un -- der ar -- men tag,

	Tyc -- ker du att gra -- ven är för djup,
	Nå, väl -- an så ta dig då en sup,
	tag dig sen di -- to en, di -- to två, di -- to tre,
	så dör du nöj -- da -- re, nöj -- da -- re!
}

tOneLyricTwo = \lyricmode {
	Men du, som till din å -- ter -- färd, i -- från det du till bor -- det gick,
	ej klin -- get för din ras -- ka värd, fast -- än han ro -- par: Drick!
	Drick så -- dan gäst från mat och vin, kör ho -- nom med sitt an -- hang ut
	och sen med en o -- vän -- lig min ryck fem -- marn ur hans trut!
}

tOneLyricThree = \lyricmode {
	Säg, är du nöjd, min gran -- ne, säg? Så pri -- sa värl -- den nu till slut!
	Om vi ha en och sam -- ma väg, så följ -- oms åt. Drick ut!
	men först med vi -- net, rött och vitt, för vår vär -- din -- na bu -- gom oss,
	och hal -- kom sen i gra -- ven fritt vid af -- ton -- stjär -- nans bloss!
}

bOneLyricOne = \lyricmode {

	\repeat unfold 60 { \skip 1 }

	Tyc -- ker du att gra -- ven är för djup,
	Nå, väl -- an så ta dig då en sup,
}

bTwoLyricOne = \lyricmode {
	Så lun -- ka vi så små -- ning -- om från Bac -- chi bul -- ler och tu -- mult,
	när dö -- den ro -- par: Gran -- ne, kom, ditt tim -- glas är nu fullt!

	när dö -- den ro -- par: Gran -- ne, kom,
	när dö -- den ro -- par: Gran -- ne, kom, ditt tim -- glas är nu fullt!

	Du gub -- be fäll din kryc -- ka ner och du, du yng -- ling, lyd min lag:
	den skön -- sta nymf som åt dig ler in -- un -- der ar -- men tag,

	den skön -- sta nymf som åt dig ler
	den skön -- sta nymf som åt dig ler in -- un -- der ar -- men tag,

	Tyc -- ker du att gra -- ven är för djup,
	Nå, väl -- an så ta dig då en sup,
}

bTwoLyricTwo = \lyricmode {
	Men du, som till din å -- ter -- färd, i -- från det du till bor -- det gick,
	ej klin -- get för din ras -- ka värd, fast -- än han ro -- par: Drick!

	ej klin -- get för din ras -- ka värd,
	ej klin -- get för din ras -- ka värd, fast -- än han ro -- par: Drick!

	Drick så -- dan gäst från mat och vin, kör ho -- nom med sitt an -- hang ut
	och sen med en o -- vän -- lig min ryck rem -- marn ur hans trut!

	och sen med en o -- vän -- lig min
	och sen med en o -- vän -- lig min ryck rem -- marn ur hans trut!
}

bTwoLyricThree = \lyricmode {
	Säg, är du nöjd, min gran -- ne, säg? Så pri -- sa värl -- den nu till slut!
	Om vi ha en och sam -- ma väg, så följ -- oms åt. Drick ut!

	Om vi ha en och sam -- ma väg,
	Om vi ha en och sam -- ma väg, så följ -- oms åt. Drick ut!

	men först med vi -- net, rött och vitt, för vår vär -- din -- na bu -- gom oss,
	och hal -- kom sen i gra -- ven fritt vid af -- ton -- stjär -- nans bloss!

	och hal -- kom sen i gra -- ven fritt
	och hal -- kom sen i gra -- ven fritt vid af -- ton -- stjär -- nans bloss!
}

\score { % centered <<

	\header {
		title = "Så lunka vi så småningom"
		composer = "C.M. Bellman"
		arranger = "J.P. Cronham"
	}

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

\include "includeFiles/midiSaLunkaVi.ly"
