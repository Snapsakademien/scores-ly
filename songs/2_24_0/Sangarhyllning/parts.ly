global = {
	\key a \major
}

system = \relative c' {
	\autoBeamOff
	\partial  4
	\override Voice.Rest.staff-position = #0
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
	\override Voice.Rest.staff-position = #0
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
	\override Voice.Rest.staff-position = #0
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
	\override Voice.Rest.staff-position = #0
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
	\override Voice.Rest.staff-position = #0
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
