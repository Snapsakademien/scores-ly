global = {
	\key es \major
	\time 3/4
}

system = \relative c' {
%	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #3

	s2. \f |
	s2. |
	s2. |
	s2. |

	s2.\mf | \break
	s2. |
	s2. |
	s2. |

	s2.\> |
	s2.\! |

	\bar ".|:"

	\repeat volta 2 {
		s2. \f | \break
		s2. |
		s2. |
		s2. |

		s2.\mf |
		s2. | \break
		s2 s8 s8\ff |
		s2. |

		s2.\> |
		s2.\! |
	}

	\bar "|."
}

tOne = \relative c {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	es4 es4 es4 |
	bes'4 bes4 bes4 |
	es4 es8 d8 es8 f8 |
	es2 d4 |

	c4 c4 f4 |
	bes,4 bes4 es4 |
	aes,4 aes4 aes4 |
	aes4.( bes8) g4 |

	f4 es4 d4 |
	es2 r4 |

	\repeat volta 2 {
		g'4 g8 f8 g8 aes8 |
		g8 f8 f2 |
		es4 es8 d8 es8 f8 |
		es8 des8 des2 |

		c4 c4 f4 |
		bes,4 bes4 es4 |
		aes,4 aes4 r8 aes8 |
		aes4.( bes8) g4 |

		f4 es4 d4 |
		es2 r4 |
	}
}

tTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	es4 es4 es4 |
	bes'4 bes4 bes4 |
	bes4 bes8 bes8 a8 a8 |
	bes2 bes4 |

	c4 c4 c4 |
	bes4 bes4 bes4 |
	aes4 aes4 aes4 |
	aes4.( bes8) g4 |

	f4 es4 d4 |
	es2 r4 |

	\repeat volta 2 {
		bes'4 bes4 bes4 |
		bes8 bes8 bes8 bes8 bes4 |
		a4 a4 a4 |
		bes8 bes8 bes8 bes8 bes4 |

		c4 c4 c4 |
		bes4 bes4 bes4 |
		aes4 aes4 r8 aes8 |
		aes4.( bes8) g4 |

		f4 es4 d4 |
		es2 r4 |
	}
}

bOne = \relative c {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	es4 es4 es4 |
	f4 f4 f4 |
	g4 g8 g8 f8 f8 |
	f2 f4 |

	aes4 aes4 aes4 |
	g4 g4 g4 |
	f4 f4 f4 |
	f2 es4 |

	f4 g4 aes4 |
	g2 r4 |

	\repeat volta 2 {
		es4 g4 es4 |
		f8 f8 f8 f8 f4 |
		f4 f4 f4 |
		f8 f8 f8 f8 f4 |

		aes4 aes4 aes4 |
		g4 g4 g4 |
		f4 f4 r8 f8 |
		f2 es4 |

		f4 g4 aes4 |
		g2 r4 |
	}
}

bTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest.staff-position = #0

	es4 es4 es4 |
	d4 d4 d4 |
	c4 c8 c8 c8 c8 |
	bes2 bes4 |

	aes4 aes'4 aes4 |
	g4 g4 g4 |
	f4 f4 es4 |
	d2 es4 |

	aes,4 bes4 bes4 |
	es2 r4 |

	\repeat volta 2 {
		es4 es4 es4 |
		d8 d8 d8 d8 d4 |
		c4 c4 c4 |
		bes8 bes8 bes8 bes8 bes4 |

		aes4 aes'4 aes,4 |
		g4 g'4 g,4 |
		f4 f'4 r8 es8 |
		d2 es4 |

		aes,4 bes4 bes4 |
		es2 r4 |
	}
}
