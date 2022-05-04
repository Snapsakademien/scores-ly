% LilyBin
\version "2.18.2"

\header {
	tagline = ##f
}

\paper {
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #4
	print-all-headers = ##t
	print-page-number = ##f
	ragged-last = ##f
}

#(set-global-staff-size 17)

global = {
	\key a \major
}

\include "../Include/midiVolume.ly"

%SÅNGARHYLLNING

system = \relative c' {
	\autoBeamOff
	\partial  4
	\override Voice.Rest #'staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3

	s4\f \bar ".|:"
	\repeat volta 2 {
		s1 |
		s1 |
	  s1 |
	}
	\alternative {
		{
			s1 \bar ":|."
		}{
			s2. \bar "|."
		}
	}
 	\bar "|."
}

tOne = \relative c' {
	\autoBeamOff
	\partial  4
	\override Voice.Rest #'staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3

	e,4 \bar ".|:"
	\repeat volta 2 {
		a4. e8 a4 b4 |
		cis2. r8. d16 |
		d4. r16 fis16 fis4. r16 a16 |
	}
	\alternative {
		{
			a2 r4 e,4 \bar ":|."
		}{
			a'2  \fermata r4 \bar "|."
		}
	}
	\bar "|."
}

tTwo = \relative c' {
	\autoBeamOff
	\partial  4
	\override Voice.Rest #'staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3

	e,4 \bar ".|:"
	\repeat volta 2 {
		a4. e8 e4 gis4 |
		a2. s8. a16 |
		a4. r16 d16 d4. r16 e16 |
	}
	\alternative {
		{
			e2 r4 e,4 \bar ":|."
		}{
			e'2 r4 \bar "|."
		}
	}
	\bar "|."
}

bOne = \relative c {
	\autoBeamOff
	\partial  4
	\override Voice.Rest #'staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3

	e4 \bar ".|:"
	\repeat volta 2 {
		a4. e8 a4 e4 |
		e2. r8. fis16 |
		fis4. r16 a16 a4. r16 cis16 |
	}
	\alternative {
		{
			cis2 r4 e,4 \bar ":|."
		}{
			cis'2 r4 \bar "|."
		}
	}
	\bar "|."
}

bTwo = \relative c {
	\autoBeamOff
	\partial  4
	\override Voice.Rest #'staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3

	e4 \bar ".|:"
	\repeat volta 2 {
		a4. e8 cis4 b4 |
		a2. s8. d16 |
		d4. r16 d16 d4. r16 a'16 |
	}
	\alternative {
		{
			a2 r4 e4 \bar ":|."
		}{
			a,2 \fermata r4 \bar "|."
		}
	}
	\bar "|."
}

tOneLyricOne = \lyricmode {
	Vår sån -- gar -- hyll -- ning tag!
	Hur -- ra! Hur -- ra! Hur -- ra!
	Vår ra!
}


%SÅNGARHYLLNING

\score { % centered <<

	\header {
		title = "Sångarhyllning"
		composer = "G.W."
%		arranger = "Filip Bengtsson"
	}

	\new ChoirStaff <<
		\new Staff <<
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
		\new Lyrics  {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Staff = "staff" <<
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
	>>
	\layout {
		\context {
			\Score
			\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
		}
		\context {
			\Lyrics
			\override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.5
			\override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
		}
	}
}  % End score

\include "../Include/midiSangarhyllning.ly"
