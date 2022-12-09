global = {
	\time 4/4
	\key f \major
}

bars = \relative c' {
	\partial 2

	s2 \noBreak
	\repeat unfold 5 { s1 \noBreak} \break
	\repeat unfold 6 { s1 \noBreak} \break
	\repeat unfold 5 { s1 \noBreak} \break
	\repeat unfold 2 { s1 \noBreak}
	\time 6/4
	\repeat unfold 2 { s1. \noBreak} \break
	\repeat unfold 3 { s1. \noBreak} \break
	\repeat unfold 1 { s1. \noBreak}
	\time 4/4
	\repeat unfold 3 { s1 \noBreak}
	\bar "|."
}

dynamics = \relative c' {
	\partial 2

	s2\p^\markup{ \translate #'(-6 . 3) \bold {Moderato, ben sostenuto}} |
	s1 | s1 | s1\> | s2\! s2\< | s2.\> s4\! |
	s2. s4\< | s2\! s8 s8\> s4 | s2\! s2\< | s1\! | s1 | s1 |
	s1 | s1 | s1 | s1 | s1 |

	s1 | s1 |
	\time 6/4
	s1. | s1. |
	s1. | s1. | s2. s2.\> |
	s2\! s1\< |
	\time 4/4
	s1\> | s1\! | s1\pp
	\bar "|."
}

tOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\partial 2

	a4 a4 |
	a4.( g8) f4 a4 |
	g4.( f8) g2 |
	a8( g8 f8 a8 g8 f8) g4 |
	a2 a4 g8( a8) |
	bes4( a4 g4) f8( a8) |

	g2~( g8 e8) f8([ g8)] |
	a8( g8 f8 a8 g8 f8 g4) |
	a2 a2 |
	a2. g4 |
	a1~( |
	a2. g4 |

	a8 g8 f8 a8 g8 f8 g4) |
	a1 |
	c2.^\markup{\dynamic p \italic dolce} a8( bes8) |
	c4(^\< d2\!) c4^\> |
	a4\!( c2^\< e4^\> |

	d1\!) |
	d2\mp d4( c8 bes8) |
	\time 6/4
	c4^\<( d2) c4 d8( e8 <f>4) |
	<g>1\ff <f>4( <e>4) |

	<f>4( <e>4) d8( <f>8 <e>2)^\> <d>4 |
	f4^\pp( e4) d4( c4) bes8( a8) bes4 |
	c4 c8 c8 c8([ bes8) a8( c8)] bes8( a8) bes4 |

	c4~ c8 r8 a4( g4) f4( a4)
	\time 4/4
	g2( f2) |
	g1 |
	f1\fermata
}

tTwo = \relative c {
	\override Voice.Rest #'staff-position = #0
	\partial 2

	f4 f4 |
	f4.( e8) d4 f4 |
	e4.( d8) e2 |
	f8( e8 d8 f8~ f8 d8) e4 |
	f2 f4 f4 |
	f2. d8( e8) |

	f4( e4 d8 c8) d8([ e8)] |
	f8( e8 d8 f8~ f8 d8 e4) |
	f2 a2 |
	a2. g4 |
	e4.( f8 e4 d4 |
	c4 d2 e4 |

	f8 e8 d8 f8~ f8 d8 e4) |
	f4 <a>4\mp <a>4 <a>4 |
	<a>8( <g>8 <f>8 <a>8 <g>8 <f>8 <g>4) |
	<a>2 <a>8( <g>8 <f>8 <a>8) |
	<g>8( <f>8 <g>4) <a>2~ |

	<a>4 <g>8( <a>8) <bes>4 <bes>8 <bes>8 |
	<bes>8( <a>8 <g>8 <bes>8) <a>8( <g>8 <a>4) |
	\time 6/4
	<a>4\< <g>8( <a>8) <bes>8([ <a>8) <g>8( <bes>8)] <a>8([ <g>8]) a8\ff( bes8) |
	e1 d4( c4) |

	d4( c4) bes8( d8 c2) bes4 |
	c1\p c2 |
	c1 c2 |

	c4~ c8 r8 a4( g4) f4( a4)
	\time 4/4
	g2( f4 e4) |
	d2. c4 |
	c1
}

bOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\partial 2

	c4 c4 |
	c2 f4 c4 |
	c4.( d8) c2 |
	c4( f8 c8 d4) c4 |
	c2 f4 f4 |
	d2. c4 |

	d4( c4 bes8 a8) bes4 |
	d4.( c8 d4 c4) |
	c2 f2 |
	e4.( f8 e4) d4 |
	c4.( d8 c4 bes4 |
	e4. f8 g8[ a8] bes4 |

	c4 d,8[ c8] d4 c4) |
	c4 <f>4^\mp <f>4 <f>4 |
	<f>8( <e>8 <d>8 <f>8 <e>8 <d>8 <e>4) |
	<f>2 <f>8( <e>8 <d>8 <f>8) |
	<e>8( <d>8 <e>4) <f>2~ |

	<f>4 <e>8( <f>8) <g>4 <g>8 <g>8 |
	<g>8( <f>8 <e>8 <g>8) <f>8( <e>8 <f>4) |
	\time 6/4
	<f>4 <e>8( <f>8) <g>8([ <f>8) <e>8( <g>8)] <f>8([ <e>8)] a8( bes8 |
	c4.) c8 c8([ bes8 a8 c8] bes8 a8) bes4~ |

	bes4 bes8[ bes8] bes8([ a8 g8 bes8] a8 f8 g4 |
	a4) a8^\mf a8 a8([ g8) f8( a8)] g8( f8) g4 |
	a2~( a8[ g8 f8 a8] g8 f8 g4 |

	a4~ a8) r8 f4( e4) d4( e4)
	\time 4/4
	d2( c2) |
	bes1 |
	a1
}

bTwo = \relative c {
	\partial 2

	f4 f4 |
	f4.( c'8) a4 a4 |
	c4.( d8) c2 |
	f,8( c'8 d8 a8 bes8 d8) c4 |
	f,2 f'4 e4 |
	d4( c4 bes4) a4 |

	bes4( a4 g8 a8) g4 |
	d4.( a'8 bes8[ d8] c4) |
	f,2 f4( d'4) |
	c4.( d8 c4) bes4 |
	a2.( g4 |
	a4 bes2 c4 |

	f8 c8 d8 a8 bes8 d8 c4) |
	f,1 |
	R1 |
	R1 |
	R1 |

	R1 |
	R1 |
	\time 6/4
	r1\< r4 a8\ff( bes8 |
	c4.) c8 c8([ bes8 a8 c8] bes8 a8) bes4~ |

	bes4 bes8 bes8 bes8([ a8 g8\> bes8] a8 f8 g4) |
	<a' a,>4\p( g4) f4( e4) d4 c4 |
	f4( e4 d4 e4) d4( c4) |

	\override Voice.Rest #'staff-position = #0

	f4~ f8 r8 f4( e4) d4( c4)
	\time 4/4
	bes2( a2) |
	g2. c4 |
	<f,>1_\fermata
}

bTwoTwo = \relative c {
	\partial 2

	\repeat unfold 49 {s2}
	f1 f2
	f4~ f8
}
