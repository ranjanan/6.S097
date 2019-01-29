function Base.show(io::IO, ::MIME"text/html", M::Matrix{T}) where {T<:String}
    max_length = maximum(length.(M))
    dv="<div style='display:flex;flex-direction:row'>"
    print(io, dv*join([join("<div style='width:40px; text-align:center'>".*M[i,:].*"</div>", " ") for i in 1:size(M, 1)]
            , "</div>$dv")*"</div>")
end