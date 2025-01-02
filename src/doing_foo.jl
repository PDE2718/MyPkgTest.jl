export MyBar

"""
A structure named "MyBar"
"""
struct MyBar
    a::Int
    b::Int
end

export mysum
"""
Define the sum operation for MyBar. Return the sum of two field.
"""
mysum(x::MyBar) = x.a + x.b

export myprod
"""
Define the prod operation for MyBar. Return the product of two field.
"""
myprod(x::MyBar) = x.a * x.b
