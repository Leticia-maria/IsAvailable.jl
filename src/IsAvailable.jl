module IsAvailable

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

function app(names::Array{String, 1})
    for name in names
        if isavailable(name)
            print(name*" is available. Do you wanna to install it? [yN] ")
            answer = readline()
            if answer == "y"
                Pkg.add(name)
            elseif answer == "N"
                print("Okay... Bye!")
            else
                print("Oops! I did it again. Check out the name of the package... It may be wrong")
            end
        end
    end
end

end # module