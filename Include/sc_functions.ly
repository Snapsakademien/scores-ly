chExceptionMusic = {
  <c g>1-\markup { \super "5" }
}

filename = #(ly:parser-output-name parser)

% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
( sequential-music-to-chord-exceptions chExceptionMusic #t)
ignatzekExceptions)

scMark = { \once \override Score.RehearsalMark #'self-alignment-X = #LEFT \mark \default }
scMarkA = \markup{ \bold \override #'(box-padding . 0.5) \box \large "A" }
scMarkB = \markup{ \bold \override #'(box-padding . 0.5) \box \large "B" }
scMarkC = \markup{ \bold \override #'(box-padding . 0.5) \box \large "C" }
scMarkD = \markup{ \bold \override #'(box-padding . 0.5) \box \large "D" }
scMarkE = \markup{ \bold \override #'(box-padding . 0.5) \box \large "E" }
scMarkF = \markup{ \bold \override #'(box-padding . 0.5) \box \large "F" }
scMarkG = \markup{ \bold \override #'(box-padding . 0.5) \box \large "G" }
scMarkH = \markup{ \bold \override #'(box-padding . 0.5) \box \large "H" }
scMarkI = \markup{ \bold \override #'(box-padding . 0.5) \box \large "I" }
scMarkJ = \markup{ \bold \override #'(box-padding . 0.5) \box \large "J" }
scMarkK = \markup{ \bold \override #'(box-padding . 0.5) \box \large "K" }

ficta = { \once \set suggestAccidentals = ##t }

dropLyrics = {
  \override LyricText.extra-offset = #'(0 . -4.5)
  \override LyricHyphen.extra-offset = #'(0 . -4.5)
  \override LyricExtender.extra-offset = #'(0 . -4.5)
  \override StanzaNumber.extra-offset = #'(0 . -4.5)
}

dropLyricsSmall = {
  \override LyricText.extra-offset = #'(0 . -1.0)
  \override LyricHyphen.extra-offset = #'(0 . -1.0)
  \override LyricExtender.extra-offset = #'(0 . -1.0)
  \override StanzaNumber.extra-offset = #'(0 . -1.0)
}
raiseLyrics = {
  \revert LyricText.extra-offset
  \revert LyricHyphen.extra-offset
  \revert LyricExtender.extra-offset
  \revert StanzaNumber.extra-offset
}
extendLV = #(define-music-function (parser location further) (number?) 
#{
   \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
   \once \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
   \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) 0)
#})