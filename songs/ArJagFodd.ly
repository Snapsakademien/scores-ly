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
%	ragged-last = ##t
}

#(set-global-staff-size 17)

global = {
	\key bes \major
}

\include "includeFiles/midiVolume.ly"

%ÄR JAG FÖDD SÅ VILL JAG LEVA

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
	\override Voice.Rest #'staff-position = #0

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
	\override Voice.Rest #'staff-position = #0

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
	\override Voice.Rest #'staff-position = #0

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
	\override Voice.Rest #'staff-position = #0

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

tOneLyricOne = \lyricmode {
	Är jag född så vill jag le -- va
	och må väl på bäs -- ta vis,
	som en A -- dam med sin E -- va
	u -- ti pa -- ra dis,

	stek -- ta spar -- var u -- ti mun -- nen få,
	dric -- ka nek -- tar, so -- va sött och up -- på ro -- sor gå,
	klap -- pa den mitt hjär -- ta tän -- ker på,
	sjun -- ga vi -- sor, dan -- sa pol -- ska, tum -- la då och då.

	Vid min flas -- ka vill jag som -- na,
	vid min flic -- ka vak -- na opp
	när min hjär -- na bör -- jar dom -- na,
	sak -- tar sig mitt lopp.
}

tOneLyricTwo = \lyricmode {
	Mi -- na da -- gar då för -- svin -- na
	lus -- tigt på vår sor -- ge park.
	Ve -- nus, bliv vår hjärt -- gu -- din -- na
	Bac -- chus, strup -- mo -- nark!

	Snä -- ser nå -- gon mig för fyl -- le -- ri,
	hur för tun -- nor tu -- san han skall all -- tid tor -- stig bli!
	Får jag in -- te Chlo -- ris ta ut -- i,
	ta mig tun -- nor tu -- san, i för -- tre -- ten su -- pa vi!

	Kom, kam -- ra -- ter, låt oss stim -- ma!
	Punsch och bi -- schoff upp i skyn,
	till dess dö -- den med sin dim -- ma
	skym -- mer för vår syn!
}

bTwoLyricOne = \lyricmode {

	\repeat unfold 37 { \skip 1}

	so -- va sött, på ro -- sor gå

	\repeat unfold 9 { \skip 1}

	dan -- sa, tum -- la då och då.
}

bTwoLyricTwo = \lyricmode {

	\repeat unfold 37 { \skip 1}

	han skall all -- tid tor -- stig bli!

	\repeat unfold 9 { \skip 1}

	i för -- tre -- ten su -- pa vi.
}

%ÄR JAG FÖDD SÅ VILL JAG LEVA

\score { % centered <<

	\header {
		title = "FS 16 - Är jag född så vill jag leva"
		composer = "Carl-Michael Bellman"
		arranger = "J P Cronhamn"
	}

	\new ChoirStaff <<
		\new Staff <<
			\global
			\clef "treble_8"
			\new Voice = "system" <<
				\dynamicUp
				\system
			>>
			\new Voice = "tOne" <<
				\voiceOne
				\tOne
			>>
			\new Voice = "tTwo" <<
				\voiceTwo
				\tTwo
			>>
		>>
		\new Lyrics  {
			\lyricsto "tOne"
			\tOneLyricOne
		}
		\new Lyrics  {
			\lyricsto "tOne"
			\tOneLyricTwo
		}
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice = "system" <<
				\dynamicDown
				\system
			>>
			\new Voice = "bOne" <<
				\voiceOne
				\bOne
			>>
			\new Voice = "bTwo" <<
				\voiceTwo
				\bTwo
			>>
		>>
		\new Lyrics  {
			\lyricsto "bTwo"
			\bTwoLyricOne
		}
		\new Lyrics  {
			\lyricsto "bTwo"
			\bTwoLyricTwo
		}
	>>
	\layout {
		\context {
			\Score
			\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
		}
		\context {
			\Lyrics
			\override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.5
			\override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
		}
	}
}  % End score

\include "includeFiles/midiArJagFodd.ly"
