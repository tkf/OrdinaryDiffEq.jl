immutable InterpolationData{F,uType,tType,kType,cacheType} <: Function
  f::F
  timeseries::uType
  ts::tType
  ks::kType
  notsaveat_idxs::Vector{Int}
  cache::cacheType
end

immutable CompositeInterpolationData{F,uType,tType,kType,cacheType} <: Function
  f::F
  timeseries::uType
  ts::tType
  ks::kType
  alg_choice::Vector{Int}
  notsaveat_idxs::Vector{Int}
  cache::cacheType
end

(interp::InterpolationData)(tvals) = ode_interpolation(tvals,interp)
(interp::CompositeInterpolationData)(tvals) = ode_interpolation(tvals,interp)