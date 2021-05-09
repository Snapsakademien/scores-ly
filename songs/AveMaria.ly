\version "2.18.2"

#(set-default-paper-size "a4")
#(set-global-staff-size 16)
#(ly:set-option 'point-and-click #f)
%mobile -s16 -i3.4

italicas=\override LyricText.font-shape = #'italic
rectas=\override LyricText.font-shape = #'upright
ss=\once \set suggestAccidentals = ##t
incipitwidth = 20
mtempo={\tempo 4 = 100}
mtempob={\tempo 4 = 150}

htitle="Ave Maria"
hcomposer="Victoria (apocryphal)"


\header {
	title="Ave Maria"
%	subtitle="a 4 voces"
%	subsubtitle=\markup{\null \vspace #2 }
	composer=\markup{\right-column{"Attrib. Tomás Luis de Victoria"}}
	%opus="(-)"
%	poet=\markup{"Munich, B.S." \italic "2 Mus. Pr. 23"} % anonimo
        %Bayerische Staatbibliothek
%	copyright=\markup{
%		\fill-line {"Transcribed and edited by Nancho Alvarez" \typewriter "http://tomasluisdevictoria.org"}
%	}
	tagline=##f
}

\score{ \transpose c a,{
<<
        \new Voice="invocacion"  {
        \override Staff.TimeSignature.stencil = #'()
        \override Stem.transparent = ##t
        \set Score.timing = ##f
        \override NoteHead.style = #'neomensural        
        \key c \major \clef "treble_8" f' c' d' \[d' a' bes'\] a'  \bar "|" 
        % en el original está en la parte de soprano
        }
        \new Lyrics \lyricsto "invocacion" \lyricmode{ A -- ve Ma -- ri -- _ _ a}    
>>
        
        }%transpose

\layout {
        \override LigatureBracket.padding = #1
        line-width = 13\cm
        indent = 5.7 \cm
        %tablet indent = 4\cm
        ragged-right = ##f
}
}


%tablet \pageBreak

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global={\key c \major \time 2/2  \skip 1*16 
        \once \override Score.TimeSignature.stencil = ##f
        \time 6/4 \skip 1. \mtempob \time 3/4 \skip 2. \pageBreak
		\skip 1*3/4*12 \time 2/2 \mtempo
		\skip 1*10 \bar "|."
}

cantus={
	a'2 g'4 f' |
	g'2 a' |
	r4 a' g' f' |
	e'2 f'4 a' |
%5
	g' f' e'2 |
	d'4 f' e'8 d'4 cis'8 |
	d'2 \bar ";" r8 e'4 e'8 | %en el original aparece una doble barra extraña
	f'4 e' f'2 |
	R1*4/4 |
%10
	r2 r4 f' |
	e' f'  g'8[ f']  f'[ e'16 d'] |
	e'4 e' f' f' |
	g' a' g' f' |
	e' f' g' f' |
%15
	e' d' r2 |
	e' f'4. e'8 |
	d'4 e'4. d'8 d'2 cis'4
        % parece que pone 3/i
        s4*0^\markup{\larger \musicglyph #"noteheads.sM1mensural" }
	\bar "||"
        d'2 r4 |
	a'4 a' a' |
%20
	c''2 b'4 |
	a' a' gis' |
	a'2 r4 |
	a' a' a' |
	c''2 b'4 |
%25
	a' a' gis' |
	a'2 r4 |
	\ss f'! f' g' | % sostenido en el original
	a'2 g'4 |
	\ss f'! f' g' |
%30
	a'2 g'4 |
	\bar "||"
	f' f' f' e' |
	f'2 a' |
	a'4 g' g'2 |
	g'4 a' c'' b' ~ |
%35
	b'8 a' a'4. gis'16 fis' gis'4 |
	a' a'8 g' f' e'16 d' e'4 ~ |
	e'8 d' d'2 cis'4 |
	d'1 ~ |
	d' ~ |
%40
	d'\breve*1/2 % nota doble en todas las voces, con calderon en medio
}

altus={
	r2 r4 f' |
	e' d' e' a |
	r f' e' d' |
	d'( cis') d' f' | % curva
%5
	e' d'2 cis'4 |
	\set Staff.autoBeaming = ##f
	d' c' c'8 a a4 |
	\set Staff.autoBeaming = ##t
	a2 r8 c'4 c'8 |
	c'4 c' c'2 |
	R1*4/4 |
%10
	r2 r4 d' |
	cis' d' e'8 d' d'4 ~ |
	d' cis' d' d' |
	c'4.  d'8[ e' d'] c'4 |
	b c'2 d'8 c' |
%15
	b g a4 b d' ~ |
	\set Staff.autoBeaming = ##f
	d'8 \ss cis' cis'4 d' a ~ |
	\set Staff.autoBeaming = ##t
	a c' a1
	\bar "||"
        a2 r4 |
	f'4 e' fis' |
%20
	g'2 g'4 |
	e' f' e' |
	e'2 r4 |
	f' e' \ss fis' | % la segunda vez no hay sostenido
	g'2 g'4 |
%25
	e' f' e' |
	e'2 r4 |
	d' d' e' |
	f'2 e'4 |
	d' d' e' |
%30
	f'2 e'4 |
	\bar "||"
	d' d' c'4. c'8 |
	c'2 r4 f' |
	f' e' d'2 |
	e'4 c'2 g'4 |
%35
	e'2 e' |
	e'4. d'8 c'4. b8 |
	a1 |
	a |
	bes |
%40
	a\breve*1/2
}

tenor={
	r2 r4 d' |
	c' b cis'2 |
	d' r |
	r d'4. a8 |
%5
	c'4 d' a2 |
	\set Staff.autoBeaming = ##f
	r4 a g8 f e4 |
	\set Staff.autoBeaming = ##t
	fis2 r8 g4 g8 |
	a4 g f a |
	g a \ss bes8 \parenthesize a d'4 ~ | % sol
%10
	d' \ss cis' d'2 |
	r4 d' c' d' |
	a4. a8 d2 |
	r r4 f |
	g a g a |
%15
	e f g f |
	e2 d4 f ~ |
	f g f e8 d e2
	\bar "||"
        \ss fis r4 |
	d'4 cis' d' | % parece que hay un sostenido puesto por una mano posterior
%20
	e'2 d'4 |
	cis' d' b |
	cis'2 r4 |
	d' cis' d' | % idem
	e'2 d'4 |
%25
	cis' d' b | % idem
	cis'2 r4 |
	a a c' |
	c'2 c'4 |
	a a c' |
%30
	c'2 c'4 |
	\bar "||"
	a bes a g |
	f2 r4 c' |
	c' c'2 b4 |
	c'4. b8 a4 d' ~ |
%35
	d' c' b2 |
	c' a4. g8 |
	f4 e8 d e2 |
	fis1 |
	g |
%40
	fis\breve*1/2 
}

bassus={
	R1*4/4 |
	r2 r4 a |
	g f g2 |
	a r |
%5
	R1*4/4 |
	\set Staff.autoBeaming = ##f
	r4 f c8 d a,4 |
	\set Staff.autoBeaming = ##t
	d2 r8 c4 c8 |
	f4 c f, f |
	e f  g8[ f]  f[ e16 d] |
%10
	e4 e d2 |
	R1*4/4 |
	R1*4/4 |
	r4 f g a |
	g f e f |
%15
	g f e d |
	\[a,2 d ~ \]
	d4 c \[d2 a,\] % no se ve la plica de la ligadura
	\bar "||"
        d r4
	d4 a d |
%20
	c2 g4 |
	a d e |
	a,2 r4 |
	d a d |
	c2 g4 |
%25
	a d e |
	a,2 r4 |
	d d c |
	f2 c4 |
	d d c |
%30
	f2 c4 |
	\bar "||"
	d bes, f, c |
	f,2 f |
	f4 c g2 |
	c4 f2 g4 |
%35
	a2 e |
	a,1 ~ |
	a, |
	d |
	g, |
%40
	d\breve*1/2
}

textocantus=\lyricmode{
gra -- ti -- a ple -- na
\italicas gra -- ti -- a ple -- na, \rectas % el original pone Dominus tecum
Do -- mi -- nus te -- cum,
\italicas Do -- mi -- nus te -- cum: \rectas
be -- ne -- di -- cta tu
in mu -- li -- e -- _ _ _ _ _ ri -- bus,
et be -- ne -- di -- ctus fru -- ctus ven -- tris tu -- i
Ie -- _ _ _ _ sus Chri -- _ stus. % IESUS
San -- cta Ma -- ri -- a % MARIA
Ma -- ter De -- i
\italicas San -- cta Ma -- ri -- a 
Ma -- ter De -- i \rectas
o -- ra pro no -- bis,
\italicas o -- ra pro no -- bis \rectas
pec -- ca -- to -- ri -- bus,
nunc et in ho -- ra mor -- tis no -- _ _ _ _ _ _ stræ.
A -- _ _ _ _ _ _ _ _ _ men. _ _ 
}

textoaltus=\lyricmode{
gra -- ti -- a ple -- na
\italicas gra -- ti -- a ple -- _ na, \rectas
Do -- mi -- nus te -- cum,
\italicas Do -- mi -- nus te -- cum: \rectas 
be -- ne -- di -- cta tu
in mu -- li -- e -- _ _ _ ri -- bus,
et be -- _ _ _ ne -- di -- ctus fru -- _ _ _ _ ctus
ven -- _ tris tu -- i,
Ie -- _ sus Chri -- stus.
San -- cta Ma -- ri -- a
Ma -- ter De -- i
\italicas San -- cta Ma -- ri -- a
Ma -- ter De -- i \rectas
o -- ra pro no -- bis,
\italicas o -- ra pro no -- bis \rectas
pec -- ca -- to -- ri -- bus
nunc et in ho -- ra mor -- tis no -- stræ.
A -- _ _ _ _ men,
a -- men.
}

% los ij no estan puestos donde empieza la frase

textotenor=\lyricmode{
gra -- ti -- a ple -- na
Do -- mi -- nus te -- cum
\italicas Do -- mi -- nus te -- cum: \rectas
be -- ne -- di -- cta tu 
in mu -- li -- e -- _ _ _ ri -- bus
\italicas in mu -- li -- e -- ri -- bus \rectas
et be -- ne -- di -- ctus fru -- ctus ven -- tris tu -- i,
Ie -- _ sus Chri -- _ _ _ stus.
San -- cta Ma -- ri -- a
Ma -- ter De -- i
\italicas San -- cta Ma -- ri -- a
Ma -- ter De -- i \rectas
o -- ra pro no -- bis,
\italicas o -- ra pro no -- bis \rectas
pec -- ca -- to -- ri -- bus
nunc et in ho -- ra __ _ _ mor -- _ tis no -- stræ.
A -- _ _ _ _ _ men,
a -- men.
}

textobassus=\lyricmode{
gra -- ti -- a ple -- na
Do -- mi -- nus te -- cum:
be -- ne -- di -- cta tu 
in mu -- li -- e -- _ _ _ _ _ ri -- bus
et be -- ne -- di -- ctus fru -- ctus ven -- tris tu -- i,
Ie -- _ _ sus Chri -- _ stus.
San -- cta Ma -- ri -- a
Ma -- ter De -- i
\italicas San -- cta Ma -- ri -- a
Ma -- ter De -- i \rectas
o -- ra pro no -- bis,
\italicas o -- ra pro no -- bis \rectas
pec -- ca -- to -- ri -- bus,
nunc et in ho -- ra mor -- tis no -- stræ.
A -- _ men,
\italicas a -- men.
}



incipitcantus=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Tenor   "
		\override NoteHead.style = #'neomensural
		\override Staff.TimeSignature.style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-c3"
		\key c \major
		\time 2/2
                fis'1
		} 

	\layout { line-width=\incipitwidth indent = 0 }
	}
}

% el último "la" de la invocación está incluido en todas las voces, para coger el tono

incipitaltus=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Tenor   "
		\override NoteHead.style = #'neomensural 
		\override Staff.TimeSignature.style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-c3"
		\key c \major
		\time 2/2
                 d'2
		} 
	\layout { line-width=\incipitwidth indent = 0 }
	}
}


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
                a2
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
                fis2
		} 
	\layout { line-width=\incipitwidth indent = 0 }
	}
}

%\layout {
%       \context {\Voice
%               \remove Ligature_bracket_engraver
%               \consists Mensural_ligature_engraver
%       }
%       line-width=\incipitwidth
%       indent = 0
%}

\score {\transpose c' a{
\new ChoirStaff<<

	\new Staff <<\global
	\new Voice="v1" {
		\set Staff.instrumentName=\incipitcantus
		\clef "treble_8"
		\cantus }
	\new Lyrics \lyricsto "v1" {\textocantus }
	>>

	\new Staff <<\global
	\new Voice="v2" {
		\set Staff.instrumentName=\incipitaltus
		\clef "treble_8"
		\altus }
	\new Lyrics \lyricsto "v2" {\textoaltus }
	>>
	
	\new Staff <<\global
	\new Voice="v3" {
		\set Staff.instrumentName=\incipittenor
		\clef "bass"
		\tenor }
	\new Lyrics \lyricsto "v3" {\textotenor }
	>>

	\new Staff <<\global
	\new Voice="v4" {
		\set Staff.instrumentName=\incipitbassus
		\clef "bass"
		\bassus }
	\new Lyrics \lyricsto "v4" {\textobassus }
	>>
	
>>

	} % transpose

\layout{ 
	\context {\Lyrics 
		\override VerticalAxisGroup.staff-affinity = #UP
		\override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
			#'((basic-distance . 0) (minimum-distance . 0) (padding . 1))
		\override LyricText.font-size = #1.2
		\override LyricHyphen.minimum-distance = #0.5
	}
	\context {\Score 
		tempoHideNote = ##t
		\override BarNumber.padding = #2 
	}
	\context {\Voice 
		melismaBusyProperties = #'()
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
	indent=3.5\cm
%	system-system-spacing =
%	#'((basic-distance . 20) (minimum-distance . 0) (padding . 5))
%	top-system-spacing = % header
%	#'((basic-distance . 3) (minimum-distance . 0) (padding . 0))
%	last-bottom-spacing = % footer
%	#'((basic-distance . 12) (minimum-distance . 0) (padding . 0))
}
