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
	systems-per-page = 4
}

#(set-global-staff-size 17)

global = {
	\key e \minor
	\time 4/4
}

\include "../Include/midiVolume.ly"

%NUBBEJOJK

tOne = \relative c' {
	\autoBeamOff

	e2\fermata r2\fermata |

	R1 |
	R1 |
	b4 b4 b4 b4 |
	r4 a4 g4 fis4 |

	e8 fis8 g8 fis8 e8 fis8 g8 a8 |
	b1 |
	e,8 fis8 g8 fis8 e8 fis8 r8 fis8 |
	b4 a4 g4 fis4 |

	b2 b4 b4 |
	c4 c4 c4 r4 |
	r8 b8 r8 b8 r8 b8 r8 b8( |
	g2) r8 g16 g16 g16 g16 g16 g16 |

	r8 b8 r8 b8 b4 b4 |
	r4 c4 b4 a4 |
	g8 a8 b8 a8 g8 a8 b8 c8 |
	d1 |

	g,8 a8 b8 a8 g8 a8 b8 c8 |
	b1 |
	b8 b8 b8 b8 b8 b8 b8 r8 |
	c8 c8 c8 c8 a8 a8 a8 r8 |

	c4 c4 a4 g4 |
	r8 b8 r8 b8 r8 b8 r8 b8( |
	g2) r8 g16 g16 g16 g16 g16 g16 |
	r8 b8 r8 b8 b4 b4 |

	r4 c4 b4 a4 |
	R1 |
	b1 |

	c4 b4 c4 b4 |
	R1 |
	R1 |

	\bar ".|:"

	\repeat volta 2 {
		b4 b4 b4 b4 |
		b4 b4 b4 b8 b8 |
		b4 b4 b4 b4 |
		b4 b4 b4 b8 b8 |

		b2 b4 b4 |
		a4 e4 a4 g8 fis8 |
		e4 e4 e4 e4 |
		R1 |

		b'4 b4 b4 b4 |
	}
	\alternative{
		{
			r4 c4 b4 a4 \bar ":|."
		}
		{
			r4 c4 b4 ais4 |
		}
	}
	d2( cis2 |
	b1)
	\bar "|."
}

tTwo = \relative c' {
	\autoBeamOff

	e,2\fermata r2\fermata |

	R1 |
	g4 d4 g4 d4 |
	g4 d4 g4 d4 |
	r4 a'4 g4 fis4 |

	e8 fis8 g8 fis8 e8 fis8 g8 a8 |
	d,1 |
	e8 fis8 g8 fis8 e8 fis8 r8 fis8 |
	<d b>4 <c e>4 <d g>4 <d fis>4 |

	e8 fis8 g8 fis8 e8 fis8 g8 r8 |
	a8 b8 c8 b8 a8 b8 c8 r8 |
	e,8 fis8 g8 fis8 e8 fis8 g8 <fis a>8 |
	<d b>1 |

	d2 fis2 |
	fis'2. fis,4 |
	e8 fis8 g8 fis8 e8 fis8 g8 a8 |
	b1 |

	e,8 fis8 g8 fis8 e8 fis8 g8 <fis a>8 |
	<d b>1 |
	e8 fis8 g8 fis8 e8 fis8 g8 r8 |
	a8 b8 c8 b8 a8 b8 c8 r8 |

	a4 g4 fis4 g4 |
	e8 fis8 g8 fis8 e8 fis8 g8 <fis a>8 |
	<d b>1 |
	d2 fis2 |

	fis'2. r4 |
	r2 g,2( |
	g1) |

	g'4 fis4 g4 fis4 |
	g4 fis4 g4 fis4 |
	R1 |

	\bar ".|:"

	\repeat volta 2 {
		e4 b4 e4 b4 |
		b4 fis4 b4 fis8 e8 |
		e'4 b4 e4 b4 |
		b4 fis4 b4 fis8 e8 |

		e'4 b4 e4 b4 |
		a4 e4 a4 g8 fis8 |
		R1 |
		g4 g4 b4 b4 |

		d4 d4 fis4 fis4 |
	}
	\alternative{
		{
			r4 e4 d4 cis4 \bar ":|."
		}
		{
			r4 e4 d4 cis4 |
		}
	}
	a1( |
	g1)
	\bar "|."
}

bass = \relative c {
	\autoBeamOff

	e2\fermata r2\fermata |

	e4 b4 e4 b4 |
	e4 b4 e4 b4 |
	e4 b4 e4 b4 |
	r4 a'4 g4 fis4 |

	e1 |
	g4 d4 g4 d8 fis8 |
	e1 |
	r4 a,4 b4 b4 |

	e2 e4 e4 |
	a4 a4 a4 g8 fis8 |
	e4 b4 e4 b4 |
	g'4 d4 r8 g16 g16 g16 g16 g16 g16 |

	b4 b4 b4 b4 |
	r4 a4 g4 fis4 |
	e4 b4 e4 b4 |
	g'4 d4 g4 d8 fis8 |

	e4 b4 e4 b4 |
	g'4 d4 g4 d8 fis8 |
	e8 fis8 g8 fis8 e8 fis8 g8 r8 |
	e8 fis8 g8 fis8 e8 fis8 g8 r8 |

	a4 g4 <fis e'>4 <g d'>4 |
	e4 b4 e4 b4 |
	g'4 d4 r8 g16 g16 g16 g16 g16 g16 |
	b4 b4 b4 b4 |

	r4 a4 g4 fis4 |
	e1~ |
	e1 |

	e4 d4 e4 d4 |
	R1 |
	e4 b4 e4 b4 |

	\bar ".|:"

	\repeat volta 2 {
		e4 b4 e4 b4 |
		g'4 d4 g4 d8 fis8 |
		e4 b4 e4 b4 |
		g'4 d4 g4 d8 fis8 |

		e2 e4 e4 |
		a4 a4 a4 g8 fis8 |
		R1 |
		g4 g4 g4 g4 |

		b4 b4 b4 b4 |
	}
	\alternative{
		{
			r4 a4 g4 fis4 \bar ":|."
		}
		{
			r4 a4 g4 fis4 |
		}
	}
	e1~ |
	e1
	\bar "|."
}


tOneLyric = \lyricmode {
	Heya

	Höj nu gla -- set,
	skål, skål, långt

	in i norr -- lands -- skogs -- be -- kläd -- da	djup,
	norr -- ske -- net för -- gyl -- ler min sup,
	klunk, klunk, klunk,
	klar i glas
	det är dags
	ta, ta, ta, ta ba -- ra -- ba -- ra -- ba -- ra

	Allt jag tål ja, skål, skål,

	se bes -- ka drop -- par stär -- ker snabbt mitt mod!
	Li -- vets vat -- ten por -- lar i mitt blod!
	Norr -- lands him -- mel un -- der-- bar,
	un -- der den jag nub -- ben tar.
	Svep nu nub -- ben,

	ta, ta, ta, ta ba -- ra -- ba -- ra -- ba -- ra
	Al -- ko -- hol ja,
	skål, skål, skål,
	ah
	we -- o, we -- o,

	Höj nu gla -- set, nub -- ben av -- sma -- kas på ka -- la -- set,
	sin -- nen om -- ska -- kas hör skrat -- ten i mör -- ka nat -- ten
	hyl -- lar su -- pen
	töm nu gla -- set
	skål, skål, skål,
	skål, skål, skål, ah _
}

tTwoLyric = \lyricmode {
	Heya

	Höj nu gla -- set, höj nu gla -- set,
	skål, skål, långt

	in i norr -- lands -- skogs -- be -- kläd -- da	djup,
	norr -- ske -- net för -- gyl -- ler min sup,
	klunk, klunk, klunk,
	klar står väts -- kan i mitt glas
	dags att kom -- ma i ex -- tas
	nub - ben spri -- der vär -- me i min  bål.

	Allt jag tål,

	se bes -- ka drop -- par stär -- ker snabbt mitt mod!
	Li -- vets vat -- ten por -- lar i mitt blod!
	Norr -- lands him -- mel un -- der-- bar,
	un -- der den jag nub -- ben tar.
	Svep nu nub -- ben,

	att bränn -- vi -- net sve -- pa är mitt mål!
	Al -- ko -- hol!
	Ah
	we -- o, we -- o,
	Brand -- bil, brand -- bil.

	Höj nu gla -- set, nub -- ben av -- sma -- kas på ka -- la -- set,
	sin -- nen om -- ska -- kas hör hur skrat -- ten i mör -- ka nat -- ten
	öpp -- na stru -- pen,
	töm nu gla -- set
	skål, skål, skål,
	skål, skål, skål, ah _
}

bassLyric = \lyricmode {
	Heya

	Höj nu gla -- set, höj nu gla -- set, höj nu gla -- set,
	skål, skål, långt

  ah långt in i norr -- lands djup
	klunk, klunk, klunk,
	klar i glas
	det är det är dags
	nub -- ben spri -- der vär -- me, ba -- ra -- ba -- ra -- ba -- ra

	Allt jag tål ja, skål, skål,

	se bes -- ka drop -- par stär -- ker snabbt mitt mod!
	Li -- vets vat -- ten por -- lar i mitt blod!
	Norr -- lands him -- mel un -- der-- bar,
	un -- der den jag nub -- ben tar.
	Svep nu nub -- ben.

	Bränn -- vin sve -- pa är mitt, ba -- ra -- ba -- ra -- ba -- ra
	Al -- ko -- hol ja,
	skål, skål, skål,
	ah
	we -- o, we -- o,
	dum dum dum dum

	Höj nu gla -- set, nub -- ben av -- sma -- kas på ka -- la -- set,
	sin -- nen om -- ska -- kas hör skrat -- ten i mör -- ka nat -- ten
	öpp -- na stru -- pen,
	töm nu gla -- set
	skål, skål, skål,
	skål, skål, skål, ah _
}


\score { % centered <<

	\header {
		title = "Nubbejojk"
		composer = "Martin Lignell"
	}

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
				\dynamicUp
			>>
			\new Voice = "tOne" <<
				\tOne
			>>
			\new Lyrics {
				\lyricsto "tOne"
				\tOneLyric
			}



		>>
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "tTwo" <<
				\tTwo
			>>
			\new Lyrics {
				\lyricsto "tTwo"
				\tTwoLyric
			}
		>>
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
				\dynamicDown
			>>
			\new Voice = "bass" <<
				\bass
			>>

			\new Lyrics {
				\lyricsto "bass"
				\bassLyric
			}

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

\include "../Include/midiNubbejojk.ly"
