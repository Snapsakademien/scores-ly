\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 17)
#(ly:set-option 'point-and-click #f)
%mobile -s16 -i3.4

italicas=\override LyricText.font-shape = #'italic
rectas=\override LyricText.font-shape = #'upright
ss=\once \set suggestAccidentals = ##t
incipitwidth = 10
mtempo={\tempo 4 = 100}
mtempob={\tempo 4 = 150}

htitle="Pastime with Good Company"
hcomposer="Henry VIII"


\header {
	title="Pastime with Good Company"
%	subtitle="The Kings ballad"
%	subsubtitle=\markup{\null \vspace #2 }
	composer=\markup{\right-column{"Henry VIII of England (1491 - 1547)"}}
%	opus="(-)"
%	poet=\markup{"Munich, B.S." \italic "2 Mus. Pr. 23"} % anonimo
%	Bayerische Staatbibliothek
%	copyright=\markup{
%		\fill-line {"Transcribed and edited by Nancho Alvarez" \typewriter "http://tomasluisdevictoria.org"}
%	}
	tagline=##f
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
	\key f \major 
	\time 2/2  
	}

ambitusV = \with { \consists Ambitus_engraver }
unficta = \unset suggestAccidentals
ficta = \set suggestAccidentals = ##t
incipitLarge = \once \override NoteHead #'font-size = #3

noSlur = \override Slur #'transparent = ##t

singleTime = \once \override Staff.TimeSignature  #'style = #'single-digit
invisibleTime = \once \override Staff.TimeSignature #'break-visibility = #all-invisible 

fourTwoCutTime = {
    \once \override Staff.TimeSignature #'stencil = #ly:text-interface::print
    \once \override Staff.TimeSignature #'text = \markup \musicglyph #"timesig.C22"
    \time 4/2
}
	

% cantus: checked against source
cantusIIa = \relative c'' {
    \fourTwoCutTime
    \key f \major

    \noSlur
    bes\breve | bes\breve | a\breve | f\breve | bes\breve | a\breve |
        f\breve | g\breve |

    \bar ":|."
}

cantusIIb = \relative c'' {
    \fourTwoCutTime
    \key f \major

    \noSlur
    bes1. bes2 | bes1. bes2 | a1. g2 | f1. f2 | bes1. bes2 | a1. g2 |
        f2( g2) \ficta fis1 \unficta | g\breve |

    \bar ":|."
}

cantusIIc = \relative c'' {
    \fourTwoCutTime
    \key f \major

    \noSlur
		bes1. bes2 | bes1. bes2 | a2.( bes4 a2) g | f1. f2 | bes1. bes2 | a1. g2 |
        f( g) \ficta fis4\melisma e fis2\melismaEnd \unficta | g\breve |

    \bar ":|."
}

cantusIId = \relative c'' {
    \fourTwoCutTime
    \key f \major
	\partial 2

    \noSlur
        % vv f2 corrected to g2 (against two g's in lower parts)
    g2 | g1 a | bes1. f2 | g1 a | bes1. bes2 | c2.( bes4 a2) g | f1. f2 |

    g1 a | bes1. bes2 | g1 a | bes1. bes2 | 
        a g \ficta fis4\melisma g a fis!\melismaEnd \unficta | 
        g\breve\fermata

    \bar "|."
}


cantusLyricsIIone = \lyricmode {
    Pas -- time with good com -- pa -- ny
    I love and shall un -- til __ I __ die;

}

cantusLyricsIIoneB = \lyricmode {
    Grudge who lust but none __ de -- ny,
    So god be pleas'd thus love __ will __ I.
}

cantusLyricsIIoneD = \lyricmode {
    For my pas -- tance 
    hunt, sing and dance,
    my heart __ is set.

    All good -- ly sport 
    for my com -- fort,
    who shall __ _ me __ let?
}

cantusLyricsIItwo = \lyricmode {
    Youth must have some dal -- li -- ance
    of good or ill some pas -- - tance;

    Com -- pa -- ny me -- thinks __ then best
    all thoughts and fan -- cies to __ di -- gest.

    for id -- le -- ness 
    is chief mis -- tress
    of vi -- ces all;

    Then who can say 
    but myrth and play  
    is best __ _ of __ all.
}

cantusLyricsIIthree = \lyricmode {
    Com -- pa -- ny with ho -- nes -- ty
    is vir -- tue vi -- ces to __ _ flee.

    Com -- pa -- ny is good __ and ill
    but e -- v'ry man hath his __ free __ will.

    The best en -- sue
    the worst es -- chew
    my mind __ shall be.

    Vir -- tue to use
    vice to re -- fuse
    thus shall I use __ me.
}

cantusLyricsIIoneA = \lyricmode {
    A a a a a a a a    
}

cantusLyricsIIoneO = \lyricmode {
	O o o o o o o o o o o o o o o o
}

tenorIIa = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\fourTwoCutTime
    \key f \major

    \noSlur
    d\breve | d\breve | c\breve | a\breve | d\breve | c\breve |
        a\breve | g\breve |

    \bar ":|."
}

tenorIIb = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\fourTwoCutTime
    \key f \major

    \noSlur
    d1. d2 | d1. d2 | c1. bes2 | a1. a2 | d1. d2 | c1. bes2 |
        a2( bes2) a1 | g\breve |

    \bar ":|."
}

tenorIIc = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\fourTwoCutTime
    \key f \major

    \noSlur
		d1. d2 | d1. d2 | c2.( d4 c2) bes | a1. a2 | d1. d2 | c1. bes2 |
        a( bes) a1 | g\breve |
    \bar ":|."
}

tenorIId = \relative c' {
	\override Voice.Rest #'staff-position = #0
	\fourTwoCutTime
    \key f \major

    \noSlur
	g2 |

	bes1 c | d1. d2 | bes1 c | d1. d2 | c2.( d4 c2) bes |

    a1. f2 | bes1 c | d1. d2 | bes1 c | d1. d2 | c bes a1 | g\breve\fermata

    \bar "|."
}
tenorLyricsIIone = \lyricmode {
    Pas -- time with good com -- pa -- ny
    I love and shall un -- til __ I die;

    Grudge who lust but none __ de -- ny,
    So god be pleas'd thus love __ will I.

    For my pas -- tance 
    hunt, sing and dance,
    my heart __ is set.

    All good -- ly sport 
    for my com -- fort,
    who shall __ _ me let?
    
}

tenorLyricsIItwo = \lyricmode {
    Youth must have some dal -- li -- ance
    of good or ill some pas -- - tance;

    Com -- pa -- ny me -- thinks __ then best
    all thoughts and fan -- cies to __ di -- gest.

    for id -- le -- ness 
    is chief mis -- tress
    of vi -- ces all;

    Then who can say 
    but myrth and play  
    is best __ _ of all.
}

tenorLyricsIIthree = \lyricmode {
    Com -- pa -- ny with ho -- nes -- ty
    is vir -- tue vi -- ces to __ _ flee.

    Com -- pa -- ny is good __ and ill
    but e -- v'ry man hath his __ free will.

    The best en -- sue
    the worst es -- chew
    my mind __ shall be.

    Vir -- tue to use
    vice to re -- fuse
    thus shall I use me.
}

% checked against source
bassusIIa = \relative c' {
	\override Voice.Rest #'staff-position = #0
    \fourTwoCutTime
    \key f \major

    \noSlur
    \ficta
    g\breve | g\breve | f\breve | d\breve | bes\breve | f'\breve | 
        d\breve | g\breve |

    \bar ":|."
}

bassusIIb = \relative c' {
	\override Voice.Rest #'staff-position = #0
    \fourTwoCutTime
    \key f \major

    \noSlur
    \ficta
    g1. g2 | g1. d2 | f1. g2 | d1. d2 | bes1. bes2 | f'1. g2 | 
        d\melisma es\melismaEnd d1 | g\breve |

    \bar ":|."
}

bassusIIc = \relative c' {
	\override Voice.Rest #'staff-position = #0
    \fourTwoCutTime
    \key f \major

    \noSlur
    \ficta
		g1. g2 | g1. d2 | f1. g2 | d1. d2 | bes1. bes2 | f'1. g2 | 
        d\melisma es\melismaEnd d1 | g\breve |
    \bar ":|."
}

bassusIId = \relative c' {
	\override Voice.Rest #'staff-position = #0
    \fourTwoCutTime
    \key f \major

    \noSlur
    \ficta
	g2 |
    es1 c | bes1. bes2 | es1 c | bes1. bes2 | f'1.

    g2 | d1. d2 | es1 c | bes1. bes2 | es1 c | bes1. g'2 | 
        c, es d1 | 
        g\breve\fermata

    \bar "|."
}

bassusLyricsIIone = \lyricmode {
    Pas -- time with good com -- pa -- ny
    I love and shall un -- til I __ die;

    Grudge who lust but none de -- ny,
    So god be pleas'd thus love __ will I.

    For my pas -- tance 
    hunt, sing and dance,
    my heart is set.

    All good -- ly sport 
    for my com -- fort,
    who shall __ _ me let?
    
}

bassusLyricsIItwo = \lyricmode {
    Youth must have some dal -- li -- ance
    of good or ill some pas -- - tance;

    Com -- pa -- ny me -- thinks then best
    all thoughts and fan -- cies to __ di -- gest.

    for id -- le -- ness 
    is chief mis -- tress
    of vi -- ces all;

    Then who can say 
    but myrth and play  
    is best __ _ of all.
}

bassusLyricsIIthree = \lyricmode {
    Com -- pa -- ny with ho -- nes -- ty
    is vir -- tue vi -- ces to __ _ flee.

    Com -- pa -- ny is good and ill
    but e -- v'ry man hath his __ free will.

    The best en -- sue
    the worst es -- chew
    my mind shall be.

    Vir -- tue to use
    vice to re -- fuse
    thus shall I use me.
}

incipitcantus=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Tenor   "
		\override NoteHead.style = #'neomensural
		\override Staff.TimeSignature.style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-c2"
		\key c \major
		\time 2/2
                f'1.
		} 

	\layout { line-width=\incipitwidth indent = 0 }
	}
}

% el último "la" de la invocación está incluido en todas las voces, para coger el tono


incipittenor=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Bassus  "
		\override NoteHead.style = #'neomensural 
		\override Staff.TimeSignature.style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-f4"
		\key c \major
		\time 2/2
                <a d>1.
		} 
	\layout { line-width=\incipitwidth indent=0 }
	}
}

incipitbassus=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Bassus  "
		\override NoteHead.style = #'neomensural
		\override Staff.TimeSignature.style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-f4"
		\key c \major
		\time 2/2
                d2
		} 
	\layout { line-width=\incipitwidth indent = 0 }
	}
}


\score {\transpose g d{
\new ChoirStaff<<

	\new Staff <<\global
	\new Voice="v1" {
		\set Staff.instrumentName= \markup { \huge \circle \number 1 }
		\clef "treble_8"
		\cantusIIa }
	\new Lyrics \lyricsto "v1" {\cantusLyricsIIoneA }
%	\new Lyrics \lyricsto "v1" {\cantusLyricsIItwo }
%	\new Lyrics \lyricsto "v1" {\cantusLyricsIIthree }
	>>

	\new Staff <<\global
%		\set Staff.instrumentName= ""
		\clef "bass"
		\new Voice="v3" {
			\voiceOne
			\tenorIIa }
		\new Voice="v4" {
			\voiceTwo
			\bassusIIa }
	>>
>>

	} % transpose


\layout{ 
	\context {\Lyrics 
		\override VerticalAxisGroup.staff-affinity = #UP
		\override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
			#'((basic-distance . 0) (minimum-distance . 0) (padding . 1))
		\override LyricText.font-size = #1.0
		\override LyricHyphen.minimum-distance = #0.5
	}
	\context {\Score 
		tempoHideNote = ##t
		\override BarNumber.padding = #2 
	}
	\context {\Voice 
%		melismaBusyProperties = #'()
		%autoBeaming = ##f
	}
	\context {\Staff 
                %\RemoveEmptyStaves
                %\override VerticalAxisGroup.remove-first = ##t
		\override VerticalAxisGroup.staff-staff-spacing =
			#'((basic-distance . 11) (minimum-distance . 0) (padding . 1))
		\consists Ambitus_engraver 
		\override LigatureBracket.padding = #1
	}
}

%\midi { \mtempo }

}

\score {\transpose g d{
\new ChoirStaff<<

	\new Staff <<\global
	\new Voice="v1" {
		\set Staff.instrumentName= \markup { \huge \circle \number 2 }
		\clef "treble_8"
		\cantusIIb }
	\new Lyrics \lyricsto "v1" {\cantusLyricsIIoneO }
%	\new Lyrics \lyricsto "v1" {\cantusLyricsIIoneB }
%	\new Lyrics \lyricsto "v1" {\cantusLyricsIIthree }
	>>

	\new Staff <<\global
%		\set Staff.instrumentName= ""
		\clef "bass"
		\new Voice="v3" {
			\voiceOne
			\tenorIIb }
		\new Voice="v4" {
			\voiceTwo
			\bassusIIb }
	>>
>>

	} % transpose


\layout{ 
	\context {\Lyrics 
		\override VerticalAxisGroup.staff-affinity = #UP
		\override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
			#'((basic-distance . 0) (minimum-distance . 0) (padding . 1))
		\override LyricText.font-size = #1.0
		\override LyricHyphen.minimum-distance = #0.5
	}
	\context {\Score 
		tempoHideNote = ##t
		\override BarNumber.padding = #2 
	}
	\context {\Voice 
%		melismaBusyProperties = #'()
		%autoBeaming = ##f
	}
	\context {\Staff 
                %\RemoveEmptyStaves
                %\override VerticalAxisGroup.remove-first = ##t
		\override VerticalAxisGroup.staff-staff-spacing =
			#'((basic-distance . 11) (minimum-distance . 0) (padding . 1))
		\consists Ambitus_engraver 
		\override LigatureBracket.padding = #1
	}
}

%\midi { \mtempo }

}

\score {\transpose g d{
\new ChoirStaff<<

	\new Staff <<\global
	\new Voice="v1" {
		\set Staff.instrumentName= \markup { \huge \circle \number 3 }
		\clef "treble_8"
		\cantusIIc }
	\new Lyrics \lyricsto "v1" {\cantusLyricsIIone }
	\new Lyrics \lyricsto "v1" {\cantusLyricsIIoneB }
%	\new Lyrics \lyricsto "v1" {\cantusLyricsIIthree }
	>>

	\new Staff <<\global
%		\set Staff.instrumentName= "Bassus "
		\clef "bass"
		\new Voice="v3" {
			\voiceOne
			\tenorIIc }
		\new Voice="v4" {
			\voiceTwo
			\bassusIIc }
	>>
>>

	} % transpose


\layout{ 
	\context {\Lyrics 
		\override VerticalAxisGroup.staff-affinity = #UP
		\override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
			#'((basic-distance . 0) (minimum-distance . 0) (padding . 1))
		\override LyricText.font-size = #1.0
		\override LyricHyphen.minimum-distance = #0.5
	}
	\context {\Score 
		tempoHideNote = ##t
		\override BarNumber.padding = #2 
	}
	\context {\Voice 
%		melismaBusyProperties = #'()
		%autoBeaming = ##f
	}
	\context {\Staff 
                %\RemoveEmptyStaves
                %\override VerticalAxisGroup.remove-first = ##t
		\override VerticalAxisGroup.staff-staff-spacing =
			#'((basic-distance . 11) (minimum-distance . 0) (padding . 1))
		\consists Ambitus_engraver 
		\override LigatureBracket.padding = #1
	}
}

%\midi { \mtempo }

}

\score {\transpose g d{
\new ChoirStaff<<

	\new Staff <<\global
	\new Voice="v1" {
		\set Staff.instrumentName= \markup { \huge \circle \number 4 }
		\clef "treble_8"
		\cantusIId }
	\new Lyrics \lyricsto "v1" {\cantusLyricsIIoneD }
%	\new Lyrics \lyricsto "v1" {\cantusLyricsIItwo }
%	\new Lyrics \lyricsto "v1" {\cantusLyricsIIthree }
	>>

	\new Staff <<\global
%		\set Staff.instrumentName= ""
		\clef "bass"
		\new Voice="v3" {
			\voiceOne
			\tenorIId }
		\new Voice="v4" {
			\voiceTwo
			\bassusIId }
	>>
>>

	} % transpose


\layout{ 
	\context {\Lyrics 
		\override VerticalAxisGroup.staff-affinity = #UP
		\override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
			#'((basic-distance . 0) (minimum-distance . 0) (padding . 1))
		\override LyricText.font-size = #1.0
		\override LyricHyphen.minimum-distance = #0.5
	}
	\context {\Score 
		tempoHideNote = ##t
		\override BarNumber.padding = #2 
	}
	\context {\Voice 
%		melismaBusyProperties = #'()
		%autoBeaming = ##f
	}
	\context {\Staff 
                %\RemoveEmptyStaves
                %\override VerticalAxisGroup.remove-first = ##t
		\override VerticalAxisGroup.staff-staff-spacing =
			#'((basic-distance . 11) (minimum-distance . 0) (padding . 1))
		\consists Ambitus_engraver 
		\override LigatureBracket.padding = #1
	}
}

%\midi { \mtempo }

}

%\paper {
%	line-width = 175
%	top-margin = 25
%	bottom-margin = 30
%	indent=3.5\cm
%	system-system-spacing.padding = #4
%	evenHeaderMarkup=\markup  \fill-line { \fromproperty #'page:page-number-string \htitle \hcomposer }
%	oddHeaderMarkup= \markup  \fill-line { \on-the-fly #not-first-page \hcomposer \on-the-fly #not-first-page \htitle %\on-the-fly #not-first-page \fromproperty #'page:page-number-string }
%	print-all-headers = ##t
%	print-page-number = ##f
%}


\paper{
	print-page-number = ##f
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #4
%	evenHeaderMarkup=\markup  \fill-line { \fromproperty #'page:page-number-string \htitle \hcomposer }
%	oddHeaderMarkup= \markup  \fill-line { \on-the-fly #not-first-page \hcomposer \on-the-fly #not-first-page \htitle %\on-the-fly #not-first-page \fromproperty #'page:page-number-string }
	%system-count=20
	%page-count = 8
	ragged-last-bottom = ##f
	indent=1.0\cm
%	system-system-spacing =
%	#'((basic-distance . 20) (minimum-distance . 0) (padding . 5))
%	top-system-spacing = % header
%	#'((basic-distance . 3) (minimum-distance . 0) (padding . 0))
%	last-bottom-spacing = % footer
%	#'((basic-distance . 12) (minimum-distance . 0) (padding . 0))
}
