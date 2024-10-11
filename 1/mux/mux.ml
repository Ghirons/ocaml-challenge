
let nand a b = not (a && b);;

let xor a b = (a && not(b)) || (not(a) && b);;

let mux2 s0 a b = 
    if s0 = false
        then a
        else b;;

let mux2_logic s0 a b =
    (a && not(s0)) || (b && s0);;

let mux2_match s0 a b = match s0 with
| false -> a
| true -> b;;  

let mux4 s0 s1 a b c d = 
    if s0 = false
        then mux2 s1 a b
        else mux2 s1 c d;;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;

print_endline (string_of_bool (mux2_match false true false));;