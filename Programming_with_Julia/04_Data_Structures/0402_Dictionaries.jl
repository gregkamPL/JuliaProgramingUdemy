d1 = Dict()  #dictionaries are mutable, values do not need to be of the same type

grades = Dict([("albert", 100), ("marie", 99), ("richard", 98), ("carl", 97)])

grades = Dict("albert" => 100, "marie" => 99, "richard" => 98, "carl" => 97)

grades = Dict()

grades["albert"] = 100
grades["marie"] = 99
grades["richard"] = 98
grades["carl"] = 97
grades

grades["carl"] = 100
grades

grades[1]

grades["marie"]
grades["rosalind"]
length(grades)
keys(grades)
values(grades)

"albert" ∈ keys(grades)
100 ∈ values(grades)
"isaac" ∈ keys(grades)

haskey(grades, "isaac")
haskey(grades, "marie")

get(grades, "albert", "not found")
get(grades, "bertrand", "not found")

get!(grades, "bertrand", 85)  #returning values with a key; if it does not exist, then it creates a new item with the key and value provided
grades

getkey(grades, "albert", "einstein") #returning values with a key; if it does not exist, then it throws the default value provided
getkey(grades, "isaac", "newton")


delete!(grades, "carl") #deleting an item with the value provided

dict1 = Dict("a" => 5, "b" => 7, "c" => 9)
dict2 = Dict("d" => 6, "e" => 8, "f" => 10)

merge(dict1, dict2)

dict1 = Dict("a" => 5, "b" => 7, "c" => 9)
dict2 = Dict("a" => 7, "b" => 10, "d" => 15)
mergewith(+, dict1, dict2) #merging with summing up values with the same keys

dct = Dict(1 => "one", "two" => 2, 3.5 => true)
keys(dct)
values(dct)