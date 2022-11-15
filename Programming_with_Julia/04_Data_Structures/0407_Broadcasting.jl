v = Vector(1:5)
n = 7;

v + n
v + repeat([n], size(v,1))

broadcast(+, v, n)

v .+ n

a = [4 7 2 9 11 15]
b = [3 7 3 9 12 15]

a == b
a .== b #comparing elements one by one -->> broadcasting all elements

mat = [1 2 3;4 5 6]

ℯ^2
ℯ .^ mat
mat.^ℯ
ℯ

exp.(mat)

sqrt.(mat)
.√mat

x = [3 5 7 9 12 15]

3 .* x.^2 .+ 2 .* x .+ 5 #summing function values applying each value from vector 'x'
3x.^2 .+ 2x .+ 5


vec = [7 22 12 13 16 21 18 76]
vec[[true false false false false false false true]]

vec .> 20 #checking bool for each item in vec

vec[vec .> 20] #selecting items meeting the condition


vec .% 4 #showing modulo of 4 for each elementem in vec
(vec .% 4) .== 0 
vec[(vec .% 4) .== 0]

cond = (vec .% 4) .== 0 
vec[cond]

mat = rand(1:100, 200,10)

cond1 = mat[:, 1] .% 3 .== 0
cond2 = mat[:, 2] .% 4 .== 0

mat[cond1 .& cond2, :]
