cvec = [1, 2, 3, 4, 5]

rvec = [1 2 3 4 5]

mat = [1 2 3; 4 5 6; 7 8 9; 10 11 12]

mat2 = [1 2 3
       4 5 6
       7 8 9
       10 11 12]

cvec = [1; 2; 3; 4; 5]

[1, 2, 3; 4, 5, 6]

ndims(cvec)
ndims(rvec)
ndims(mat)

size(cvec)
size(rvec)
size(mat)

size(mat, 1) #number of rows
size(mat, 2) #number of columns

length(mat) #number of all elements

mat
mat[2,3]
mat[end, end] #last colun, last row

mat[3] #index in vector
mat[5]
mat[6]

mat[2:4, 2:3]
mat[2:4, 2:3]' #transposed

mat[2, :]
mat[:, 3]

cvec1 = [1, 2, 3, 4, 5]
cvec2 = [6, 7, 8, 9, 10]
cvec3 = [11, 12, 13, 14, 15]

vcat(cvec1, cvec2, cvec3)
hcat(cvec1, cvec2, cvec3)

rvec1 = [1 2 3 4 5]
rvec2 = [6 7 8 9 10]
rvec3 = [11 12 13 14 15]

vcat(rvec1, rvec2, rvec3)
hcat(rvec1, rvec2, rvec3)

[cvec1; cvec2; cvec3]

[cvec1, cvec2, cvec3]

[cvec1 cvec2 cvec3]

[rvec1; rvec2; rvec3]
[rvec1 rvec2 rvec3]

m1 = [1 2 3; 4 5 6]
m2 = [11 12 13; 14 15 16]
mver = [m1; m2]
mhor = [m1 m2]
[m1,m2] #vector of vectors
[m1;m2] #matrix - stacking of rows 4x3
[m1 m2] #matrix - rows of m1 to rows of m2 - 2x6

emptymat = Matrix(undef, 2, 3)
Matrix{Any}(undef, 2, 3)
Matrix{Float64}(undef, 3, 2)
mat = Matrix{Union{Int64, String}}(undef, 3, 4) #matrix with element type of Int64 or String
mat[2, 3] = 999;
mat[1, 2] = "number";
mat
mat[3, 4] = 3.14

nothing
typeof(nothing)

Matrix{Any}(nothing, (2,3))
Matrix{Int64}(nothing, (2,3))
Matrix{Union{Int64, Nothing}}(nothing, (2,3))

missing
typeof(missing)

Matrix{Union{Missing, String}}(missing, (2,3))

reshape(1:15, 3, 5)'
reshape(mhor, (3, 2))

zeros(2,3)
ones(2,3)
ones(Int32, 2, 3)
trues(2,2)
falses(2,2)
fill(3.14, (3,2))

rand(1:20, 3, 5)
randn(3,5)


m1 = reshape(range(12., 23., length=12), (4,3))
m2 = similar(m1) #setting up a new matrix wih the same data type as m1
m3 = similar(m1, (3,3)) #setting up a new matrix wih the same data type as m1 but with size 3x3

