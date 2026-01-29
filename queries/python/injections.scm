;; extends

((string
    (string_content) @injection.content
 ) @string 
(#match? @string "\\s*-{2,}( )*sql( )*\n")
(#set! injection.language "sql")
)
