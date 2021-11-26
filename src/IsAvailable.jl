module IsAvailable

function isavailable(name)
    url = "https://juliapackages.com/p/"*name
    try
        r = HTTP.get(y)
        if r.status == 200
            print("is available")
        end
    catch
         print("not available")
    end
end 

end # module
