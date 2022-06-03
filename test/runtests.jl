# [test/runtests.jl]
using JudiLingMeasures
using DataFrames
using StatsBase
using JudiLing
using LinearAlgebra
using Statistics
using Test
using Distances
using PyCall
import Conda

# Test scripts
include("test_helpers.jl")
include("test_measures.jl")

import Conda

function __init__()
    if !haskey(Conda._installed_packages_dict(),"pandas")
        Conda.add("pandas")
    end
    if !haskey(Conda._installed_packages_dict(),"numpy")
        Conda.add("numpy")
    end
end