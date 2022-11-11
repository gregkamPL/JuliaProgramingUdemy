struct Rectangle  # struct is immutable
    width::Float64
    length::Float64
end

fieldnames(Rectangle)

rectangle1 = Rectangle(4, 7)

rectangle1.length
rectangle1.width

rectangle1 = Rectangle(5.0)
restangle1 = Rectangle(1.0, 2.0, 3.0)

rectangle1.length = 2;

mutable struct NewRectangle
    width::Float64
    height::Float64
end

rectangle2 = NewRectangle(4.5, 7.8)
rectangle2.width = 3.5

supertype(Rectangle)

abstract type Shape end

#creating different structs under abstract 'Shape'
mutable struct RectangleShape <: Shape
    width::Float64
    height::Float64
end

mutable struct Square <: Shape
    length::Float64
end


mutable struct Circle <: Shape
    radius::Float64
end


supertype(RectangleShape)

#creating a new type that accepts an integer or string
intstr = Union{Integer, AbstractString}
x = 123
y = "123"
z = 123.0
x::intstr
y::intstr
z::intstr


# Exercise 1:

# Create a struct for a rectangular prism.
# The struct should include three fields: width, length, height.
# Data types of the fields should be the same and they should be a subtype of Real type.
# Create an instance of a Prism type. Set the values for width, length, and height any value you like. (What is the point you should be careful about when setting the values?)
# Calculate the volume of the prism object using the field values.

struct RectangularPrism{T<:Real}
    width::T
    length::T
    height::T
end

t1 = RectangularPrism(3.5, 4.5, 5.0)

volume = t1.height * t1.length * t1.width

# Exercise 2:
# Assign the value of 42 to the variable name myint.
# Convert the variable myint to float data type. Assign it to the variable name myfloat.

myint = 42
myfloat = Float64(myint)