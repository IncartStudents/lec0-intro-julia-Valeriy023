# переписать ниже примеры из первого часа из видеолекции: 
# https://youtu.be/4igzy3bGVkQ
# по желанию можно поменять значения и попробовать другие функции
println("My name is Valeriy")

my_number = 45
typeof(my_number)
my_name = "Valeriy"
typeof(my_name)

#comment

#string
s1 = "i'm a string"
s2 = """i'm also a string"""
#"example with "error""
"""example without "errors" """
name = "Valeriy"
"Hello, my name is $name"

#dictionary
myphonebook = Dict("Mom" => "77777", "Dad" => "99999")
myphonebook["friend"] = "151515"
pop!(myphonebook, "friend")
myphonebook

#tuple
myfavoriteanimals = ("dogs", "cats","turtles")
myfavoriteanimals[1]

#array
myfriends = ["Dasha", "Masha", "Kostya", "Maxim"]
myfriends[3]
myfriends[3] = "Konstantin Pavlovich"
push!(myfriends, "Kirill")
pop!(myfriends)
numbers = [[1,2,3],[4,5],[6,7,8]]
rand(4,4)

#loops
n = 0
while n < 10
    n+=1
    println(n)
end
for n in 1:10
    println(n)
end

m, n = 5, 5
A = zeros(m,n)
for i in 1:m
    for j in 1:n
        A[i,j] = i + j
    end
end
A

B = zeros(m,n)
for i in 1:m, j in 1:n
    B[i,j] = i + j
end
B
C = [i + j for i in 1:m, j in 1:n]

#conditionals
x = 5
y = 20
if x > y
    println("$x is larger than $y")
elseif x < y
    println("$x is lower than $y")
else
    println("$x and $y are equal")
end
(x < y) ? x : y
(x > y) && println("$x is larger than $y")
(x < y) && println("$x is smaller than $y")

#functions
function sayhi(name)
    println("Hi $name, it's great to see you!")
end
sayhi("Victor")
sayhi2(name) = println("Hi $name, it's great to see you!")
sayhi("Maria")
sayhi3 = name -> println("Hi $name, it's great to see you!")
sayhi3("Maxim")
f(number) = number^2

#broadcasting
A = [i + 3*j for j in 0:2, i in 1:3]
f(A)
f.(A)

#plotting
using Plots
x = -3:0.1:3
f(x) = x^2

y = f.(x)
gr()
plot(x,y, label="line")
scatter!(x,y, label="points")

plotlyjs()
plot(x,y, label="line")
scatter!(x,y, label="points")

globaltemperatures = [14.4,14.5,14.8,15.2,15.5,15.8]
numpirates = [45000, 20000, 15000, 5000, 400, 17]

plot(numpirates, globaltemperatures, legend=false)
scatter!(numpirates, globaltemperatures, legend=false)
xflip!()
xlabel!("Number of pirates")
ylabel!("Global Temperature")
title!("Influence of pirate population on global warming")

p1 = plot(x,x)
p2 = plot(x, x.^2)
plot(p1,p2, layout=(1,2), legend=false)

#multiple dispatch
methods(+)
@which 3 + 3
@which 3.0 + 3.0
@which 3 + 3.0
import Base: +
+(x::String, y::String) = string(x,y)
@which "hello" + "world!"

foo(x,y) = println("duck-typed foo!")
foo(x::Int, y::Float64) = println("foo with an integer and a float")
foo(x::Float64, y::Float64) = println("foo with two floats")
foo(x::Int, y::Int) = println("foo with two integers")

foo(1,1)
foo(1.,1.)
foo(1,1.0)
foo(true,false)

#basic linear algebra
A = rand(1:4,3,3)
B = A
C = copy(A)
[B C]
A[1] = 17
[B C]

x = ones(3)
b = A*x
Asym = A + A'
Apd = A'A
A\b

Atall = A[:,1:2]
display(Atall)
Atall\b

A = randn(3,3)
[A[:,1] A[:,1]]\b
