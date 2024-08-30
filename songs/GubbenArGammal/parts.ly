global = {
	\key d \major
	\time 3/8
}

system = \relative c' {
	\override DynamicLineSpanner.staff-padding = #3

	s4.\mf | s4. | s4. | s4. | \break
	s4. | s4\< s8\! | s4. | s4. | \break
	s4. | s4. | s4. | s4. | \break
	s8.\< s8.\! | s4. | s4.\> | s4.\! | \break

	s4.\p | s4 s8\< | s8 s8\! s8\> | s4.\! | \break
	s4. | s4. | s4 s8\> | s4.\! | \break
	s4.\p \breathe | s4. \breathe | s4. \breathe | s4. | \break
	s4\cresc \breathe s8 | s4. | s4\f s8\> | s4.\! \bar "|."
}


tOne = \relative c' {
	\override Voice.Rest.staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	d8. cis16 d8 |
	a4 a8 |
	b8. a16 b8 |
	a4 r8 |

	d8. cis16 d8 |
	e4 d8 |
	g4 fis8 |
	fis4 e8 |

	e8. dis16 e8 |
	e8. dis16 e8 |
	a8 e8 e8 |
	e4. |

	d8. cis16 d16 e16 |
	fis8 e8 d8 |
	cis4( b8) |
	a4 r8 |

	fis8 fis8 g8 |
	a8 a8 a8 |
	a8 b8 c8 |
	b4. |

	b8 cis8 d8 |
	e8 fis8 d8 |
	cis4 d8 |
	e4. |

	g8[ fis8] e8 |
	g8[ fis8] e8 |
	e8[ fis8 d8] |
	cis4 r8 |

	b8 cis8 d8 |
	a8 g'8 fis8 |
	fis4( e8) |
	d4 r8 |
}

tTwo = \relative c' {
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	a8. a16 a8 |
	fis4 fis8 |
	g8. fis16 g8 |
	fis4 r8 |

	a8. a16 a8 |
	a4 a8 |
	cis4 d8 |
	d4 cis8 |

	cis8 cis8 cis8 |
	d8 d8 d8 |
	cis8 cis8 cis8 |
	cis4. |

	a8. a16 a16 cis16 |
	d8 cis8 d8 |
	a4( gis8) |
	a4 r8 |

	d,8 d8 e8 |
	fis8 fis8 fis8 |
	fis8 g8 a8 |
	g4. |

	b8 b8 b8 |
	b8 b8 b8 |
	a4 b8 |
	cis4. |

	e8[ d8] cis8 |
	e8[ d8] cis8 |
	cis8[ d8 b8] |
	a4 r8 |

	b8 b8 b8 |
	a8 cis8 d8 |
	d4( cis8) |
	a4 r8 |
}

bOne = \relative c {
	\override Voice.MultiMeasureRest.staff-position = #2
	\override Voice.Rest.staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	fis8. e16 fis8 |
	d4 d8 |
	d8. d16 d8 |
	d4 a'8\rest |

	fis8. e16 fis8 |
	g4 fis8 |
	a4 a8 |
	a4 a8 |

	a8 a8 a8 |
	gis8 gis8 gis8 |
	a8 a8 a8 |
	a4. |

	a8. a16 a16 a16 |
	a8 a8 a8 |
	e4. |
	cis4 r8 |

	d8 d8 d8 |
	d8 d8 d8 |
	d8 d8 d8 |
	g4. |

	g8 g8 g8 |
	e8 e8 e8 |
	e4 e8 |
	e4. |

	R4. |
	R4. |
	R4. |
	R4. |

	g8 g8 g8 |
	fis8 a8 a8 |
	b4( g8) |
	fis4 r8 |
}

bTwo = \relative c {
	\override Voice.MultiMeasureRest.staff-position = #-6
	\override Voice.Rest.staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	d16 d16 d16 d16 d16 d16 |
	d16 d16 d16 d16 d16 d16 |
	d16 d16 d16 d16 d16 d16 |
	d16 d16 d16 d16 d16 d16 |

	d16 d16 d16 d16 d16 d16 |
	cis16 cis16 cis16 cis16 d16 d16 |
	e16 e16 e16e16 d16 d16 |
	a16 a'16 a16 a16 a16 a16 |

	a,16 a16 a16 a16 a16 a16 |
	b16 b16 b16 b16 b16 b16 |
	a16 a16 a16 a16 a16 a16 |
	a16 cis16 e16 a16 gis16 g16 |

	fis16 fis16 fis16 g16 fis16 e16 |
	d8 e8 fis8 |
	e4. |
	a,4 r8 |

	R4. |
	R4. |
	R4. |
	R4. |

	g16 g16 g16 g16 g16 g16 |
	gis16 gis16 gis16 gis16 gis16 gis16 |
	a8 a8 a8 |
	a4 a8 |

	a4( a'8) |
	a,4( a'8) |
	e4. |
	a,4 r8 |

	g'8 g8 g8 |
	fis8 e8 d8 |
	g,4( a8) |
	d4 r8 |
}
