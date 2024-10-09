;; extends

((string
    (string_start) @_start
    (string_content) @injection.content
    (string_end) @_end
 ) @string 
(#match? @string "\n*( )*-{2,}( )*[sS][qQ][lL]( )*\n")
(#set! injection.language "sql")
;(#set! injection.combined)
)
