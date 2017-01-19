export CG_FR

function CG_FR(nlp :: AbstractNLPModel;
               atol :: Float64=1.0e-8, rtol :: Float64=1.0e-6,
               max_eval :: Int=0,
               verbose :: Bool=true,
               verboseLS :: Bool = true,
               mem :: Int=5,
               linesearch :: Function = Newarmijo_wolfe,
               scaling :: Bool = true,
               kwargs...)

    return CG_generic(nlp;
                      atol=atol, rtol =rtol,
                      max_eval= max_eval,
                      verbose = verbose,
                      verboseLS = verboseLS,
                      mem = mem,
                      linesearch  = linesearch,
                      CG_formula  = formula_FR,
                      scaling  = scaling,
                      kwargs...)
end