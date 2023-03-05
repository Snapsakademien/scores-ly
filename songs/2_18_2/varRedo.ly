% LilyBin
\version "2.18.2"

\header {
	tagline = ##f
}

\paper {
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #10
	print-all-headers = ##t
	print-page-number = ##f
%	ragged-last = ##t
}

#(set-global-staff-size 17)

global = {
	\key a \major
	\time 2/4
}

\include "../Include/midiVolume.ly"

%VAR REDO

system = \relative c' {
	\partial 8

}

tOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff
	\partial 8

	\repeat volta 2 {
		\set Timing.measureLength = #(ly:make-moment 1/8)
%		\omit Staff.TimeSignature
%		\time 2/4
		r8 |
		\set Timing.measureLength = #(ly:make-moment 2/4)
		r8 e8\mf e8 e8 |
		r8 cis8 cis8 cis16 cis16 |
		b8 b8 b8 d8 |
	}
	\alternative{
		{
   		\set Timing.measureLength = #(ly:make-moment 3/8)
%			\omit Staff.TimeSignature
%			\time 3/8
			cis4 r8 \bar ":|."
		}{
			\set Timing.measureLength = #(ly:make-moment 2/4)
%			\time 2/4
			cis4 r4
		}
	}
	\break
	\repeat volta 2 {
		\bar ".|:"
		cis8 e16 d16 cis8 e8 |
		cis8 e8  cis8 b8 |
		a8 cis16 b16 a8 cis8 |
		a8 cis16 b16 a8 gis8 |

		\break

		cis4-.^\fz e4-. |
		a,4-. cis8-. cis8 |
		b8 fis'8 e8 gis8  |
		a4 r4 \bar ":|."
	}
}

tTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\partial 8
	\autoBeamOff

	\repeat volta 2 {
		\set Timing.measureLength = #(ly:make-moment 1/8)
%		\omit Staff.TimeSignature
%		\time 2/4
		r8 |
		\set Timing.measureLength = #(ly:make-moment 2/4)
		r8 cis8 cis8 b8 |
		r8 a8 a8 gis16 gis16 |
		fis8 fis8 gis8 gis8 |
	}
	\alternative{
		{
			\set Timing.measureLength = #(ly:make-moment 3/8)
%			\omit Staff.TimeSignature
%			\time 3/8
			a4 r8 \bar ":|."
		}{
			\set Timing.measureLength = #(ly:make-moment 2/4)
%			\time 2/4
			a4 r4
		}
	}
	\repeat volta 2 {
		\bar ".|:"
		cis8 e16 d16 cis8 e8 |
		cis8 e8  cis8 b8 |
		a8 cis16 b16 a8 cis8 |
		a8 cis16 b16 a8 gis8 |

		cis4-. b4-. |
		a4-. gis8-. gis8 |
		b8 b8 b8 d8  |
		cis4 r4 \bar ":|."
	}
}

bOne = \relative c' {
	\partial 8
	\autoBeamOff

	\repeat volta 2 {
		\set Timing.measureLength = #(ly:make-moment 1/8)
%		\omit Staff.TimeSignature
%		\time 2/4
		r8 |
		\set Timing.measureLength = #(ly:make-moment 2/4)
		r8 a8 a8 gis8 |
		r8 fis8 fis8 e16 e16 |
		fis8 fis8 e8 e8 |
	}
	\alternative{
		{
			\set Timing.measureLength = #(ly:make-moment 3/8)
%			\omit Staff.TimeSignature
%			\time 3/8
			e4 s8 \bar ":|."
		}{
			\set Timing.measureLength = #(ly:make-moment 2/4)
%			\time 2/4
			e4 s4
		}
	}
	\repeat volta 2 {
		\bar ".|:"
		a8 cis16 b16 a8 cis8 |
		a8 cis8 a8 gis8 |
		fis8 a16 gis16 fis8 a8 |
		fis8 a16 gis16 fis8 e8 |

		a4-. gis4-. |
		fis4-. e8-. e8 |
		fis8 a8 gis8 b8  |
		a4 s4 \bar ":|."
	}
}

bTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0
	\partial 8

	\repeat volta 2 {
		\set Timing.measureLength = #(ly:make-moment 1/8)
%		\omit Staff.TimeSignature
%		\time 2/4
		e8\mf |
		\set Timing.measureLength = #(ly:make-moment 2/4)
		a4 a8 e8 |
		fis4 fis8 cis8 |
		d8 d8 e8 e8 |
	}
	\alternative{
		{
			\set Timing.measureLength = #(ly:make-moment 3/8)
%			\omit Staff.TimeSignature
%			\time 3/8
			a,4 r8 \bar ":|."
		}{
			\set Timing.measureLength = #(ly:make-moment 2/4)
%			\time 2/4
			a4 r4
		}
	}
	\repeat volta 2 {
		\bar ".|:"
		a'8 cis16 b16 a8 cis8 |
		a8 cis8  a8 e8 |
		fis8 a16 gis16 fis8 a8 |
		fis8 a16 gis16 fis8 cis8 |

		a'4-._\fz e4-. |
		fis4-. cis8-. cis8 |
		d8 d8 e8 e8  |
		<e a,>4 r4 \bar ":|."
	}
}

LyricTone = \lyricmode {
}

LyricTtwo = \lyricmode {
	Var re -- do, var re -- do, för nu ska nub -- ben tas. tas.
	Den går i krop -- pen och i  sjä -- len, känns i -- från hjäs -- san lång ner i  hä -- len.
	Kling, klang, kling, klang, nu bör -- jar vårt ka -- las.
}

LyricBone = \lyricmode {

}

LyricBtwo = \lyricmode {
	Var re -- do, var re -- do för nu ska nub -- ben  tas. tas.
}

%VAR REDO

\score { % centered <<

	\header {
		title = "Var redo"
		composer = "Carl-Michael Bellman"
		Arranger =  "J.P. Cronham"
	}

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
				\LyricTone
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
				\LyricBtwo
			}
		>>
	>>
	\layout {
		\context {
			\Score
			\override SpacingSpanner.uniform-stretching = ##t
		}
		\context {
			\Lyrics
			\override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 2) (minimum-distance . 2) (padding . 2))
			\override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
		}
	}
}  % End score

\include "../Include/midiVarRedo.ly"
