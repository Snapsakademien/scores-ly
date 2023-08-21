global = {
	\time 2/4
	\key d \minor
}

tOne = \relative c'' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\partial 8

	a,8 |
	d8. e16 f8 g8 |
	a4 cis8 e8 |
	e8[ d8] d8 c8 |
	a4. a8  |

	g4 bes8 a8 |
	f8 f8 a8. g16 |
	e8.[ f16] d4~ |
	d4 r8

	a8 |
	d8. e16 f8 g8 |
	a8 a8 cis8 e8 |
	e8[ d8] d8 c8 |
	a4. a8 |

	g4 bes8 a8 |
	f8 f8 a8. g16 |
	e8.[ f16] d4~ |
	d4 r8

	e8 |
	f4 f8 a8 |
	a8. [ g16] g8 e8 |
	f8.[ e16] f8 d8 |
	e4 r8 a,8 |

	d8. e16 f8 g8 |
	a4 cis8 e8 |
	e8 d8 d8 c8 |
	a4. a8 |

	c4 a8 g8 |
	f8 f8 a8. g16 |
	e8.[ f16] d4~ |
	d4 r8

	\bar "|."
}

dynamics = \relative c {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\partial 8
	\override DynamicLineSpanner.staff-padding = #5

	s8\mf | s2\< | s | s\!\f\dim | s4.\!\p
	s8 | s2 | s4\< s\> | s2\! | s4.
	s8\mf | s2\< | s | s\!\f\dim | s4.\!\p
	s8 | s2 | s4\< s\> | s2\! | s4

	s4\p | s2 | s2 | s2 | s4.

	s8\mf | s2\< | s2 | s2\!\f\dim | s4.\!^\p
	s8\< | s4\fz s4\> | s\! s\p | s2 | s4.
	\bar "|."
}


tTwo = \relative c'' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\partial 8

	a,8 |
	a8. cis16 d8 e8
	f4 g8 g8
	f4 g8 g8
	f4. f8

	g4 e8 e8
	d8 d8 d8. e16
	cis4 a4~ |
	a4 r8

	a8 |
	a8. cis16 d8 e8
	f8 f8 g8 g8
	f4 g8 g8
	f4. f8

	g4 e8 e8
	d8 d8 d8. e16
	cis4 a4~ |
	a4 r8

	c8 |
	c4 c8 f8 |
	f8.[ e16] e8 e8 |
	d4 d8 d8 |
	cis4 r8 a8 |

	a8. cis16 d8 e8 |
	f4 g8 g8 |
	f8 f8 g8 g8 |
	f4. f8 |

	g4 f8 e8 |
	d8 d8 d8. d16 |
	cis4 d4~ |
	d4 r8

	\bar "|."
}

bOne = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\partial 8

	a8 |
	f8. g16 a8 c8 |
	c4 a8 a8 |
	a4 g8 c8 |
	c4. c8 |

	d4 d8 cis8 |
	a8 a8 a8. bes16 |
	a4 f4~ |
	f4 r8

	a8 |
	f8. g16 a8 c8 |
	c8 c8 a8 a8 |
	a4 g8 c8 |
	c4. c8 |

	d4 d8 cis8 |
	a8 a8 a8. bes16 |
	a4 f4~ |
	f4 r8

	g8 |
	a4 a8 c8 |
	c4 c8 bes8 |
	a8.[ g16] a8 a8 |
	a4 r8 a8 |

	f8. g16 a8 c8 |
	c4 a8 a8 |
	a8 bes8 bes8 c8 |
	c4. c8 |

	c4 c8 bes8 |
	a8 a8 bes8. bes16 |
	g4 f4~ |
	f4 r8

		\bar "|."
}

bTwo = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\partial 8

	a8 |
	f8. e16 d8 c8 |
	f4 e8 cis8 |
	d4 e8 e8 |
	f4. f8 |

	bes4 g8 a8 |
	d,8 d8 f8. g16 |
	a4 d,4~ |
	d4 r8

	a'8 |
	f8. e16 d8 c8 |
	f8 f8 e8 cis8 |
	d4 e8 e8 |
	f4. f8 |

	bes4 g8 a8 |
	d,8 d8 f8. g16 |
	a4 d,4~ |
	d4 r8

	c8 |
	f4 f8 f8 |
	c4 c8 cis8 |
	d4 d8 f8 |
	a4 r8 a8 |

	f8. e16 d8 c8 |
	f4 e8 cis8 |
	d8 d8 e8 e8 |
	f4. f8 |

	e4 f8 c8 |
	d8 d8 g,8. g16 |
	a4 d4~ |
	d4 r8

	\bar "|."

}
