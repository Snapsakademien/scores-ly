\paper {
	line-width = 175
	top-margin = 25
	bottom-margin = 30
	system-system-spacing.padding = #6
	print-all-headers = ##t
	print-page-number = ##f
}

#(set-global-staff-size 17)

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
