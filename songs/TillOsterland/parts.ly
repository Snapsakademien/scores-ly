global = {
	\key b \minor
	\time 4/4
}

system = \relative c' {
	\partial 4

	s4\p |
	s2\< s2\> |
	s2\< s4\! s4\mf | \break
	s1 |
	s2. \bar ":|.|:" s4\< |

	s1\f | \break
	s2\> s4\! s4\p |
	s1 |
	s2.

	\bar ":|."
}

tOne = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 4

	fis4^\markup { \translate #'(-6 . 3) \bold Andante }

	b4. cis8 d4 cis8. b16
	cis2 fis,4 fis4
	fis'4 e8. e16 d4 d8. b16
	cis2\fermata r4 cis8. cis16

	d4 d4 e4 e4
	fis4.( e8) d4 d8. cis16
	b4 b8. d16 cis4 fis,8. ais16
	b2 r4
}

tTwo = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 4

	fis4

	fis4. ais8 b4 ais8. b16
	ais2 fis4 fis4
	d'4 cis8. cis16 b4 b8. b16
	ais2 r4 a8. a16

	a4 a4 cis4 cis4
	d4.( cis8) b4 b4
	b4 b8. b16 ais4 fis8. fis16
	fis2 r4
}

bOne = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 4

	fis4

	d4. fis8 fis4 e8. d16
	fis2 fis4 fis4
	a4 a8. g16 fis4 fis8. fis16
	fis2 r4 g8. g16

	fis4 a4 a4 a4
	a4.( ais8) b4 g4
	fis4 fis8. fis16 fis4 fis8. e16
	d2 r4
}

bTwo = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 4
	\set beamExceptions = #'()
	\set beatStructure = #'(1 1 1 1)

	fis4

	d4. cis8 b4 b8. b16
	fis2 fis'4 fis4
	d4 a8. ais16 b4 b8. d16
	fis2\fermata r4 e8. e16

	d4 fis8 d8 g8 e8 cis8 a8
	d4( fis4) g4 e4
	d4 d8. b16 fis'4 fis,8. fis16
	b2 r4
}
