global = {
	\key b \minor
	\time 3/4
}

system = \relative c' {

	s2. | s2. | s2. | s2. |
	s2. | s2. | s2. | s2. \bar "||"
	s2. | s2. | s2. | s2. |
	s2. | s2. | s2. | s2. \bar "|."
}

tOne = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	b4 b8. cis16 b8. cis16 |
	d4 d8. e16 d8. e16 |
	fis4 fis8. e16 cis8. d16 |
	b4 b8. ais16 fis4 |

	b4 b8. cis16 b8. cis16 |
	d4 d8. e16 d8. e16 |
	fis4 fis8. e16 cis8. d16 |
	b4 b8. b16 b4 |

	fis'4 fis8. d16 a'8. fis16 |
	e4 e8. d16 cis4 |
	d4 d8. b16 fis'8. d16 |
	cis4 cis8. ais16 fis4 |

	b4 b8. cis16 b8. cis16 |
	d4 d8. e16 d8. e16 |
	fis4 fis8. e16 cis8. d16 |
	b2 r4 \bar "|."
}

tTwo = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	fis,4 fis8. fis16 fis8. fis16 |
	b4 b8. b16 b8. b16 |
	d4 cis8. cis16 cis8. fis,16 |
	fis4 fis8. fis16 fis4 |

	fis4 fis8. fis16 fis8. fis16 |
	b4 b8. b16 b8. b16 |
	d4 b8. b16 ais8. ais16 |
	b4 b8. b16 b4 |

	d4 d8. d16 d8. d16 |
	cis4 cis8. b16 a8[ g8] |
	fis4 b8. b16 b8. b16 |
	ais4 ais8. fis16 fis4 |

	fis4 fis8. fis16 fis8. fis16 |
	b4 b8. b16 b8. b16 |
	d4 b8. b16 ais8. ais16 |
	b2 r4 \bar "|."
}

bOne = \relative c {
	\override Voice.Rest #'staff-position = #0
	\autoBeamOff

	d4 d8. e16 d8. e16 |
	fis4 fis8. g16 fis8. g16 |
	fis4 g8. g16 e8. e16 |
	d4 d8. cis16 ais4 |

	d4 d8. e16 d8. e16 |
	fis4 fis8. g16 fis8. g16 |
	fis4 g8. g16 e8. fis16 |
	d4 d8. d16 d4 |

	a'4 a8. fis16 a8. a16 |
	a4 e8. e16 e8[ g8] |
	fis4 fis8. d16 fis8. fis16 |
	fis4 fis8. fis16 fis8[ e8] |

	d4 d8. e16 d8. e16 |
	fis4 fis8. g16 fis8. g16 |
	fis4 g8. g16 e8. fis16 |
	d2 r4 \bar "|."
}

bTwo = \relative c {
	\autoBeamOff
	\override Voice.Rest #'staff-position = #0

	b4 b8. b16 b8. b16 |
	b4 b8. b16 b8. b16 |
	b4 b8. b16 b8. b16 |
	b4 fis8. fis16 fis4 |

	b4 b8. b16 b8. b16 |
	b4 b8. b16 b8. b16 |
	b4 g8. g16 fis8. fis16 |
	b4 b8. b16 b4 |

	d4 d8. d16 fis8. d16 |
	a4 a8. a16 a8[ ais8] |
	b4 b8. b16 d8. b16 |
	fis4 fis'8. e16 d8[ cis8] |

	b4 b8. b16 b8. b16 |
	b4 b8. b16 b8. b16 |
	b4 g8. g16 fis8. fis16 |
	b2 r4 \bar "|."
}
