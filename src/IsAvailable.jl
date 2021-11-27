module IsAvailable

@doc """ A function that gets the status of a package at the link https://juliapackages.com/p/ """ ->
function isavailable(name::String)
    url = "https://juliapackages.com/p/"*lowercase(name)
    try
        r = HTTP.get(url)
        if r.status == 200
            return true
        end
    catch
        return false
    end
end 

@doc """ A function that gets the status of several packages in a list""" ->
function app(names::Array{String, 1})
    for name in names
        if isavailable(name)
            print(name*" is available. Do you wanna to install it? [type y(yes) or n(no)] ")
            answer = readline()
            validAnswers = ["yes", "no", "y", "n"]
            while lowercase(answer) ∉ validAnswers
                print("Please, type some valid option: [y] yes and [n] no. ")
                answer = readline()
            end
            if lowercase(answer) ∈ ["yes", "y"]
                try 
                    Pkg.add(name)
                catch
                    print("Oops! I did it again. Check out the name of the package... It may be wrong")
                end
            elseif lowercase(answer) ∈ ["no", "n"]
                print("Okay... Bye!")
            end
        end
    end
end

end # module
