global = {
	\key es \major
	\time 4/4
}

system = \relative c' {

	s2 \tuplet 3/2 {s8 s4\f} s4 |	s1 |	s1 |	s1\ff |	s1 |
	s1\p | s1 |	s1\mf | s1 |
	s4 s2.\p | s1 | s1 | s4 s2.\f\< |
	s1\! | s1 | s1 | s1\f |

	s1 | s1\f | s1 | s1\p |
	s1 | s2\< s2\> | s1\!

	\bar "||"
	\key aes \major

	s1\p | s1 | s1\cresc | s2 s2\> |
	s1\< | s1\> | s4\! s2.\> | s2.\< s4\! |
	s1 | s4 s2.\> | s1\!

	\bar "|."
}

tOne = \relative c' {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff

	r2^\markup{ \translate #'(-6 . 3) {\bold {Allegro moderato}}} \tuplet 3/2 {r8 bes8 bes8} \tuplet 3/2 {c8 bes8 a8} |
	bes4 es8. es16 \tuplet 3/2 {d8 bes8 bes8} \tuplet 3/2 {c8 bes8 a8} |
	bes4 f'8. f16 es4 r4 |
	es4. es8 g,4 a8. a16 |
	bes4 r4 r2\fermata

	g4 aes8. c16 bes4 bes8. bes16 |
	g'8.[ f16] es8. c16 bes4 r4 |
	c4-> c8. bes16 bes4 aes8. c16 |
	f8.[ c16] f8. es16 d4 bes4 |

	r4 es4^\markup{\italic{ soli ad lib}} f4 fis4 |
	g1~ |
	g4 es8. es16 f4 d8. d16 |
	es4 es4^\markup{\italic{tutti}} f4 fis4 |
	g1~ |
	g4 es8. es16 f4 d8. d16 |
	es2^\markup{\italic{\bold{Fine}}} r2

	g4.-> b,8 \tuplet 3/2 {c8 c8 c8} \tuplet 3/2 {d8 d8 d8}
	es4 d4 r2
	g4.-> b,8 \tuplet 3/2 {c8 c8 c8} \tuplet 3/2 {d8 d8 d8}
	es4 d4 r2

	g,4 aes8. c16 bes4 bes8. bes16 |
	g'8.[ f16] es8.[ c16] bes4 r4 |
	c4 e4 f8. aes16 g8. f16 |
	es!4 d8[ f8] es4 r4 |

	es4.^\markup{\italic{soli ad lib}}^\markup{\bold{Poco Lento}} es8 f8  es8 c8 aes8 |
	aes4 g8.[ bes16] des2 |
	des4.-> c8 c4-> bes8 bes8 |
	ces4 bes8[ aes8] c4( bes4) |

	bes4 c8. des16 es4 aes4 |
	g4 f4  es4 des4 |
	c8.[ es16] des8. c16 c4 bes4 |
	es2.^\markup{\italic{tutti}} es4 |

	es4-> des8. c16 des4 bes4 |
	c4 \grace{des16[ c16]} bes8. c16 des4. g,8 |
	aes2. r4
}

tTwo = \relative c' {
	\override Voice.Rest.staff-position = #0
	\override TupletBracket.bracket-visibility = ##f
	\omit TupletNumber
	\autoBeamOff

	r2 \tuplet 3/2 {r8 g8 g8} \tuplet 3/2 {g8 g8 g8} |
	g4 bes8. bes16 \tuplet 3/2 {bes8 bes8 bes8} \tuplet 3/2 {bes8 bes8 bes8} |
	bes4 bes8. bes16 bes4 r4 |
	c4. c8 g4 f8. f16 |
	f4 r4 r2

	es4 f8. aes16 g4 g8. g16 |
	bes8.[ d16] c8. aes16 g4 r4 |
	g4 g8. g16 f4 f8. aes16 |
	c4 c8. c16 bes4 bes4 |

	r4 es4 es4 es4 |
	es1~ |
	es4 bes8. bes16 c4 aes8. aes16 |
	g4 es'4 es4 es4 |
	es1~ |
	es4 bes8. bes16 c4 bes8. bes16 |
	bes2 r2

	g4. g8 \tuplet 3/2 {g8 g8 g8} \tuplet 3/2 {g8 g8 g8}
	c4 b4 r2
	g4. g8 \tuplet 3/2 {g8 g8 g8} \tuplet 3/2 {g8 g8 g8}
	c4 b4 r2

	es,4 f8. aes16 g4 g8. g16 |
	bes8.[ d16] c8.[ aes16] g4 r4 |
	c4 c4 c8. c16 c8. c16 |
	bes4 bes4 bes4 r4 |

	c4. c8 c4 aes8 f8 |
	es4 es8.[ g16] bes2 |
	bes4. aes8 aes4 aes8 aes8 |
	aes4 aes4 aes4( g4) |

	g4 aes8. bes16 c4 es4 |
	des4 c4 bes4 bes4 |
	aes8.[ c16] bes8. aes16 aes4 aes4 |
	aes2. aes4 |

	aes2. aes4 |
	aes4 g8. aes16 g4. des'8 |
	c2. r4
}

bOne = \relative c {
	\override Voice.Rest.staff-position = #0
	\override TupletBracket.bracket-visibility = ##f
	\omit TupletNumber
	\autoBeamOff

	r2 \tuplet 3/2 {r8 es8 es8} \tuplet 3/2 {es8 es8 es8} |
	es4 g8. g16 \tuplet 3/2 {aes8 aes8 aes8} \tuplet 3/2 {aes8 aes8 aes8} |
	aes4 aes8. aes16 g4 r4 |
	g4. g8 es4 es8. es16 |
	d4 f4\rest f2\rest-\fermata

	es4 es8. es16 es4 es8. es16 |
	es4 es8. es16 es4 r4 |
	e4 e8. e16 f4 f4 |
	f4 f8. f16 f4 bes4 |

	r4 bes4 c4 c4 |
	bes1~ |
	bes4 g8. g16 aes4 f8. f16 |
	es4 bes'4 c4 c4 |
	bes1~ |
	bes4 g8. g16 aes4 f8. aes16 |
	g2 r2

	g4. g8 \tuplet 3/2 {g8 g8 g8} \tuplet 3/2 {g8 g8 g8}
	g4 g4 c2\rest
	g4. g8 \tuplet 3/2 {g8 g8 g8} \tuplet 3/2 {g8 g8 g8}
	g4 g4 r2

	es4 es8. es16 es4 es8. es16 |
	es4 es4 es4 r4 |
	aes4 bes4 aes8. c16 bes8. aes16 |
	g4 aes4 g4 r4 |

	es4. es8 es4 es8 es8 |
	es4 es4 es2 |
	es4. es8 f4 f8 f8 |
	f4 f4 es2 |

	es4 es8. es16 es4 c'4 |
	bes4 aes4 g4 g4 |
	f4 g8. f16 f4 f4 |
	es4 c8. des16 es4 ges4 |

	f2. f4 |
	es4 es8. es16 es4. es8 |
	es2. r4
}

bTwo = \relative c {
	\autoBeamOff

	s2 \tuplet 3/2 {\once \override Voice.Rest.staff-position = #0 r8 es8 es8} \tuplet 3/2 {es8 es8 es8} |
	es4 es8. es16 \tuplet 3/2 {f8 f8 f8} \tuplet 3/2 {f8 f8 f8} |
	f4 d8. d16 es4 s4 |
	c4. c8 c4 c8. c16 |
	bes4 bes8. bes16 bes4\fermata r4\fermata

	es4 es8. es16 es4 es8. es16 |
	es4 es8. es16 es4 s4 |
	c4 c8. c16 f,4 f4 |
	aes4 a8. a16 bes4 bes4 |

	s4 g'4 aes4 a4 |
	bes4 bes4 g4 es4 |
	bes2. bes8. bes16 |
	es4 g4 aes4 a4 |
	bes4 bes4 g4 es4 |
	bes2. bes8. bes16 |
	es2 s2

	g4.-> f8 \tuplet 3/2 {es8 es8 es8} \tuplet 3/2 {b8 b8 b8}
	c8.[ fis,16] g8. g'16 g4 r4
	g4.-> f8 \tuplet 3/2 {es8 es8 es8} \tuplet 3/2 {b8 b8 b8}
	c4 g4 s2

	es'4 es8. es16 es4 es8. es16 |
	es4 aes,8.[ c16] es4 s4 |
	aes4 g4 f8. f,16 g8. aes16 |
	bes4 bes4 es4 s4 |

	aes,4. aes8 aes4 c8 c8 |
	des4 des8.[ bes16] g2 |
	g4.-> aes8 des4-> des8 des8 |
	d4 d4 es2 |

	des!4 c8. bes16 aes4 es'4 |
	es4 es4 es4 e4 |
	f4 e8. f16 des4 des4 |
	c4 aes8. bes16 c4 c4 |

	des2. d4 |
	es4 es8. es16 bes4. es8 |
	aes,2._\markup{\italic{D.C. al Fine}} r4
}

systemEnd = \relative c' {
	\partial 2.

	s2.\p | s1 | s1 | s4 s2.\f\< |
	s1\! | s1 | s1 |	\bar "|."
}


tOneEnd = \relative c' {
	\override Voice.Rest.staff-position = #0
	\autoBeamOff
	\partial 2.

  es4^\markup{\italic{ soli ad lib}} f4 fis4 |
	g1~ |
	g4 es8. es16 f4 d8. d16 |
	es4 es4^\markup{\italic{tutti}} f4 fis4 |
	g1~ |
	g4 es8. es16 f4 d8. d16 |
	es2 r2
}

tTwoEnd = \relative c' {
	\override Voice.Rest.staff-position = #0
	\override TupletBracket.bracket-visibility = ##f
	\omit TupletNumber
	\partial 2.
	\autoBeamOff

  es4 es4 es4 |
	es1~ |
	es4 bes8. bes16 c4 aes8. aes16 |
	g4 es'4 es4 es4 |
	es1~ |
	es4 bes8. bes16 c4 bes8. bes16 |
	bes2 r2
}

bOneEnd = \relative c {
	\override Voice.Rest.staff-position = #0
	\override TupletBracket.bracket-visibility = ##f
	\omit TupletNumber
	\partial 2.
	\autoBeamOff

  bes'4 c4 c4 |
	bes1~ |
	bes4 g8. g16 aes4 f8. f16 |
	es4 bes'4 c4 c4 |
	bes1~ |
	bes4 g8. g16 aes4 f8. aes16 |
	g2 r2

}

bTwoEnd = \relative c {
	\autoBeamOff
	\partial 2.

  g'4 aes4 a4 |
	bes4 bes4 g4 es4 |
	bes2. bes8. bes16 |
	es4 g4 aes4 a4 |
	bes4 bes4 g4 es4 |
	bes2. bes8. bes16 |
	es2 s2
}
