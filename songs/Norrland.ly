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
}

#(set-global-staff-size 17)

global = {
	\time 2/2
	\key es \major
}

\include "../Include/midiVolume.ly"

%NORRLAND

bars = \relative c' {
	\repeat unfold 8 { s1 \noBreak} \break
	\repeat unfold 8 { s1 \noBreak} \break
	\repeat unfold 8 { s1 \noBreak} \break
	\repeat unfold 9 { s1 \noBreak} \break
	\repeat unfold 9 { s1 \noBreak} \break
	\repeat unfold 10 { s1 \noBreak} \break
	\repeat unfold 8 { s1 \noBreak} \break
	\repeat unfold 8 { s1 \noBreak}
}

dynamics = \relative c' {
	\override DynamicLineSpanner.staff-padding = #3

	s1\f | s1 | s1 | s1-\markup{ \italic{ meno } \dynamic f }
	s1 | s1 | s1 | s1 |

	s1\mf | \once \override DynamicTextSpanner.style = #'none \once \crescTextCresc s1\< | s1 | s1 |
	s1\f-\> | s2\! s2\p-\< | s2.\> s4\! | s1 |

	s1\mp | s1 | s1 | s1 |
	\once \override DynamicTextSpanner.style = #'none \once \crescTextCresc s1\< | s1 | s1\f-\> | s2 s2\! |

	\set crescendoText = \markup { \italic { cresc. poco a poco } }

	s1\fp-\> | s2 s2\! | s1\fp-\> | s2 s2\! |
	\once \override DynamicTextSpanner.style = #'none \once \crescTextCresc s1\< | s1 | s1 | s1 | s1\f |

	\set crescendoText = \markup { \italic { cresc. } }

	s1 | s1 | s1 | s1\f |
	s1 | s1 | s1 | s1 | s1 |

	s1 | s1 | s1\mf | \once \override DynamicTextSpanner.style = #'none \once \crescTextCresc s1\< | s1\f |
	s1 | s1 | s1 | s1\< | s1\! |

	s1\f | s1\< | s2\! s2\ff | s1 |
	s1-\markup{ \italic{ meno } \dynamic mf } | s1 | s1 | s1 |

	s1 | s1 | s1\ff | s1 |
	s1\ff-\> | s2 s2\p-\< | s1\> | s1\! |

	\bar "|."
}

tOne = \relative c' {
	\override Voice.Rest #'staff-position = #0

	bes2.^\markup{ Tempo moderato } g4 |
	f4 es4 g4 bes4 |
	g'1 |
	f2 g4 f4 |

	c2 es2 |
	d2. c4 |
	c1~ |
	c2 r2 |

	c2. c4 |
	d4 es4 f4 g4 |
	as1 |
	g2. r4 |

	f1 |
	es2 es4 es4 |
	f2. es4 |
	es2. r4 |

	bes2. g4 |
	c2 c2 |
	bes2. g4 |
	c2 c4 r4 |

	as2.( as4 |
	bes4 c4 des4 f4) |
	as1~ |
	as2 r2 |

	g2.->( f4 |
	c2) c2 |
	g'2.->( f4 |
	c2) c4 r4 |

	c2. d4 |
	d2~ d4 \once \override Voice.Rest #'staff-position = #5 r4 |
	es2. f4 |
	f2~ f4 \once \override Voice.Rest #'staff-position = #5 r4 |

	g2. g4 |
	g2 fis2 g1~ |
	g2 r2 |

	bes,2. g4 |
	f4 es4 g4 bes4 |
	g'1 |
	f2 g4 f4 |

	c1 |
	r4 es4 d4. c8 |
	c1~ |
	c2 r2 |

	c2. c4 |
	d4 es4 f4 g4 |
	as1 |
	g2 g4 f4 |

	es2 es4 r4 |
	g2. f4 |
	f1~|
	f2 r2 |

	bes,2. es,4 |
	es'2. bes4 |
	r2 g'4 g4 |
	g2 f2 |

	c4 c4 es4 es4 |
	d2. c4 |
	c1~ |
	c2 r2 |

	c2. c4 |
	d4( es4 f4) g4 |
	bes2. aes4 |
	g2 f4 r4 |

	g1 |
	es2 es4 es4 |
	f2. es4 |
	es2.\fermata r4
}

tTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0

	bes2. g4 |
	f4 es4 g4 bes4 |
	es1 |
	es2 d4 d4 |

	c2 c2 |
	bes2. aes4 |
	aes1~ |
	aes2 r2 |

	c2. c4 |
	c4 c4 c4 es4 |
	es2( f2) |
	es2. r4 |

	c1 |
	c2 bes4 bes4 |
	d2. bes4 |
	bes2. r4 |

	g2. g4 |
	g2 g2 |
	g2. g4 |
	g2 g4 r4 |

	aes2. aes4 |
	bes4 bes4 bes4 bes4 |
	es1~ |
	es2 r2 |

	d2. d4 |
	c2 c2 |
	es2. d4 |
	as2 g4 r4 |

	c1~ |
	c2( bes4) as4 |
	g2 es'2 |
	es2( d4) c4 |

	bes2. c4 |
	d2 d2 d1~ |
	d2 r2 |

	bes2. g4 |
	f4 es4 g4 bes4 |
	es1 |
	es2 d4 d4 |

	c1 |
	r4 c4 bes4. as8 |
	as1~ |
	as2 r2 |

	c2. c4 |
	c4 c4 c4 es4 |
	es2( f2) |
	es2 c4 c4 |

	c2 c4 r4 |
	es2. es4 |
	d1~|
	d2 r2 |

	bes2. es,4 |
	es'2. bes4 |
	r2 es4 es4 |
	d2 d2 |

	c4 c4 c4 c4 |
	b2. g4 |
	g1~ |
	g2 r2 |

	c2. c4 |
	bes2( d4) des4 |
	des2. c4 |
	e2 f4 r4 |

	es2.( d4) |
	c2 bes4 bes4 |
	d2. bes4 |
	bes2. r4
}

bOne = \relative c' {
	\override Voice.Rest #'staff-position = #0

	bes2. g4 |
	f4 es4 g4 bes4 |
	a1 |
	a2 aes4 aes4 |

	aes2 g2 |
	f2. es4 |
	es1~ |
	es2 r2 |

	aes2. aes4 |
	aes4 aes4 aes4 bes4 |
	c2( bes2) |
	bes2. r4 |

	aes1 |
	g2 g4 g4 |
	aes2. g4 |
	g2. r4 |

	es2. es4 |
	es2 es2 |
	es2. es4 |
	e2 e4 r4 |

	f2. f4 |
	des4 es4 f4 des'4 |
	des2( c2 |
	ces2) r2 |

	bes2. aes4 |
	g2 g2 |
	b2. g4 |
	e2 e4 r4 |

	f1~ |
	f2( g4) f4 |
	es2 aes2~ |
	aes2( bes4) aes4 |

	g2. g4 |
	a2 a2 b1~ |
	b2 r2 |

	bes2. g4 |
	f4 es4 g4 bes4 |
	a1 |
	a2 aes4 aes4 |

	aes1 |
	r4 g4 f4. es8 |
	es1~ |
	es2 r2 |

	aes2. aes4 |
	aes4 aes4 aes4 bes4 |
	c2( bes) |
	bes2 bes4 aes4 |

	g2 g4 r4 |
	a2. a4 |
	bes1~|
	bes2 r2 |

	bes2. es,4 |
	bes'2. g4 |
	r2 a4 a4 |
	aes2 aes2 |

	aes4 aes4 g4 g4 |
	f2. e4 |
	e1~ |
	e2 r2 |

	f2. f4 |
	bes2( aes4) bes4 |
	g2. f4 |
	des'2 c4 r4 |

	b1 |
	g2 g4 g4 |
	aes2. g4 |
	g2. r4
}

bTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\arpeggioBracket

	bes2. g4 |
	f4 es4 g4 bes4 |
	c,1 |
	c2 bes4 bes4 |

	<es aes,>2 c2 |
	g2. aes4 |
	aes1~ |
	aes2 r2 |

	f'2. f4 |
	f4 es4 d4 des4 |
	c2( d2) |
	es2. r4 |

	f1 |
	c2 g4 g4 |
	bes2. es4 |
	es2. r4 |

	es2 d2 |
	c2 c2 |
	es2 des2 |
	c2 c4 r4 |

	des2( c2 |
	bes4 bes4 bes'4 g4) |
	aes1~ |
	aes2 r2 |

	bes2.->( bes,4 |
	es2) es2 |
	g2.->( g,4 |
	c2) bes4 r4 |

	aes1( |
	bes1) |
	c1( |
	d1) |

	es2. es4 |
	d2 d2 |
	g1~ |
	g2 r2 |

	bes2. g4 |
	f4 es4 g4 bes4 |
	c,1 |
	c2 bes4 bes4 |

	<es aes,>1\arpeggio |
	r4 c4 g4. aes8 |
	aes1~ |
	aes2 r2 |

	f'2. f4 |
	f4 es4 d4 des4 |
	c2( d2) |
	es2 aes,4 aes4 |

	c2 c4 r4 |
	f2. f4 |
	bes1~|
	bes2 r2 |

	bes2. es,4 |
	g2. es4 |
	r2 c4 c4 |
	bes2 bes2 |

	<es aes,>4 <es aes,>4 c4 c4 |
	g2. c4 |
	c1~ |
	c2 r2 |

	aes2. aes4 |
	aes'4( g4 f4) es4 |
	e2. f4 |
	bes2 aes4 r4 |

	g1 |
	c,2 g4 g4 |
	bes2. es4 |
	es2.\fermata r4
}

tOneLyric = \lyricmode {

	\repeat unfold 44 { \skip 1 }

	tag, o tag, tag, o tag,
}

tTwoLyric = \lyricmode {
	Vak -- tat av de vi -- ta fjäl -- lar och de mör -- ka fu -- rors krans,
	vi -- lar nu i vå -- rens kväl -- lar Norr -- land i sin fäg -- rings glans.

	Sa -- go -- land, där äl -- ven blän -- ker, sva -- nen glän -- ser i det blå,
	fram -- tids -- land, som skat -- ter skän -- ker,

	tag, o tag, tag, tag o tag vårt löf -- te då:

	Ljus dit upp vi vil -- ja spri -- da, od -- la bygd och bry -- ta mark,
	och vid di -- na äl -- var stri -- da stå som skydds -- vakt, stolt och stark.

	Norr -- land, Norr -- land du skall to -- na rikt i ny -- a släk -- tens sång,

	och i Sve -- riges kun -- ga -- kro -- na pär -- lan var -- der du en gång.
}

bOneLyric = \lyricmode {
}

bTwoLyric = \lyricmode {

	\repeat unfold 44 { \skip 1 }

	tag, tag,
}


%NORRLAND

\score { % centered <<

	\header {
		title = "Norrland"
		composer = "Wilhelm Stenhammar"
		text = "Daniel Fallström"
	}

	\new ChoirStaff <<
		\new Staff = "tenor" <<
			\global
			\clef "treble_8"
			\new Voice = "tOne" <<
				\voiceOne
				\tOne
			>>
			\new Voice <<
				\dynamicUp
				\voiceOne
				\dynamics
			>>
			\new Voice <<
				\bars
			>>
			\new Voice = "tTwo" <<
				\voiceTwo
				\tTwo
			>>
		>>
		\new Lyrics \with { alignAboveContext = "tenor" }  {
			\lyricsto "tOne"
			\tOneLyric
		}
		\new Lyrics  {
			\lyricsto "tTwo"
			\tTwoLyric
		}
		\new Staff = "basses" <<
			\global
			\clef "bass"
			\new Voice = "bOne" <<
				\voiceOne
				\bOne
			>>
			\new Voice = "bTwo" <<
				\voiceTwo
				\bTwo
			>>
			\new Voice <<
				\voiceTwo
				\dynamics
			>>
		>>
		\new Lyrics \with { alignAboveContext = "basses" }  {
			\lyricsto "bOne"
			\bOneLyric
		}
		\new Lyrics  {
			\lyricsto "bTwo"
			\bTwoLyric
		}
	>>
	\layout {
		\context {
			\Score
			\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
%			beatStructure = #'(2 2 2 2)
		}
		\context {
			\Lyrics
			\override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.5
			\override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
		}
	}
}  % End score

\include "../Include/midiDaneLiksom.ly"
