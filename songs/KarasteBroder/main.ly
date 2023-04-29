% LilyBin
\version "2.18.2"

\header {
	tagline = ##f
}

\paper {
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #6
	print-all-headers = ##t
	print-page-number = ##f
%	ragged-last = ##t
}

#(set-global-staff-size 17)

global = {
	\key a \major
	\time 3/4
}

\include "../../Include/midiVolume.ly"

%KÄRASTE BRÖDER

systemUp = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	s2.\p |
	s2. | \break
	s4 s4\< s4\! |
	s2. |

	s2. | \break
	s2. |
	s2. |
	s2\dim s4\!

	\bar ":|."  \break

	s2.\p |
	s4\mf s4\< s4\! |
	s2.\p | \break
	s4\mf s4\< s4\! |

	s2.\p |
	s4\< s4\> s4\! |
	s2.\f | \break
	s2. |

	\bar ".|:"

	s4\mf s4\< s4\! |
	s4 s4\> s4\! | \break
	s4 s4.\< s8\! |
	s4 s4\> s4 |

	s2\p s8\cresc s8\! | \break
	s2. |
	s2.\f |
	s2.

	\bar ":|."
}

systemDown = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	s2. |
	s2. |
	s2. |
	s2. |

	s2. |
	s2. |
	s2. |
	s2\dim s4\!

	\bar ":|."

	s2.\p |
	s4\mf s4\< s4\! |
	s2.\p |
	s4\mf s4\< s4\! |

	s2.\p |
	s4 s4 s4 |
	s2.\f |
	s2. |

	\bar ".|:"

	s4\mf s4\< s4\! |
	s4 s4\> s4\! |
	s4 s4.\< s8\! |
	s4 s4\> s4 |

	s2\p s8\cresc s8\! |
	s2. |
	s2.\f |
	s2.

	\bar ":|."
}

tOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	a4 a8 a8 a8 a8 |
	a4 a8 b8 a8 b8 |
	cis4 cis8 cis8 cis8 cis8 |
	cis4 cis8 d8 cis8 d8 |

	e4 cis8 d8 e8 fis8 |
	e4 a4 e4 |
	e4 fis8 e8 d8 cis8 |
	cis4( b2)

	\bar ":|."

	b4_\markup { \null \lower #6 \italic {(Con bocca chiusa)}} b8[ b8 b8 b8] |
	b4 b8 cis8 b8 cis8 |
	d4_\markup { \null \lower #6 \italic {(c.b.ch.)}} d8[ d8 d8 d8] |
	d4 d8 e8 d8 e8 |

	fis4_\markup { \null \lower #6 \italic {(c.b.ch.)}} e4 d4 |
	cis8[ d8] e4 d4 |
	cis4 d8 cis8 b8 a8 |
	gis4 fis8 gis8 e4 |

	\bar ".|:"

	e'4 e8 e8 e8 e8 |
	e4^> d8 cis8 d4 |
	d4 d8 d8 d8 d8 |
	d4 cis8 b8 cis4 |

	cis8 e8 a,8 cis8 b8 d8 |
	cis8 e8 a,8 cis8 b8 d8 |
	cis8 e8 cis8 a8 b8 gis8 |
	a2 r4

	\bar ":|."
}

tTwo = \relative c' {
%	\override Voice.Rest #'staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	R2. |
	R2. |
	a4 a8 a8 a8 a8 |
	a4 a8 b8 a8 b8 |

	cis4 a8 b8 cis8 d8 |
	cis4 cis4 cis4 |
	cis4 d8 cis8 b8 a8 |
	a4( gis2)

	\bar ":|."

	gis4 gis8[ gis8 gis8 gis8] |
	gis4 gis8 a8 gis8 a8 |
	b4 b8[ b8 b8 b8] |
	b4 b8 cis8 b8 cis8 |

	d4 cis4 b4 |
	a8[ b8] cis4 b4 |
	cis4 d8 cis8 b8 a8 |
	gis4 fis8 gis8 e4 |

	\bar ".|:"

	cis'4 cis8 cis8 cis8 cis8 |
	cis4 b8 ais8 b4 |
	b4 b8 b8 b8 b8 |
	b4 a8 gis8 a4 |

	a4 a4 gis4 |
	a4 a4 gis4 |
	a8 a8 a8 a8 gis8 gis8 |
	a2 s4

	\bar ":|."
}

bOne = \relative c' {
	\override Voice.MultiMeasureRest #'staff-position = #2
	\override Voice.Rest #'staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	R2. |
	R2. |
	R2. |
	R2. |

	a4 a8 a8 a8 a8 |
	a4 a4 a4 |
	a4 a8 a8 fis8 fis8 |
	e2.

	\bar ":|."

	e2. |
	e4 e8 e8 e8 e8 |
	e2. |
	e4 e8 e8 e8 e8 |

	e4 fis4 gis4 |
	a2 r4 |
	a4 b8 a8 gis8 fis8 |
	e4 dis8 dis8 e4 |

	\bar ".|:"

	a4 a8 a8 a8 a8 |
	fis4 fis8 fis8 fis4 |
	gis4 gis8 gis8 gis8 gis8 |
	e4 e8 e8 e4 |

	e4 e4 e4 |
	e4 e4 e4 |
	e8 e8 e8 e8 e8 e8 |
	a2 r4

	\bar ":|."
}

bTwo = \relative c {
	\override Voice.MultiMeasureRest #'staff-position = #2
%	\override Voice.Rest #'staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	s2. |
	s2. |
	s2. |
	s2. |

	R2. |
	r2 a4 |
	a4 a8 a8 d8 dis8 |
	e2.

	\bar ":|."

	e2. |
	e4 e8 e8 e8 e8 |
	e2. |
	e4 e8 e8 e8 e8 |

	e4 fis4 gis4 |
	a2 s4 |
	a4 b8 a8 gis8 fis8 |
	e4 b8 b8 e4 |

	\bar ".|:"

	a,4 cis8 e8 a8 a,8 |
	b4_> b8 b8 b4 |
	e,4 gis8 b8 e8 e,8 |
	a4 a8 a8 a4 |

	a4 cis4 e4 |
	a,4 cis4 e4 |
	a,8 a8 cis8 cis8 e8 e8 |
	a2 s4

	\bar ":|."
}

tOneLyricOneOne = \lyricmode {
	\override LyricText.self-alignment-X = #CENTER
	\set stanza = #"1."

	Kä -- ras -- te brö -- der, syst -- trar och vän -- ner,
	si fa -- der Berg han skru -- var och spän -- ner
	sträng -- ar -- na på fi -- o -- len
	och strå -- ken han tar i hand.
}

tOneLyricOneTwo = \lyricmode {
	\override LyricText.self-alignment-X = #CENTER
	Ö -- gat är bor -- ta nä -- san är klu -- ven,
	si hur han står och spot -- tar på skru -- ven;
	öl -- kan -- nan står på sto -- len;
	nu knäp -- per han li -- tet grand;
}

tOneLyricTwoOne = \lyricmode {
  \set stanza = #"2."
	Si Jer -- gen Puc -- kel fläk -- tar med hat -- ten,
	pi -- pan i mun, och bränn -- vin som vat -- ten
	dric -- ker han och gör fuk -- ter
	med hu -- vud och hand och fot.
}

tOneLyricTwoTwo = \lyricmode {
%  \set stanza = #"2."
	Guld -- gu -- ler rock med sty -- va duc -- ri -- ner;
	tätt u -- ti nac -- ken hår -- pis -- kan hän -- ger;
	ryg -- gen i hund -- ra buk -- ter,
	och kind -- be -- nen stå som klot.
}

tOneLyricOne = \lyricmode {
	\repeat unfold 34 { \skip 1 }
	\repeat unfold 29 { \skip 1 }
	\repeat unfold 18 { \skip 1 }

	Si på jung -- fru Lo -- na,
	rö -- da band i sko -- na,
}
tOneLyricTwo = \lyricmode {
	\repeat unfold 34 { \skip 1 }
	\repeat unfold 29 { \skip 1 }
	\repeat unfold 18 { \skip 1 }

	he -- la nat -- ten ful -- la.
	Rak i li -- vet, Ul -- la,
}

tTwoLyricOne = \lyricmode {
	\repeat unfold 24 { \skip 1 }
	\repeat unfold 2 { \skip 1 }

	gri -- nar mot so -- len

	\repeat unfold 2 { \skip 1 }

	pi -- nar fi -- o -- len,

	\repeat unfold 6 { \skip 1 }

	han sig för -- vil -- lar, dril -- lar i -- bland.

	Kä -- ras -- te brö -- der, dan -- sa på tå,
	hands -- kar i hand och hat -- tar -- na på.
	Si jung -- fru Lo -- na i
	ny -- a strum -- por him -- mels -- blå.
}

tTwoLyricTwo = \lyricmode {
	\repeat unfold 24 { \skip 1 }
	\repeat unfold 2 { \skip 1 }

	ga -- par på no -- ten

	\repeat unfold 2 { \skip 1 }

	skra -- par med fo -- ten,

	\repeat unfold 6 { \skip 1 }

	pi -- pan han stop -- par, hop -- par e -- mot.

	Kä -- ras -- te syst -- rar, all -- tid hon -- nett,
	brö -- der -- na dan -- sa jämt me -- nu -- ett,
	ge nu hand, håll tak -- ten,
	ge nu hand, håll tak -- ten rätt!
}


%KÄRASTE BRÖDER

\score { % centered <<

	\header {
		title = "Käraste bröder"
		composer = "Carl-Michael Bellman"
		arranger = "Johan Alfred Ahlström"
	}

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
				\dynamicUp
				\systemUp
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
			\tOneLyricOneOne
		}
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricOneTwo
		}
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricTwoOne
		}
		\new Lyrics {
			\lyricsto "tOne"
			\tOneLyricTwoTwo
		}
		\new Lyrics \with {alignAboveContext = "tenor"} {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Lyrics \with {alignAboveContext = "tenor"} {
			\lyricsto "tOne"
			\tOneLyricTwo
		}
		\new Lyrics {
			\lyricsto "tTwo"
			\tTwoLyricOne
		}
		\new Lyrics {
			\lyricsto "tTwo"
			\tTwoLyricTwo
		}
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
				\systemDown
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
	}
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
}  % End score
