global = {
	\key a \major
	\time 6/8
}

system = \relative c' {
	\override DynamicLineSpanner.staff-padding = #3


	\repeat volta 2 {
		s2. | s2. | \once \override DynamicText.X-offset = #-2 s2.\mf | \break s2. |
		s2. | s2. | s2. | s2 s8 s8\fermata \bar ":|." \break
	}

	\time 3/4

	s2. | s2. | s2. | s2. |
	s2. | \break s2. | s2. | s2. |
	s2. | s2 s4 \bar "||" \break

	\time 6/8

	s4. s4.\< | s4.\! s4.\> | s2.\! | s2. | \break
	s4. s4.\< | s4.\! s4.\> | s2.\! | s2. | \break
	\once \override DynamicText.X-offset = #-2 s2.\mf | s2. | s2. | s2. | \break
	s2.\f | s2. | s2. | s4 s8\> s4\! s8\fermata \bar "|."
}


tOne = \relative c' {
	\override Voice.Rest.staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	\repeat volta 2 {
		\once \override DynamicText.X-offset = #-4 a8\mf-\markup{Allegretto} a8 a8 a8 a8 a8 |
		a8 b8 cis8 b4 r8 |
		b8 b8 b8 b8 b8 b8 |
		b8 cis8 d8 cis4 r8 |

		cis4 a8 e'4 a,8 |
		gis4 fis8 e4 r8 |
		cis'4 a8 e'4 a,8 |
		gis4 fis8 e4 r8 |
	}

	a4..^\fz-\markup{Maestoso} cis16 b8. d16 |
	cis8. d16 e4 e,4 |
	fis4.. a16 gis8. b16 |
	a8. gis16 a4 e4^\fz |

	a4..-^ cis16 b8. d16 |
	cis8. d16 e4 e,4 |
	fis4.. a16 gis8. b16 |
	a8. gis16 a4 fis'4^\fz |
	e8. d16 cis8. b16 a8. gis16 |
	a4 r4 r4\fermata |

	cis4 a8 d4 b8 |
	e8.[( dis16]) e8 cis4 a8 |
	cis4 a8 d4 b8 |
	e8.[( dis16]) e8 a,4 r8 |

	cis4 a8 d4 b8 |
	e8.[( dis16]) e8 cis4 a8 |
	cis4 a8 d4 b8 |
	e8.[( dis16]) e8 a,4 r8 |

	e'4 e8 fis4 e8 |
	fis4 gis8 a4 e8 |
	e4 e8 e8[( fis8)] d8 |
	cis8([ d8)] b8 a4 r8 |

	e'4 e8 fis4 e8 |
	fis4^\< gis8 a4\! e8 |
	e4 e8 e8[( fis8)] d8 |
	cis8([ d8)] b8 a4 r8 |
}

tTwo = \relative c' {
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff
	\override Voice.Rest.staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	\repeat volta 2 {
		a8 a8 a8 a8 a8 a8 |
		a8 b8 cis8 b4 r8 |
		gis8 gis8 gis8 gis8 gis8 gis8 |
		gis8 a8 b8 a4 r8 |

		a4 a8 a4 a8 |
		gis4 fis8 e4 r8 |
		a4 a8 a4 a8 |
		gis4 fis8 e4 r8 |
	}

	a4.. a16 gis8. gis16 |
	a8. b16 cis4 e,4 |
	fis4.. a16 gis8. b16 |
	a8. gis16 a4 e4 |

	a4.. a16 gis8. gis16 |
	a8. b16 cis4 e,4 |
	fis4.. a16 gis8. b16 |
	a8. gis16 a4 e4 |
	a8. a16 a8. b16 e,8. e16 |
	e4 r4 r4 |

	a4 a8 a4 a8 |
	b4 b8 a4 a8 |
	a4 a8 a4 a8 |
	b4 b8 a4 r8 |

	a4 a8 a4 a8 |
	b4 b8 a4 a8 |
	a4 a8 a4 a8 |
	b4 b8 a4 r8 |

	cis4 cis8 d4 cis8 |
	d4 b8 cis4 cis8 |
	cis4 b8 ais4 b8 |
	a8([ b8)] gis8 a4 r8 |

	cis4 cis8 d4 cis8 |
	d4 b8 cis4 cis8 |
	cis4 b8 ais4 b8 |
	a8([ b8)] gis8 a4 r8 |
}

bOne = \relative c {
	\override Voice.MultiMeasureRest.staff-position = #0
	\override Voice.Rest.staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	\repeat volta 2 {
		R2. |
		R2. |
		e8 e8 e8 e8 e8 e8 |
		e8 e8 e8 e4 r8 |

		e4 e8 e4 e8 |
		e4 dis8 e4 r8 |
		e4 e8 e4 e8 |
		e4 dis8 e4 r8 |
	}

	cis4.. e16 e8. e16 |
	e8. e16 e4 cis4 |
	d4.. fis16 e8. d16 |
	cis8. b16 cis4 e4 |

	cis4.. e16 e8. e16 |
	e8. e16 e4 cis4 |
	d4.. fis16 e8. d16 |
	cis8. b16 cis4 d4 |
	e8. fis16 e8. d16 cis8. b16 |
	cis4 b'4\rest fis4\rest-\fermata |

	e4 cis8 fis4 d8 |
	gis8.[( fis16]) gis8 a8[( e8]) cis8 |
	e4 cis8 fis4 d8 |
	gis8.[( fis16]) gis8 a4 a8\rest |

	e4 cis8 fis4 d8 |
	gis8.[( fis16]) gis8 a8[( e8]) cis8 |
	e4 cis8 fis4 d8 |
	gis8.[( fis16]) gis8 a4 r8 |

	a4 a8 a4 a8 |
	a4 a8 a4 a8 |
	a4 g8 fis4 fis8 |
	e4 e8 a4 e8 |

	a,8[( a'8)] a8 a,8[( a'8)] a8 |
	a,8[( a'8)] a8 a,8[( a'8)] a8 |
	a,8[( a'8)] gis8 fis4 fis8 |
	e4 d8 cis4 r8 |
}

bTwo = \relative c {
	\override Voice.MultiMeasureRest.staff-position = #0
	\override Voice.Rest.staff-position = #0
	\override DynamicLineSpanner.staff-padding = #3
	\autoBeamOff

	\repeat volta 2 {
		R2. |
		R2. |
		e8 e8 e8 e8 e8 e8 |
		e8 e8 e8 a,4 r8 |

		a4 cis8 cis4 cis8 |
		b4 b8 e4 r8 |
		a,4 cis8 cis4 cis8 |
		b4 b8 e4 r8 |
	}

	a,4..\fz a16 e'8. e16 |
	a,8. a16 a4 cis4 |
	d4.. fis16 e8. d16 |
	cis8. b16 cis4 e4\fz |

	a,4..-^ a16 e'8. e16 |
	a,8. a16 a4 cis4 |
	d4.. fis16 e8. d16 |
	cis8. b16 cis4 d4\fz |
	cis8. d16 e4 e,4 |
	a8. a'16 e8. cis16 a4\fermata |

	a4 a8 a4 a8 |
	a4 a8 a4 a8 |
	a4 a8 a4 a8 |
	a4 a8 a8([e'8 cis8]) |

	a4 a8 a4 a8 |
	a4 a8 a4 a8 |
	a4 a8 a4 a8 |
	a4 a8 a4 r8 |

	a'4 a8 a4 a8 |
	a4 a8 a4 a8 |
	a4 g8 fis4 fis8 |
	e4 e8 a4 e8 |

	a,8[(\< a'8)] a8 a,8[( a'8)] a8 |
	a,8[( a'8)] a8 a,8[(\! a'8)] a8 |
	a,8[( a'8)] gis8 fis4 fis8 |
	e4 e,8 a4 r8 |
}
