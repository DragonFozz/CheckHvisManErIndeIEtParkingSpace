Config = {}
Config.Garages = {
    ["pillboxgarage"] = {
        name = "MIDTBY garage",
        --Outlines the entire parking space.
        Outerpoints = {
          [1] = vector3(200.06, -805.74, 31.07),
          [2] = vector3(239.87, -820.5, 30.07),
          [3] = vector3(258.46, -768.02, 30.79),
          [4] = vector3(218.88, -754.46, 30.84),
        },
        --Inner parking spaces
        Innerpoints = {
            [1] = {
                name = "Space 1",
                points = {
                    [1] = vector3(209.03, -800.66, 30.95),
                    [2] = vector3(208.13, -803.2, 30.96),
                    [3] = vector3(203.3, -801.46, 31.06),
                    [4] = vector3(204.22, -798.94, 31.05),
                 },
                spawnpoint = vector4(205.6, -800.91, 30.41, 247.49),
            },
            [2] = {
                name = "Space 2",
                points = {
                    [1] = vector3(209.0, -800.68, 30.95),
                    [2] = vector3(204.42, -798.89, 31.04),
                    [3] = vector3(205.21, -796.44, 31.03),
                    [4] = vector3(209.95, -798.28, 30.93),
                 },
                spawnpoint = vector4(206.7, -798.51, 30.39, 250),
            },
        },
     },
 }


