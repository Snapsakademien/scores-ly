global = {
	\key bes \major
}

system = \relative c' {
	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #3

	s1\f
	s1 | \break
  s1 |
	s1 | \break

	s1\p |
 	s4\< s4\! s4\> s4\! | \break
 	s1  |
 	s1\f | \break

 	s1\mf |
 	s1 | \break
 	s1 |
 	s1 |

 	\bar "|."
}

tOne = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	f8.^\markup { Andante } es16 d8 d8 es8 es8 c8 c8 |
	d8. c16 bes16[ c16] d16[ e16] f8 f8 f4 |
	f8. es16 d8 d8 es8 es8 c8 c8 |
	d8 d8 c8 c8 bes4 r4 |

	f16 g16 a16 bes16 c8 c8 c8 c8 c4 |
	c16 bes16 c16 d16 c16 bes16 c16 d16 c16 bes16 c16 d16 c4 |
	bes16 c16 d16 es16 d8 d8 d8 d8 d4 |
	d16 c16 d16 es16 d16 c16 d16 es16 d16 c16 d16 es16 d4 |


	f8. es16 d8 d8 es8 es8 c8 c8 |
	d8. c16 bes16[ c16] d16[ e16] f8 f8 f4 |
	f8. es16 d8 d8 es8. es16 c8 c8 |
	d8 d8 c8 c8 bes4 r4 |
}

tTwo = \relative c' {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	d8. c16 bes8 bes8 bes8 bes8 a8 a8 |
	bes8. a16 bes8 bes8 a8 f8 a4 |
	d8. c16 bes8 bes8 bes8 bes8 a8 a8 |
	bes8 bes8 a8 a8 bes4 r4 |

	f16 f16 f16 g16 a8 a8 a8 a8 a4 |
	a16 g16 a16 bes16 a16 g16 a16 bes16 a16 g16 a16 bes16 a4 |
	bes16 bes16 bes16 bes16 bes8 bes8 bes8 bes8 bes4 |
	bes16 a16 bes16 c16 bes16 a16 bes16 c16 bes16 a16 bes16 c16 bes4 |

	d8. c16 bes8 bes8 bes8 bes8 a8 a8 |
	bes8. a16 bes8 bes8 a8 f8 a4 |
	d8. c16 bes8 bes8 bes8. bes16 bes8 bes8 |
	bes8 bes8 a8 a8 bes4 r4 |
}

bOne = \relative c {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	f8. f16 f8 f8 g8 g8 f8 f8 |
	f8. es16 d8 bes'8 a8 a8 a4 |
	f8. f16 f8 f8 g8 g8 f8 f8 |
	f8 f8 f8 es8 d4 r4 |

	f16 f16 f16 f16 f8 f8 f8 f8 f4 |
	f8 f8 f8 f8 f8 f8 f4 |
	d16 es16 f16 g16 f8 f8 f8 f8 f4 |
	f8 f8 f8 f8 f8 f8 f4 |

	f8. f16 f8 f8 g8 g8 f8 f8 |
	f8. es16 d8 bes'8 a8 a8 a4 |
	f8. f16 f8 f8 g8. g16 g8 g8 |
	f8 f8 f8 es8 d4 r4 |
}

bTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	bes8. bes16 bes8 bes8 es8 es8 f8 f8 |
	bes,8. bes16 bes8 g8 f8 f8 f4 |
	bes8. bes16 bes8 bes8 es8 es8 f8 f8 |
	bes,16[ c16] d16[ es16] f8 f,8 bes4 r4 |

	f16 f16 f16 f16 f8 f8 f8 f8 f4 |
	f8 f8 f8 f8 f8 f8 f4 |
	bes16 bes16 bes16 bes16 bes8 bes8 bes8 bes8 bes4 |
	bes8 bes8 bes8 bes8 bes8 bes8 bes4 |

	bes8. bes16 bes8 bes8 es8 es8 f8 f8 |
	bes,8. bes16 bes8 g8 f8 f8 f4 |
	bes8. bes16 bes8 bes8 g'8. f16 es8 es8 |
	f8 f8 f,8 f8 bes4 r4 |
}
