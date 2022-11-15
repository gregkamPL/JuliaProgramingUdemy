1:10

rng = 1:10
collect(rng) #converging into vector
sizeof(1:10) #size in bytes
sizeof(collect(1:10)) #collect function requires more bytes

typeof(rng)
supertype(UnitRange)
supertype(AbstractUnitRange)
supertype(OrdinalRange)
supertype(AbstractRange)
supertype(AbstractVector)

rng2 = 1:2:20

rng3 = 20:-2:1

-3:0.1:3

range(start=0, step=2, stop=20)
range(2, length=10)
range(5, stop=20)
range(4, step=4, length=10)
range(-3, 3, length=101)
range(1, 30, step=3)
range(stop=20, length=10)
range(stop=20, step=2, length=10)
LinRange(10, 90, 100)  #linearly equal spacing