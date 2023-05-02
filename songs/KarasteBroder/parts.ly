global = {
	\key a \major
	\time 3/4
}

systemUp = \relative c' {
	\override Voice.Rest.staff-position = #0
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
	\override Voice.Rest.staff-position = #0
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
	\override Voice.Rest.staff-position = #0
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
	\override Voice.MultiMeasureRest.staff-position = #2
	\override Voice.Rest.staff-position = #0
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
	\override Voice.MultiMeasureRest.staff-position = #2
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
