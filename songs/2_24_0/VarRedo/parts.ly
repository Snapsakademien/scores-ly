global = {
	\key a \major
	\time 2/4
}

system = \relative c' {
	\partial 8

}

tOne = \relative c' {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff
	\partial 8

	\repeat volta 2 {
		\set Timing.measureLength = #(ly:make-moment 1/8)
		r8 |
		\set Timing.measureLength = #(ly:make-moment 2/4)
		r8 e8\mf e8 e8 |
		r8 cis8 cis8 cis16 cis16 |
		b8 b8 b8 d8 |
	}
	\alternative{
		{
   		\set Timing.measureLength = #(ly:make-moment 3/8)
			cis4 r8 \bar ":|."
		}{
			\set Timing.measureLength = #(ly:make-moment 2/4)
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
	\override Voice.Rest.staff-position = #0
	\partial 8
	\autoBeamOff

	\repeat volta 2 {
		\set Timing.measureLength = #(ly:make-moment 1/8)
		r8 |
		\set Timing.measureLength = #(ly:make-moment 2/4)
		r8 cis8 cis8 b8 |
		r8 a8 a8 gis16 gis16 |
		fis8 fis8 gis8 gis8 |
	}
	\alternative{
		{
			\set Timing.measureLength = #(ly:make-moment 3/8)
			a4 r8 \bar ":|."
		}{
			\set Timing.measureLength = #(ly:make-moment 2/4)
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
		r8 |
		\set Timing.measureLength = #(ly:make-moment 2/4)
		r8 a8 a8 gis8 |
		r8 fis8 fis8 e16 e16 |
		fis8 fis8 e8 e8 |
	}
	\alternative{
		{
			\set Timing.measureLength = #(ly:make-moment 3/8)
			e4 s8 \bar ":|."
		}{
			\set Timing.measureLength = #(ly:make-moment 2/4)
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
	\override Voice.Rest.staff-position = #0
	\partial 8

	\repeat volta 2 {
		\set Timing.measureLength = #(ly:make-moment 1/8)
		e8\mf |
		\set Timing.measureLength = #(ly:make-moment 2/4)
		a4 a8 e8 |
		fis4 fis8 cis8 |
		d8 d8 e8 e8 |
	}
	\alternative{
		{
			\set Timing.measureLength = #(ly:make-moment 3/8)
			a,4 r8 \bar ":|."
		}{
			\set Timing.measureLength = #(ly:make-moment 2/4)
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
