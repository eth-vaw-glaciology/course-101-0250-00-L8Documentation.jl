# Car travel in 1D

How a car travels back and forth between two locations.

Note that a comment which is on a line by itself, will render as a markdown line and
thus create a new "notebook block" after it.
Thus many comments are preceded by `##` to avoid this.

````julia
using Plots

"""
    update_position(X, V, dir, dt, L)

Return updated position of car and new travel direction;
given, old postion `X`, speed `V`, direction `dir`, time step `dt`
and domain size `L`.

# Example
```jldoctest
julia> update_position(0.0, 10, 1, 1, 200)
(10.0, 1)
```
"""
function update_position(X, V, dir, dt, L)
    X = X + dir*V*dt
    if X > L
        dir = -1      # if beyond L, go back (left)
    elseif X < 0
        dir = 1       # if beyond 0, go back (right)
    end
    return X, dir
end

"""
    car_travel_1D()

Run the model.
"""
function car_travel_1D()
    # Physical parameters
    V     = 113.0          # speed, km/h
    L     = 200.0          # length of segment, km
    dir   = 1              # switch 1 = go right, -1 = go left
    ttot  = 16.0           # total time, h
    # Numerical parameters
    dt    = 0.1            # time step, h
    nt    = Int(cld(ttot, dt))  # number of time steps
    # Array initialisation
    T     = zeros(nt)
    X     = zeros(nt)
    # Time loop
    for it = 2:nt
        T[it] = T[it-1] + dt
        X[it], dir = update_position(X[it - 1], V, dir, dt, L)
    end

    return T, X
end
````

````
Main.var"##292".car_travel_1D
````

````julia
# Only run this in an interactive session:
if isinteractive() # do not run this when including this script from other scripts
    println("Running model")
    T, X = car_travel_1D()
    plot(T, X, markersize=5, xlabel="time, hrs", ylabel="distance, km", framestyle=:box, legend=:none)
end
````

Figure showing how the car bounces back and forth, nice!

