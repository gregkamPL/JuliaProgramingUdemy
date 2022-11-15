arr = [3, "Julia", 2022, 4.12]  #array is similar to mutable tuple
arrfloat = [2.2, 2.4, 2.6]
arrint = [7, 11, 13]
arrstr = ["abc", "def", "xyz", "αβγ"]

typeof(arr)
typeof(arrfloat)
typeof(arrint)
typeof(arrstr)

arrprime = Int64[2, 3, 5, 7]
arrdouble = Float64[3.14, 2.78, 6.5]

arrmixed = [7, 8.2, [3, 5, 7]]
typeof(arrmixed)

arr[1]
arr[end]

typeof(arr[3])

arr[3:4]
arrstr[1:3]
arr[2:end]

newarr = arr[:] #making copy
newarr == arr
newarr ≡ arr

arr[1] = 99999;
arr

arrprime[2] = "three"

arr[2:3] = [111, 222];
arr

111 ∈ arr
"abc" ∈ arrstr

issubset(["abc", "def"], arrstr)

["abc", "def"] ⊆ arrstr     # \subseteq TAB

["abc", "def"] ⊊ arrstr     # \subsetneq TAB
arrstr ⊊ arrstr             

arrstr ⊇ ["abc", "def"]     # \supseteq TAB

arr = ["α", "β", "γ", "δ"]

eltype(arr) #element type of an array
length(arr)

push!(arr, "σ") #adding 'o' element at the end of an array"

arr2 = ["Δ", "θ"]
append!(arr, arr2); #adding elements from 'arr2' into 'arr'
arr

deleteat!(arr, 3) #delete element with the provided index(es)
deleteat!(arr, [1, 3, 4])

pop!(arr) #delete last element
arr

popfirst!(arr) #delete first element
arr

insert!(arr, 1, "α")
insert!(arr, 2, "λ")

str = "Julia,Python,R,Matlab,C,C++,Go,Java"
arrstr = split(str, ",")