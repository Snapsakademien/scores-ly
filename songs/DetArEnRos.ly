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
}

#(set-global-staff-size 17)

global = {
	\time 4/2
	\key bes \major
}

%DET ÄR EN ROS
	
system = \relative c' {
	\partial 1
	\autoBeamOff
	\override DynamicLineSpanner.staff-padding = #3

	s1\p | s2 s2\< s2 s2 | s1\> s2 s2\! | s1. s2\< | s2. s4\> s1 \break
	s1\! s1 | s2 s2\< s2 s2 | s1\> s2 s2\! | s1. s2\< \break s2. s4\> s1 
	s1\! s1 | s2 s2\< s1 | s2\> s2\! s2 s2\mf | \break 
	s2 s2\< s2 s2 | s1\> s2 s2\! | s1.\p s2\< | s1 s1\> | s1\!
	\bar "|."
}

tOne = \relative c' {
	\partial 1
	\autoBeamOff

	f1 | f2 f2 g2 f2 | f1 d1 | es1 d2 c2~ | c2 bes1 a2 | bes1 
	f'1 | f2 f2 g2 f2 | f1 d1 | es1 d2 c2~ | c2 bes1 a2 | bes1 bes2\rest
	d2 | c2 a2 bes2 g2 | f1 bes2\rest 
	f'2 | f2 f2 g2 f2 | f1 d1 | es1 d2 c2~ | c2 bes1 a2 | bes1
}

tTwo = \relative c' {
	\partial 1
	\autoBeamOff

	d1 | d2 d2 es2 d2 | c1 bes1 | bes1 bes2 f2 | g2.( d4) f1 | f1 
	d'1 | d2 d2 es2 d2 | c1 bes1 | bes1 bes2 f2 | g2.( d4) f1 | f1 s2
	bes2 | g2 f2 f2 e2 | f4( g4 a2) s2 
	d2 | d2 d2 es2 d2 | c1 b1 | c1 bes2 g2 | a2( bes2 c2) f,2 | f1 
}

bOne = \relative c' {
	\partial 1
	\autoBeamOff

	bes1 | bes2 bes2 bes2 bes2 | a1 g1 | g1 f2 f2 | es2( d1) c2 | d1 
	bes'1 | bes2 bes2 bes2 bes2 | a1 g1 | g1 f2 f2 | es2( d1) c2 | d1 d2\rest
	f2 | es2 d2 d2 c2 | c1 d2\rest 
	f2 | a2 bes2 bes2 bes2 | a1 g1 | g1 f2 g2 | f2( d2) c1 | d1
}

bTwo = \relative c {
	\partial 1
	\autoBeamOff

	bes1 | bes2 bes2 es2 bes2 | f'1 g1 | es1 bes2 a2 | g1 f1 | bes1 
	bes1 | bes2 bes2 es2 bes2 | f'1 g1 | es1 bes2 a2 | g1 f1 | bes1 s2
	bes2 | c2 d2 bes2 c2 | f,1 s2 
	f'2 | a2 bes2 es,2 bes2 | f'1 g1 | c,1 d2 es2 | f1 f,1 | bes1 
}

tOneLyricOne = \lyricmode {
	Det är en ros ut -- sprung -- en av Da -- vids rot och stam,
	av fä -- der -- na be -- sjung -- en, en ros i Ju -- da -- land,
	en blom -- ma skär och blid,
	mitt i den kal -- la vin -- ter, i mid -- natts mör -- ka tid.
}

tOneLyricTwo = \lyricmode {
	Om den -- na ros al -- le -- na ljöd förr Je -- sa -- jas ord,
	att född av jung -- frun re -- na, be -- seg -- ra skall vår jurd.
	Av her -- rens nåd och makt
	oss det -- ta un -- der sked -- de som oss pro -- fe -- ten sagt.
}

tOneLyricThree = \lyricmode {
	Den spä -- da ro -- sen fi -- na som dof -- tar sa -- lig -- het
	i mörk -- ret skall den ski -- na, be seg -- ra dun -- kel -- het.
	Sann Gud och män -- ska sann,
	oss ar -- ma män -- skor fräl -- sa från synd och död han kan.
}
	
%DET ÄR EN ROS UTSPRUNGEN
	
\score { % centered <<

	\header {
		title = "Det är en ros utsprungen" 
		composer = "Michael Praetorius"
		arranger = "Göte Widlund"
	}
	
	\new ChoirStaff <<
		\new Staff <<
			\global
			\clef "treble_8"
			\new Voice <<
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
		\new Lyrics  {
			\lyricsto "tOne"
			\tOneLyricThree
		}
		\new Staff = "staff" <<
			\global
			\clef "bass"
			\new Voice <<
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
