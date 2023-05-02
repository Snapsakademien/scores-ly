global = {
  \time 2/4
  \key a \major
}

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
