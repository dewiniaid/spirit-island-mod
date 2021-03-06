difficulty=3

requirements = true
boardSetup = true
postSetup = true
postSetupComplete = false

posMap = {
    { -- 1 player
        Vector{-2.46, 1.08, 10.34},
    },
    { -- 2 player
        Vector{-2.46, 1.08, 10.34},
        Vector{15.38, 1.08, 9.96},
    },
    { -- 3 player
        Vector{-2.46, 1.08, 10.34},
        Vector{15.38, 1.08, 9.96},
        Vector{33.22, 1.08, 9.58},
    },
    { -- 4 player
        Vector{-2.46, 1.08, 10.34},
        Vector{15.38, 1.08, 9.96},
        Vector{33.22, 1.08, 9.58},
        Vector{-20.30, 1.08, 10.72},
    },
    { -- 5 player
        Vector{-2.46, 1.08, 10.34},
        Vector{15.38, 1.08, 9.96},
        Vector{33.22, 1.08, 9.58},
        Vector{-20.30, 1.08, 10.72},
        Vector{51.06, 1.08, 9.20},
    },
    { -- 6 player
        Vector{-2.46, 1.08, 10.34},
        Vector{15.38, 1.08, 9.96},
        Vector{33.22, 1.08, 9.58},
        Vector{-20.30, 1.08, 10.72},
        Vector{51.06, 1.08, 9.20},
        Vector{68.90, 1.08, 8.82},
    },
}
rotMap = {
    { -- 1 player
        Vector(0.00, 240.69, 0.00),
    },
    { -- 2 player
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
    },
    { -- 3 player
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
    },
    { -- 4 player
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
    },
    { -- 5 player
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
    },
    { -- 6 player
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
        Vector(0.00, 240.69, 0.00),
    },
}

function Requirements(params)
    return not params.thematic
end
function BoardSetup(params)
    return { posTable = posMap[params.boards], rotTable = rotMap[params.boards] }
end
function PostSetup()
    local scenarioBag = Global.getVar("scenarioBag")
    scenarioBag.takeObject({
        guid = "eb0571",
        position = self.getPosition(),
        rotation = {0,180,0},
        callback_function = function(obj) obj.setLock(true) end,
    })
    postSetupComplete = true
end