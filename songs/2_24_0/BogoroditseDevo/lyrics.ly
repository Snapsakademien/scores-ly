tOneLyric = \lyricmode {

	\repeat unfold 23 {\skip 1}
	Bo -- go -- ro -- dit -- se Dje -- vo,
	ra -- duj -- sia,
	ra -- duj -- sia

	Ja -- ko Spa  -- sa
	Ja -- ko Spa  -- sa ro -- di -- la
}

tTwoLyric = \lyricmode {
	Bo -- go -- ro -- dit -- se Dje -- vo,
	ra -- duj -- sia,
	Bla -- go -- dat -- na -- ja Ma -- ri -- je,
	Gos -- pod s_To -- bo -- ju:

	Bla -- go -- slo -- ven -- na
	Ty  v_zje -- nach,
	\repeat unfold 11 {\skip 1}
	Ja -- ko Spa -- sa ro -- di -- la
	Ja -- ko Spa -- sa ro -- di -- la
	je -- si dusj na -- sjich
}

bOneLyric = \lyricmode {

	\repeat unfold 31 {\skip 1}

	\override LyricText.extra-offset = #'(0 . 2)
	\override LyricHyphen.extra-offset = #'(0 . 2)

	I Bla -- go -- slo -- ven plod
	chrje -- va Tvo -- je -- go,

	\override LyricText.extra-offset = #'(0 . 0)
	\override LyricHyphen.extra-offset = #'(0 . 0)

	ra -- duj -- sia
	Ja -- ko, Ja -- ko Spa -- sa ro -- di -- la
}

bTwoTwoLyric = \lyricmode {
%	ro -- di -- la
}

bTwoLyric = \lyricmode {
	\repeat unfold 23 {\skip 1}
	Ja -- ko Spa -- sa ro -- di -- la
}
altLyric = \markup {
		\fill-line {
			\hspace #1
			\column {
			\line {\bold "Church Slavonic text"}
			\line { Богородице Дево, радуйся, }
			\line { благодатная Марие, Господь с тобою. }
			\line { Благословена ты в женах, }
			\line { и благословен плод чрева твоего, }
			\line { яко Спаса родила еси душ наших. }
			\line { " " }
			\line { " " }
	    }
	    \hspace #2
	    \column {
			\line {\bold "Church English text"}
			\line { Rejoice, O Virgin Theotokos, }
			\line { Mary full of grace, the Lord is with Thee. }
			\line { Blessed art Thou among women, }
			\line { and blessed is the fruit of Thy womb, }
			\line { for Thou hast borne the Savior of our souls. }
			\line { " " }
			\line { " " }
	    }
	    \hspace #1
	  }
	}
fonetic = \markup{
	\box \pad-markup #2 \wordwrap {
		\fill-line{
			\hspace #1
			\column{
				\line {zj = jour (fr)}
				\line {sj = skjorta (sv)}
			}
			\hspace #2
			\column{
				\line {a = tall (sv)}
				\line {ch = ach (ty)}
			}
			\hspace #2
			\column{
				\line {l = tall (en)}
				\line {o = komma (sv)}
			}
			\hspace #1
		}
	}
}
