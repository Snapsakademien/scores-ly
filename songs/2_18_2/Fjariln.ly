% LilyBin
\version "2.18.2"

\header {
	tagline = ##f
}

\paper {
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #8
	print-all-headers = ##t
	print-page-number = ##f
%	ragged-last = ##t
}

#(set-global-staff-size 17)

global = {
	\key b \major
}

%FJÄRILN VINGAD SYNS VID HAGA

system = \relative c' {
	\autoBeamOff
	\partial 4
	\override DynamicLineSpanner.staff-padding = #3

	s4
	\repeat unfold 4 { s1 | } \break
	\repeat unfold 4 { s1 | } \break

 s4 s2.\< |
 s2\> s2\! |
 s4 s2.\< |
 s2\> s2\! |

 \break

 \repeat unfold 3 { s1 | }
 s2.

 \bar "|."
}

tOne = \relative c' {
	\autoBeamOff
	\partial 4
	\override Voice.Rest #'staff-position = #0

	b8^\markup { Andante } gis8 |
	fis4 fis4 fis4 fis4 |
	b4 b4 r4 dis8 fis8 |
	e4 e4 e4 fis8[ e8] |
	dis2 r4 b8 gis8 |

	fis4 fis4 fis4 fis4 |
	b4 b2 fis'8 dis8 |
	cis4 cis4 cis8[ b8] cis8[ dis8] |
	b2 r4 fis'8 e8

	dis4 dis4 dis4 gis4 |
	fis4 e4 r4 e8 dis8 |
	cis4 cis4 cis4 fis4 |
	e4( dis4) r4 b8 gis8 |

	fis4 fis4 fis4 fis4 |
	b4 b2 fis'8 dis8 |
	cis4 cis4 cis8[ b8] cis8[ dis8] |
	b2 r4
}

tTwo = \relative c' {
	\autoBeamOff
	\partial 4
	\override Voice.Rest #'staff-position = #0

	b8 gis8 |
	fis4 fis4 fis4 fis4 |
	fis4 fis4 r4 b8 b8 |
	gis4 gis4 ais4 ais4 |
	b2 r4 b8 gis8 |

	fis4 fis4 fis4 fis4 |
	fis4 fis2 b8 b8 |
	cis4 b4 ais8[ gis8] ais4 |
	b2 r4 dis8 cis8

	b4 b4 bis4 bis4 |
	dis4 cis4 r4 gis8 bis8 |
	cis4 b4 ais4 ais4 |
	cis4( b4) r4 b8 gis8 |

	fis4 fis4 fis4 fis4 |
	fis4 fis2 b8 b8 |
	cis4 b4 ais8[ gis8] ais4 |
	fis2 r4
}

bOne = \relative c' {
	\autoBeamOff
	\partial 4
	\override Voice.Rest #'staff-position = #0

	b8 gis8 |
	fis4 fis4 fis4 e4 |
	dis4 dis4 r4 fis8 dis8 |
	e4 e4 fis4 fis4 |
	fis2 r4 b8 gis8 |

	fis4 fis4 fis4 e4 |
	dis4 dis2 fis8 fis8 |
	gis4 g4 fis4 e4 |
	dis2 r4 fis8 fis8

	b4 a4 gis4 gis4 |
	gis4 gis4 r4 e8 fis8 |
	gis4 gis4 fis4 fis4 |
	fis2 r4 b8 gis8 |

	fis4 fis4 fis4 e4 |
	dis4 dis2 dis8 fis8 |
	eis4 cis4 fis4 e4 |
	dis2 r4
}

bTwo = \relative c' {
	\autoBeamOff
	\partial 4
	\override Voice.Rest #'staff-position = #0

	b8 gis8 |
	fis4 e4 dis4 cis4 |
	b4 b4 r4 b8 b8 |
	cis4 cis4 fis,4 fis4 |
	b2 r4 b'8 gis8 |

	fis4 e4 dis4 cis4 |
	b4 b2 dis8 b8 |
	e4 cis4 fis4 fis,4 |
	b2 r4 fis'8 fis8

	b4 a4 gis4 gis,4 |
	bis4 cis4 r4 cis8 dis8 |
	e4 eis4 fis4 fis,4 |
	ais4( b4) r4 b'8 gis8 |

	fis4 e4 dis4 cis4 |
	b4 b2 a8 a8 |
	gis4 g4 fis4 fis4 |
	b2 r4
}

tOneLyricOne = \lyricmode {
	Fjä -- riln vin -- gad syns på Ha -- ga
	mel -- lan dim -- mors frost och dun,
	sig sitt grö -- na skjul till la -- ga
	och i blom -- man sin pau -- lun:

	min -- sta kräk i kärr och sy -- ra
	nyss av so -- lens vär -- ma väckt
	till en ny hög -- tid -- lig y -- ra
	el -- das vid Ze -- fi -- rens fläkt.
}

tOneLyricTwo = \lyricmode {
	Vad gu -- dom -- lig lust att rö -- na
	in -- om en så ljuv -- lig park,
	då man, häl -- sad av sin skö -- na,
	ög -- nas av en mild mo -- nark!

	Var -- je blick, hans ö -- ga skic -- kar,
	loc -- kar tack -- sam -- he -- tens tår;
	rörd och tjust av des -- sa blic -- kar,
	själv den trump -- ne glät -- tig går.
}

%FJÄRILN VINGAD SYNS VID HAGA

\score { % centered <<

	\header {
		title = "FS 64 - Fjäriln vingad"
		composer = "Carl-Michael Bellman"
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
		\new Lyrics  {
			\lyricsto "tOne"
			\tOneLyricTwo
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
