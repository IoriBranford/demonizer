return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.2",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 18,
  height = 100,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 37,
  nextobjectid = 254,
  properties = {
    ["blurupdatespeed"] = 1,
    ["cameraid"] = 2,
    ["extendinc"] = 15000,
    ["extendpoints"] = 10000,
    ["maxbombs"] = 0,
    ["music"] = "mus/caravan.vgm",
    ["overlaymap"] = "gameplay.lua",
    ["playerid"] = 1,
    ["script"] = "DrunkShmupMap",
    ["startbombs"] = 0,
    ["winlivesbonus"] = 1000
  },
  tilesets = {
    {
      name = "player",
      firstgid = 1,
      filename = "img/player.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "img/player.png",
      imagewidth = 256,
      imageheight = 448,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 28,
      tiles = {
        {
          id = 0,
          type = "Player",
          properties = {
            ["name"] = "forward"
          },
          objectGroup = {
            type = "objectgroup",
            id = 5,
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 4,
                name = "body",
                type = "",
                shape = "ellipse",
                x = 28,
                y = 28,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              },
              {
                id = 7,
                name = "wingman1",
                type = "",
                shape = "point",
                x = 8,
                y = 40,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 8,
                name = "wingman2",
                type = "",
                shape = "point",
                x = 56,
                y = 40,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 10,
                name = "wingman3",
                type = "",
                shape = "point",
                x = 16,
                y = 16,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 11,
                name = "wingman4",
                type = "",
                shape = "point",
                x = 48,
                y = 16,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 12,
                name = "focuswingman1",
                type = "",
                shape = "point",
                x = 12,
                y = 24,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 13,
                name = "focuswingman2",
                type = "",
                shape = "point",
                x = 52,
                y = 24,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 14,
                name = "focuswingman3",
                type = "",
                shape = "point",
                x = 0,
                y = 12,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 15,
                name = "focuswingman4",
                type = "",
                shape = "point",
                x = 64,
                y = 12,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 100
            },
            {
              tileid = 1,
              duration = 150
            },
            {
              tileid = 2,
              duration = 100
            },
            {
              tileid = 3,
              duration = 150
            }
          }
        },
        {
          id = 1,
          type = "Player"
        },
        {
          id = 2,
          type = "Player"
        },
        {
          id = 3,
          type = "Player"
        },
        {
          id = 4,
          type = "Player",
          properties = {
            ["name"] = "lefttilt",
            ["nextanim"] = "left"
          },
          animation = {
            {
              tileid = 4,
              duration = 67
            },
            {
              tileid = 5,
              duration = 67
            },
            {
              tileid = 6,
              duration = 67
            },
            {
              tileid = 7,
              duration = 67
            }
          }
        },
        {
          id = 5,
          type = "Player"
        },
        {
          id = 6,
          type = "Player"
        },
        {
          id = 7,
          type = "Player",
          properties = {
            ["name"] = "leftuntilt",
            ["nextanim"] = "forward"
          },
          animation = {
            {
              tileid = 7,
              duration = 100
            },
            {
              tileid = 6,
              duration = 100
            },
            {
              tileid = 5,
              duration = 100
            },
            {
              tileid = 4,
              duration = 100
            }
          }
        },
        {
          id = 8,
          type = "Player",
          properties = {
            ["name"] = "left"
          },
          animation = {
            {
              tileid = 8,
              duration = 100
            },
            {
              tileid = 9,
              duration = 100
            },
            {
              tileid = 10,
              duration = 100
            },
            {
              tileid = 11,
              duration = 100
            }
          }
        },
        {
          id = 9,
          type = "Player"
        },
        {
          id = 10,
          type = "Player"
        },
        {
          id = 11,
          type = "Player"
        },
        {
          id = 12,
          type = "Player",
          properties = {
            ["name"] = "righttilt",
            ["nextanim"] = "right"
          },
          animation = {
            {
              tileid = 12,
              duration = 100
            },
            {
              tileid = 13,
              duration = 100
            },
            {
              tileid = 14,
              duration = 100
            },
            {
              tileid = 15,
              duration = 100
            }
          }
        },
        {
          id = 13,
          type = "Player"
        },
        {
          id = 14,
          type = "Player"
        },
        {
          id = 15,
          type = "Player",
          properties = {
            ["name"] = "rightuntilt",
            ["nextanim"] = "forward"
          },
          animation = {
            {
              tileid = 15,
              duration = 100
            },
            {
              tileid = 14,
              duration = 100
            },
            {
              tileid = 13,
              duration = 100
            },
            {
              tileid = 12,
              duration = 100
            }
          }
        },
        {
          id = 16,
          type = "Player",
          properties = {
            ["name"] = "right"
          },
          animation = {
            {
              tileid = 16,
              duration = 100
            },
            {
              tileid = 17,
              duration = 100
            },
            {
              tileid = 18,
              duration = 100
            },
            {
              tileid = 19,
              duration = 100
            }
          }
        },
        {
          id = 17,
          type = "Player"
        },
        {
          id = 18,
          type = "Player"
        },
        {
          id = 19,
          type = "Player"
        },
        {
          id = 20,
          type = "Player",
          properties = {
            ["name"] = "bombready",
            ["nextanim"] = "bomblaunch"
          },
          animation = {
            {
              tileid = 20,
              duration = 66
            },
            {
              tileid = 21,
              duration = 99
            },
            {
              tileid = 22,
              duration = 66
            },
            {
              tileid = 23,
              duration = 99
            },
            {
              tileid = 24,
              duration = 66
            },
            {
              tileid = 25,
              duration = 99
            }
          }
        },
        {
          id = 21,
          type = "Player"
        },
        {
          id = 22,
          type = "Player"
        },
        {
          id = 23,
          type = "Player"
        },
        {
          id = 24,
          type = "Player"
        },
        {
          id = 25,
          type = "Player"
        },
        {
          id = 26,
          type = "Player",
          properties = {
            ["name"] = "bomblaunch",
            ["nextanim"] = "forward"
          },
          animation = {
            {
              tileid = 26,
              duration = 66
            },
            {
              tileid = 27,
              duration = 99
            }
          }
        },
        {
          id = 27,
          type = "Player"
        }
      }
    },
    {
      name = "town04_f",
      firstgid = 29,
      filename = "img/town04_f.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 26,
      image = "img/town04_f.png",
      imagewidth = 416,
      imageheight = 384,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {
        {
          name = "Ground18",
          tile = 18,
          properties = {}
        },
        {
          name = "Ground70",
          tile = 70,
          properties = {}
        },
        {
          name = "Ground122",
          tile = 122,
          properties = {}
        },
        {
          name = "Ground174",
          tile = 174,
          properties = {}
        },
        {
          name = "Ground226",
          tile = 226,
          properties = {}
        },
        {
          name = "Ground278",
          tile = 278,
          properties = {}
        },
        {
          name = "Ground330",
          tile = 330,
          properties = {}
        },
        {
          name = "Ground382",
          tile = 382,
          properties = {}
        },
        {
          name = "Ground434",
          tile = 434,
          properties = {}
        },
        {
          name = "Ground486",
          tile = 486,
          properties = {}
        },
        {
          name = "Ground538",
          tile = 538,
          properties = {}
        },
        {
          name = "Ground590",
          tile = 590,
          properties = {}
        },
        {
          name = "Water12",
          tile = 12,
          properties = {}
        },
        {
          name = "Water15",
          tile = 15,
          properties = {}
        },
        {
          name = "Wall27",
          tile = 27,
          properties = {}
        },
        {
          name = "Light18",
          tile = 30,
          properties = {}
        },
        {
          name = "Light278",
          tile = 108,
          properties = {}
        },
        {
          name = "Light226",
          tile = 186,
          properties = {}
        }
      },
      tilecount = 624,
      tiles = {
        {
          id = 0,
          terrain = { -1, -1, -1, 14 }
        },
        {
          id = 1,
          terrain = { -1, -1, 14, 14 }
        },
        {
          id = 2,
          terrain = { -1, -1, 14, -1 }
        },
        {
          id = 3,
          terrain = { 0, 0, 0, 15 }
        },
        {
          id = 4,
          terrain = { 0, 0, 15, 15 }
        },
        {
          id = 5,
          terrain = { 0, 0, 15, 0 }
        },
        {
          id = 12,
          terrain = { 12, 12, 12, 12 },
          animation = {
            {
              tileid = 12,
              duration = 125
            },
            {
              tileid = 13,
              duration = 125
            },
            {
              tileid = 14,
              duration = 125
            },
            {
              tileid = 13,
              duration = 125
            }
          }
        },
        {
          id = 15,
          terrain = { 13, 13, 13, 13 },
          animation = {
            {
              tileid = 15,
              duration = 125
            },
            {
              tileid = 16,
              duration = 125
            },
            {
              tileid = 17,
              duration = 125
            },
            {
              tileid = 16,
              duration = 125
            }
          }
        },
        {
          id = 18,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 19,
          terrain = { 0, 0, 0, 0 },
          probability = 0
        },
        {
          id = 20,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 21,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 22,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 23,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 24,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 25,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 26,
          type = "EnemyBounds",
          terrain = { -1, 14, -1, 14 }
        },
        {
          id = 27,
          type = "EnemyBounds",
          terrain = { 14, 14, 14, 14 }
        },
        {
          id = 28,
          type = "EnemyBounds",
          terrain = { 14, -1, 14, -1 }
        },
        {
          id = 29,
          terrain = { 0, 15, 0, 15 }
        },
        {
          id = 30,
          terrain = { 15, 15, 15, 15 }
        },
        {
          id = 31,
          terrain = { 15, 0, 15, 0 }
        },
        {
          id = 38,
          terrain = { 12, -1, -1, -1 },
          animation = {
            {
              tileid = 38,
              duration = 125
            },
            {
              tileid = 39,
              duration = 125
            },
            {
              tileid = 40,
              duration = 125
            },
            {
              tileid = 39,
              duration = 125
            }
          }
        },
        {
          id = 41,
          terrain = { 13, -1, -1, -1 },
          animation = {
            {
              tileid = 41,
              duration = 125
            },
            {
              tileid = 42,
              duration = 125
            },
            {
              tileid = 43,
              duration = 125
            },
            {
              tileid = 42,
              duration = 125
            }
          }
        },
        {
          id = 44,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 45,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 46,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 47,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 48,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 49,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 50,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 51,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 52,
          terrain = { -1, 14, -1, -1 }
        },
        {
          id = 53,
          terrain = { 14, 14, -1, -1 }
        },
        {
          id = 54,
          terrain = { 14, -1, -1, -1 }
        },
        {
          id = 55,
          terrain = { 0, 15, 0, 0 }
        },
        {
          id = 56,
          terrain = { 15, 15, 0, 0 }
        },
        {
          id = 57,
          terrain = { 15, 0, 0, 0 }
        },
        {
          id = 64,
          terrain = { -1, 12, -1, -1 },
          animation = {
            {
              tileid = 64,
              duration = 125
            },
            {
              tileid = 65,
              duration = 125
            },
            {
              tileid = 66,
              duration = 125
            },
            {
              tileid = 65,
              duration = 125
            }
          }
        },
        {
          id = 67,
          terrain = { -1, 13, -1, -1 },
          animation = {
            {
              tileid = 67,
              duration = 125
            },
            {
              tileid = 68,
              duration = 125
            },
            {
              tileid = 69,
              duration = 125
            },
            {
              tileid = 68,
              duration = 125
            }
          }
        },
        {
          id = 70,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 71,
          terrain = { 1, 1, 1, 1 },
          probability = 0
        },
        {
          id = 72,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 73,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 74,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 75,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 76,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 77,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 81,
          terrain = { 5, 5, 5, 16 }
        },
        {
          id = 82,
          terrain = { 5, 5, 16, 16 }
        },
        {
          id = 83,
          terrain = { 5, 5, 16, 5 }
        },
        {
          id = 84,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 85,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 86,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 87,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 88,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 89,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 90,
          terrain = { -1, -1, 12, -1 },
          animation = {
            {
              tileid = 90,
              duration = 125
            },
            {
              tileid = 91,
              duration = 125
            },
            {
              tileid = 92,
              duration = 125
            },
            {
              tileid = 91,
              duration = 125
            }
          }
        },
        {
          id = 93,
          terrain = { -1, -1, 13, -1 },
          animation = {
            {
              tileid = 93,
              duration = 125
            },
            {
              tileid = 94,
              duration = 125
            },
            {
              tileid = 95,
              duration = 125
            },
            {
              tileid = 94,
              duration = 125
            }
          }
        },
        {
          id = 96,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 97,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 98,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 99,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 100,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 101,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 102,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 103,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 107,
          terrain = { 5, 16, 5, 16 }
        },
        {
          id = 108,
          terrain = { 16, 16, 16, 16 }
        },
        {
          id = 109,
          terrain = { 16, 5, 16, 5 }
        },
        {
          id = 110,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 111,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 112,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 113,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 114,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 115,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 116,
          terrain = { -1, -1, -1, 12 },
          animation = {
            {
              tileid = 116,
              duration = 125
            },
            {
              tileid = 117,
              duration = 125
            },
            {
              tileid = 118,
              duration = 125
            },
            {
              tileid = 117,
              duration = 125
            }
          }
        },
        {
          id = 119,
          terrain = { -1, -1, -1, 13 },
          animation = {
            {
              tileid = 119,
              duration = 125
            },
            {
              tileid = 120,
              duration = 125
            },
            {
              tileid = 121,
              duration = 125
            },
            {
              tileid = 120,
              duration = 125
            }
          }
        },
        {
          id = 122,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 123,
          terrain = { 1, 1, 1, 1 },
          probability = 0
        },
        {
          id = 124,
          terrain = { 1, 1, 1, 2 }
        },
        {
          id = 125,
          terrain = { 1, 1, 2, 2 }
        },
        {
          id = 126,
          terrain = { 1, 1, 2, 1 }
        },
        {
          id = 127,
          terrain = { 1, 2, 1, 2 }
        },
        {
          id = 128,
          terrain = { 2, 1, 2, 1 }
        },
        {
          id = 129,
          terrain = { 1, 2, 1, 1 }
        },
        {
          id = 130,
          type = "EnemyBounds"
        },
        {
          id = 133,
          terrain = { 5, 16, 5, 5 }
        },
        {
          id = 134,
          terrain = { 16, 16, 5, 5 }
        },
        {
          id = 135,
          terrain = { 16, 5, 5, 5 }
        },
        {
          id = 136,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 137,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 138,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 139,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 140,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 141,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 142,
          terrain = { -1, 12, 12, -1 },
          animation = {
            {
              tileid = 142,
              duration = 125
            },
            {
              tileid = 143,
              duration = 125
            },
            {
              tileid = 144,
              duration = 125
            },
            {
              tileid = 143,
              duration = 125
            }
          }
        },
        {
          id = 145,
          terrain = { -1, 13, 13, -1 },
          animation = {
            {
              tileid = 145,
              duration = 125
            },
            {
              tileid = 146,
              duration = 125
            },
            {
              tileid = 147,
              duration = 125
            },
            {
              tileid = 146,
              duration = 125
            }
          }
        },
        {
          id = 148,
          terrain = { 2, 2, 1, 1 }
        },
        {
          id = 149,
          terrain = { 2, 1, 1, 1 }
        },
        {
          id = 150,
          terrain = { 1, 2, 2, 2 }
        },
        {
          id = 151,
          terrain = { 2, 1, 2, 2 }
        },
        {
          id = 152,
          terrain = { 2, 2, 1, 2 }
        },
        {
          id = 153,
          terrain = { 2, 2, 2, 1 }
        },
        {
          id = 154,
          terrain = { 1, 2, 2, 1 }
        },
        {
          id = 155,
          terrain = { 2, 1, 1, 2 }
        },
        {
          id = 159,
          terrain = { 4, 4, 4, 17 }
        },
        {
          id = 160,
          terrain = { 4, 4, 17, 17 }
        },
        {
          id = 161,
          terrain = { 4, 4, 17, 4 }
        },
        {
          id = 162,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 163,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 164,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 165,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 168,
          terrain = { 12, -1, -1, 12 },
          animation = {
            {
              tileid = 168,
              duration = 125
            },
            {
              tileid = 169,
              duration = 125
            },
            {
              tileid = 170,
              duration = 125
            },
            {
              tileid = 169,
              duration = 125
            }
          }
        },
        {
          id = 171,
          terrain = { 13, -1, -1, 13 },
          animation = {
            {
              tileid = 171,
              duration = 125
            },
            {
              tileid = 172,
              duration = 125
            },
            {
              tileid = 173,
              duration = 125
            },
            {
              tileid = 172,
              duration = 125
            }
          }
        },
        {
          id = 174,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 175,
          terrain = { 1, 1, 1, 1 },
          probability = 0
        },
        {
          id = 176,
          terrain = { 1, 1, 1, 3 }
        },
        {
          id = 177,
          terrain = { 1, 1, 3, 3 }
        },
        {
          id = 178,
          terrain = { 1, 1, 3, 1 }
        },
        {
          id = 179,
          terrain = { 1, 3, 1, 3 }
        },
        {
          id = 180,
          terrain = { 3, 1, 3, 1 }
        },
        {
          id = 181,
          terrain = { 1, 3, 1, 1 }
        },
        {
          id = 183,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 184,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 185,
          terrain = { 4, 17, 4, 17 }
        },
        {
          id = 186,
          terrain = { 17, 17, 17, 17 }
        },
        {
          id = 187,
          terrain = { 17, 4, 17, 4 }
        },
        {
          id = 188,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 189,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 190,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 191,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 4,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 192,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 194,
          terrain = { 12, 12, -1, -1 },
          animation = {
            {
              tileid = 194,
              duration = 125
            },
            {
              tileid = 195,
              duration = 125
            },
            {
              tileid = 196,
              duration = 125
            },
            {
              tileid = 195,
              duration = 125
            }
          }
        },
        {
          id = 197,
          terrain = { 13, 13, -1, -1 },
          animation = {
            {
              tileid = 197,
              duration = 125
            },
            {
              tileid = 198,
              duration = 125
            },
            {
              tileid = 199,
              duration = 125
            },
            {
              tileid = 198,
              duration = 125
            }
          }
        },
        {
          id = 200,
          terrain = { 3, 3, 1, 1 }
        },
        {
          id = 201,
          terrain = { 3, 1, 1, 1 }
        },
        {
          id = 202,
          terrain = { 1, 3, 3, 3 }
        },
        {
          id = 203,
          terrain = { 3, 1, 3, 3 }
        },
        {
          id = 204,
          terrain = { 3, 3, 1, 3 }
        },
        {
          id = 205,
          terrain = { 3, 3, 3, 1 }
        },
        {
          id = 206,
          terrain = { 1, 3, 3, 1 }
        },
        {
          id = 207,
          terrain = { 3, 1, 1, 3 }
        },
        {
          id = 211,
          terrain = { 4, 17, 4, 4 }
        },
        {
          id = 212,
          terrain = { 17, 17, 4, 4 }
        },
        {
          id = 213,
          terrain = { 17, 4, 4, 4 }
        },
        {
          id = 214,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 215,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 216,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 220,
          terrain = { -1, -1, 12, 12 },
          animation = {
            {
              tileid = 220,
              duration = 125
            },
            {
              tileid = 221,
              duration = 125
            },
            {
              tileid = 222,
              duration = 125
            },
            {
              tileid = 221,
              duration = 125
            }
          }
        },
        {
          id = 223,
          terrain = { -1, -1, 13, 13 },
          animation = {
            {
              tileid = 223,
              duration = 125
            },
            {
              tileid = 224,
              duration = 125
            },
            {
              tileid = 225,
              duration = 125
            },
            {
              tileid = 224,
              duration = 125
            }
          }
        },
        {
          id = 226,
          terrain = { 4, 4, 4, 4 }
        },
        {
          id = 227,
          terrain = { 0, 0, 0, 0 },
          probability = 0
        },
        {
          id = 228,
          terrain = { 0, 0, 0, 4 }
        },
        {
          id = 229,
          terrain = { 0, 0, 4, 4 }
        },
        {
          id = 230,
          terrain = { 0, 0, 4, 0 }
        },
        {
          id = 231,
          terrain = { 0, 4, 0, 4 }
        },
        {
          id = 232,
          terrain = { 4, 0, 4, 0 }
        },
        {
          id = 233,
          terrain = { 0, 4, 0, 0 }
        },
        {
          id = 243,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 244,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 245,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 246,
          terrain = { 12, -1, 12, -1 },
          animation = {
            {
              tileid = 246,
              duration = 125
            },
            {
              tileid = 247,
              duration = 125
            },
            {
              tileid = 248,
              duration = 125
            },
            {
              tileid = 247,
              duration = 125
            }
          }
        },
        {
          id = 249,
          terrain = { 13, -1, 13, -1 },
          animation = {
            {
              tileid = 249,
              duration = 125
            },
            {
              tileid = 250,
              duration = 125
            },
            {
              tileid = 251,
              duration = 125
            },
            {
              tileid = 250,
              duration = 125
            }
          }
        },
        {
          id = 252,
          terrain = { 4, 4, 0, 0 }
        },
        {
          id = 253,
          terrain = { 4, 0, 0, 0 }
        },
        {
          id = 254,
          terrain = { 0, 4, 4, 4 }
        },
        {
          id = 255,
          terrain = { 4, 0, 4, 4 }
        },
        {
          id = 256,
          terrain = { 4, 4, 0, 4 }
        },
        {
          id = 257,
          terrain = { 4, 4, 4, 0 }
        },
        {
          id = 258,
          terrain = { 0, 4, 4, 0 }
        },
        {
          id = 259,
          terrain = { 4, 0, 0, 4 }
        },
        {
          id = 266,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 267,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 268,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 272,
          terrain = { -1, 12, -1, 12 },
          animation = {
            {
              tileid = 272,
              duration = 125
            },
            {
              tileid = 273,
              duration = 125
            },
            {
              tileid = 274,
              duration = 125
            },
            {
              tileid = 273,
              duration = 125
            }
          }
        },
        {
          id = 275,
          terrain = { -1, 13, -1, 13 },
          animation = {
            {
              tileid = 275,
              duration = 125
            },
            {
              tileid = 276,
              duration = 125
            },
            {
              tileid = 277,
              duration = 125
            },
            {
              tileid = 276,
              duration = 125
            }
          }
        },
        {
          id = 278,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 279,
          terrain = { 0, 0, 0, 0 },
          probability = 0
        },
        {
          id = 280,
          terrain = { 0, 0, 0, 5 }
        },
        {
          id = 281,
          terrain = { 0, 0, 5, 5 }
        },
        {
          id = 282,
          terrain = { 0, 0, 5, 0 }
        },
        {
          id = 283,
          terrain = { 0, 5, 0, 5 }
        },
        {
          id = 284,
          terrain = { 5, 0, 5, 0 }
        },
        {
          id = 285,
          terrain = { 0, 5, 0, 0 }
        },
        {
          id = 298,
          terrain = { 12, 12, 12, -1 },
          animation = {
            {
              tileid = 298,
              duration = 125
            },
            {
              tileid = 299,
              duration = 125
            },
            {
              tileid = 300,
              duration = 125
            },
            {
              tileid = 299,
              duration = 125
            }
          }
        },
        {
          id = 301,
          terrain = { 13, 13, 13, -1 },
          animation = {
            {
              tileid = 301,
              duration = 125
            },
            {
              tileid = 302,
              duration = 125
            },
            {
              tileid = 303,
              duration = 125
            },
            {
              tileid = 302,
              duration = 125
            }
          }
        },
        {
          id = 304,
          terrain = { 5, 5, 0, 0 }
        },
        {
          id = 305,
          terrain = { 5, 0, 0, 0 }
        },
        {
          id = 306,
          terrain = { 0, 5, 5, 5 }
        },
        {
          id = 307,
          terrain = { 5, 0, 5, 5 }
        },
        {
          id = 308,
          terrain = { 5, 5, 0, 5 }
        },
        {
          id = 309,
          terrain = { 5, 5, 5, 0 }
        },
        {
          id = 310,
          terrain = { 0, 5, 5, 0 }
        },
        {
          id = 311,
          terrain = { 5, 0, 0, 5 }
        },
        {
          id = 318,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 319,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 320,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 321,
          type = "EnemyBounds"
        },
        {
          id = 324,
          terrain = { 12, 12, -1, 12 },
          animation = {
            {
              tileid = 324,
              duration = 125
            },
            {
              tileid = 325,
              duration = 125
            },
            {
              tileid = 326,
              duration = 125
            },
            {
              tileid = 325,
              duration = 125
            }
          }
        },
        {
          id = 327,
          terrain = { 13, 13, -1, 13 },
          animation = {
            {
              tileid = 327,
              duration = 125
            },
            {
              tileid = 328,
              duration = 125
            },
            {
              tileid = 329,
              duration = 125
            },
            {
              tileid = 328,
              duration = 125
            }
          }
        },
        {
          id = 330,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 331,
          terrain = { 0, 0, 0, 0 },
          probability = 0
        },
        {
          id = 332,
          terrain = { 0, 0, 0, 6 }
        },
        {
          id = 333,
          terrain = { 0, 0, 6, 6 }
        },
        {
          id = 334,
          terrain = { 0, 0, 6, 0 }
        },
        {
          id = 335,
          terrain = { 0, 6, 0, 6 }
        },
        {
          id = 336,
          terrain = { 6, 0, 6, 0 }
        },
        {
          id = 337,
          terrain = { 0, 6, 0, 0 }
        },
        {
          id = 344,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {}
          }
        },
        {
          id = 345,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {}
          }
        },
        {
          id = 346,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {}
          }
        },
        {
          id = 350,
          terrain = { 12, -1, 12, 12 },
          animation = {
            {
              tileid = 350,
              duration = 125
            },
            {
              tileid = 351,
              duration = 125
            },
            {
              tileid = 352,
              duration = 125
            },
            {
              tileid = 351,
              duration = 125
            }
          }
        },
        {
          id = 353,
          terrain = { 13, -1, 13, 13 },
          animation = {
            {
              tileid = 353,
              duration = 125
            },
            {
              tileid = 354,
              duration = 125
            },
            {
              tileid = 355,
              duration = 125
            },
            {
              tileid = 354,
              duration = 125
            }
          }
        },
        {
          id = 356,
          terrain = { 6, 6, 0, 0 }
        },
        {
          id = 357,
          terrain = { 6, 0, 0, 0 }
        },
        {
          id = 358,
          terrain = { 0, 6, 6, 6 }
        },
        {
          id = 359,
          terrain = { 6, 0, 6, 6 }
        },
        {
          id = 360,
          terrain = { 6, 6, 0, 6 }
        },
        {
          id = 361,
          terrain = { 6, 6, 6, 0 }
        },
        {
          id = 362,
          terrain = { 0, 6, 6, 0 }
        },
        {
          id = 363,
          terrain = { 6, 0, 0, 6 }
        },
        {
          id = 370,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 371,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 372,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 376,
          terrain = { -1, 12, 12, 12 },
          animation = {
            {
              tileid = 376,
              duration = 125
            },
            {
              tileid = 377,
              duration = 125
            },
            {
              tileid = 378,
              duration = 125
            },
            {
              tileid = 377,
              duration = 125
            }
          }
        },
        {
          id = 379,
          terrain = { -1, 13, 13, 13 },
          animation = {
            {
              tileid = 379,
              duration = 125
            },
            {
              tileid = 380,
              duration = 125
            },
            {
              tileid = 381,
              duration = 125
            },
            {
              tileid = 380,
              duration = 125
            }
          }
        },
        {
          id = 382,
          terrain = { 7, 7, 7, 7 }
        },
        {
          id = 383,
          terrain = { 0, 0, 0, 0 },
          probability = 0
        },
        {
          id = 384,
          terrain = { 0, 0, 0, 7 }
        },
        {
          id = 385,
          terrain = { 0, 0, 7, 7 }
        },
        {
          id = 386,
          terrain = { 0, 0, 7, 0 }
        },
        {
          id = 387,
          terrain = { 0, 7, 0, 7 }
        },
        {
          id = 388,
          terrain = { 7, 0, 7, 0 }
        },
        {
          id = 389,
          terrain = { 0, 7, 0, 0 }
        },
        {
          id = 396,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 397,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 398,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 408,
          terrain = { 7, 7, 0, 0 }
        },
        {
          id = 409,
          terrain = { 7, 0, 0, 0 }
        },
        {
          id = 410,
          terrain = { 0, 7, 7, 7 }
        },
        {
          id = 411,
          terrain = { 7, 0, 7, 7 }
        },
        {
          id = 412,
          terrain = { 7, 7, 0, 7 }
        },
        {
          id = 413,
          terrain = { 7, 7, 7, 0 }
        },
        {
          id = 414,
          terrain = { 0, 7, 7, 0 }
        },
        {
          id = 415,
          terrain = { 7, 0, 0, 7 }
        },
        {
          id = 422,
          type = "EnemyBounds"
        },
        {
          id = 423,
          type = "EnemyBounds"
        },
        {
          id = 424,
          type = "EnemyBounds"
        },
        {
          id = 434,
          terrain = { 8, 8, 8, 8 }
        },
        {
          id = 435,
          terrain = { 0, 0, 0, 0 },
          probability = 0
        },
        {
          id = 436,
          terrain = { 0, 0, 0, 8 }
        },
        {
          id = 437,
          terrain = { 0, 0, 8, 8 }
        },
        {
          id = 438,
          terrain = { 0, 0, 8, 0 }
        },
        {
          id = 439,
          terrain = { 0, 8, 0, 8 }
        },
        {
          id = 440,
          terrain = { 8, 0, 8, 0 }
        },
        {
          id = 441,
          terrain = { 0, 8, 0, 0 }
        },
        {
          id = 448,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 449,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 450,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 460,
          terrain = { 8, 8, 0, 0 }
        },
        {
          id = 461,
          terrain = { 8, 0, 0, 0 }
        },
        {
          id = 462,
          terrain = { 0, 8, 8, 8 }
        },
        {
          id = 463,
          terrain = { 8, 0, 8, 8 }
        },
        {
          id = 464,
          terrain = { 8, 8, 0, 8 }
        },
        {
          id = 465,
          terrain = { 8, 8, 8, 0 }
        },
        {
          id = 466,
          terrain = { 0, 8, 8, 0 }
        },
        {
          id = 467,
          terrain = { 8, 0, 0, 8 }
        },
        {
          id = 468,
          type = "EnemyBounds"
        },
        {
          id = 469,
          type = "EnemyBounds"
        },
        {
          id = 470,
          type = "EnemyBounds"
        },
        {
          id = 480,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 481,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 485,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 486,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 487,
          terrain = { 0, 0, 0, 0 },
          probability = 0
        },
        {
          id = 488,
          terrain = { 0, 0, 0, 9 }
        },
        {
          id = 489,
          terrain = { 0, 0, 9, 9 }
        },
        {
          id = 490,
          terrain = { 0, 0, 9, 0 }
        },
        {
          id = 491,
          terrain = { 0, 9, 0, 9 }
        },
        {
          id = 492,
          terrain = { 9, 0, 9, 0 }
        },
        {
          id = 493,
          terrain = { 0, 9, 0, 0 }
        },
        {
          id = 506,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 507,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 508,
          type = "EnemyBounds"
        },
        {
          id = 509,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 510,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 511,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 512,
          terrain = { 9, 9, 0, 0 }
        },
        {
          id = 513,
          terrain = { 9, 0, 0, 0 }
        },
        {
          id = 514,
          terrain = { 0, 9, 9, 9 }
        },
        {
          id = 515,
          terrain = { 9, 0, 9, 9 }
        },
        {
          id = 516,
          terrain = { 9, 9, 0, 9 }
        },
        {
          id = 517,
          terrain = { 9, 9, 9, 0 }
        },
        {
          id = 518,
          terrain = { 0, 9, 9, 0 }
        },
        {
          id = 519,
          terrain = { 9, 0, 0, 9 }
        },
        {
          id = 523,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 524,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 525,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 2,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 532,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 533,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 536,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 537,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 538,
          type = "EnemyBounds",
          terrain = { 10, 10, 10, 10 }
        },
        {
          id = 539,
          terrain = { 0, 0, 0, 0 },
          probability = 0
        },
        {
          id = 540,
          type = "EnemyBounds",
          terrain = { 0, 0, 0, 10 }
        },
        {
          id = 541,
          type = "EnemyBounds",
          terrain = { 0, 0, 10, 10 }
        },
        {
          id = 542,
          type = "EnemyBounds",
          terrain = { 0, 0, 10, 0 }
        },
        {
          id = 543,
          type = "EnemyBounds",
          terrain = { 0, 10, 0, 10 }
        },
        {
          id = 544,
          type = "EnemyBounds",
          terrain = { 10, 0, 10, 0 }
        },
        {
          id = 545,
          type = "EnemyBounds",
          terrain = { 0, 10, 0, 0 }
        },
        {
          id = 546,
          type = "EnemyBounds"
        },
        {
          id = 547,
          type = "EnemyBounds"
        },
        {
          id = 548,
          type = "EnemyBounds"
        },
        {
          id = 549,
          type = "EnemyBounds"
        },
        {
          id = 550,
          type = "EnemyBounds"
        },
        {
          id = 551,
          type = "EnemyBounds"
        },
        {
          id = 558,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 559,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 560,
          type = "EnemyBounds"
        },
        {
          id = 564,
          type = "EnemyBounds",
          terrain = { 10, 10, 0, 0 }
        },
        {
          id = 565,
          type = "EnemyBounds",
          terrain = { 10, 0, 0, 0 }
        },
        {
          id = 566,
          type = "EnemyBounds",
          terrain = { 0, 10, 10, 10 }
        },
        {
          id = 567,
          type = "EnemyBounds",
          terrain = { 10, 0, 10, 10 }
        },
        {
          id = 568,
          type = "EnemyBounds",
          terrain = { 10, 10, 0, 10 }
        },
        {
          id = 569,
          type = "EnemyBounds",
          terrain = { 10, 10, 10, 0 }
        },
        {
          id = 570,
          type = "EnemyBounds",
          terrain = { 0, 10, 10, 0 }
        },
        {
          id = 571,
          type = "EnemyBounds",
          terrain = { 10, 0, 0, 10 }
        },
        {
          id = 584,
          type = "EnemyBounds",
          animation = {
            {
              tileid = 584,
              duration = 125
            },
            {
              tileid = 587,
              duration = 125
            },
            {
              tileid = 610,
              duration = 125
            },
            {
              tileid = 613,
              duration = 125
            }
          }
        },
        {
          id = 585,
          type = "EnemyBounds",
          animation = {
            {
              tileid = 585,
              duration = 125
            },
            {
              tileid = 588,
              duration = 125
            },
            {
              tileid = 611,
              duration = 125
            },
            {
              tileid = 614,
              duration = 125
            }
          }
        },
        {
          id = 586,
          animation = {
            {
              tileid = 586,
              duration = 125
            },
            {
              tileid = 589,
              duration = 125
            },
            {
              tileid = 612,
              duration = 125
            },
            {
              tileid = 615,
              duration = 125
            }
          }
        },
        {
          id = 590,
          terrain = { 11, 11, 11, 11 }
        },
        {
          id = 591,
          terrain = { 1, 1, 1, 1 },
          probability = 0
        },
        {
          id = 592,
          terrain = { 1, 1, 1, 11 }
        },
        {
          id = 593,
          terrain = { 1, 1, 11, 11 }
        },
        {
          id = 594,
          terrain = { 1, 1, 11, 1 }
        },
        {
          id = 595,
          terrain = { 1, 11, 1, 11 }
        },
        {
          id = 596,
          terrain = { 11, 1, 11, 1 }
        },
        {
          id = 597,
          terrain = { 1, 11, 1, 1 }
        },
        {
          id = 616,
          terrain = { 11, 11, 1, 1 }
        },
        {
          id = 617,
          terrain = { 11, 1, 1, 1 }
        },
        {
          id = 618,
          terrain = { 1, 11, 11, 11 }
        },
        {
          id = 619,
          terrain = { 11, 1, 11, 11 }
        },
        {
          id = 620,
          terrain = { 11, 11, 1, 11 }
        },
        {
          id = 621,
          terrain = { 11, 11, 11, 1 }
        },
        {
          id = 622,
          terrain = { 1, 11, 11, 1 }
        },
        {
          id = 623,
          terrain = { 11, 1, 1, 11 }
        }
      }
    },
    {
      name = "wineguards",
      firstgid = 653,
      filename = "img/wineguards.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 18,
      image = "img/wineguards.png",
      imagewidth = 432,
      imageheight = 160,
      tileoffset = {
        x = -12,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 24,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 90,
      tiles = {
        {
          id = 0,
          type = "WineCaptain",
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 4,
                name = "",
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 6,
                y = 12,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "WineCaptain"
        },
        {
          id = 2,
          type = "WineCaptain"
        },
        {
          id = 3,
          type = "WineGuard"
        },
        {
          id = 4,
          type = "WineGuard"
        },
        {
          id = 5,
          type = "WineGuard"
        },
        {
          id = 9,
          type = "WineNun"
        },
        {
          id = 10,
          type = "WineNun"
        },
        {
          id = 11,
          type = "WineNun"
        },
        {
          id = 12,
          type = "WineHighPriest"
        },
        {
          id = 13,
          type = "WineHighPriest"
        },
        {
          id = 14,
          type = "WineHighPriest"
        },
        {
          id = 15,
          type = "WineHighPriestess"
        },
        {
          id = 16,
          type = "WineHighPriestess"
        },
        {
          id = 17,
          type = "WineHighPriestess"
        },
        {
          id = 18,
          type = "WineCaptain"
        },
        {
          id = 19,
          type = "WineCaptain"
        },
        {
          id = 20,
          type = "WineCaptain"
        },
        {
          id = 21,
          type = "WineGuard"
        },
        {
          id = 22,
          type = "WineGuard"
        },
        {
          id = 23,
          type = "WineGuard"
        },
        {
          id = 27,
          type = "WineNun"
        },
        {
          id = 28,
          type = "WineNun"
        },
        {
          id = 29,
          type = "WineNun"
        },
        {
          id = 30,
          type = "WineHighPriest"
        },
        {
          id = 31,
          type = "WineHighPriest"
        },
        {
          id = 32,
          type = "WineHighPriest"
        },
        {
          id = 33,
          type = "WineHighPriestess"
        },
        {
          id = 34,
          type = "WineHighPriestess"
        },
        {
          id = 35,
          type = "WineHighPriestess"
        },
        {
          id = 36,
          type = "WineCaptain"
        },
        {
          id = 37,
          type = "WineCaptain"
        },
        {
          id = 38,
          type = "WineCaptain"
        },
        {
          id = 39,
          type = "WineGuard"
        },
        {
          id = 40,
          type = "WineGuard"
        },
        {
          id = 41,
          type = "WineGuard"
        },
        {
          id = 45,
          type = "WineNun"
        },
        {
          id = 46,
          type = "WineNun"
        },
        {
          id = 47,
          type = "WineNun"
        },
        {
          id = 48,
          type = "WineHighPriest"
        },
        {
          id = 49,
          type = "WineHighPriest"
        },
        {
          id = 50,
          type = "WineHighPriest"
        },
        {
          id = 51,
          type = "WineHighPriestess"
        },
        {
          id = 52,
          type = "WineHighPriestess"
        },
        {
          id = 53,
          type = "WineHighPriestess"
        },
        {
          id = 54,
          type = "WineCaptain"
        },
        {
          id = 55,
          type = "WineCaptain"
        },
        {
          id = 56,
          type = "WineCaptain"
        },
        {
          id = 57,
          type = "WineGuard"
        },
        {
          id = 58,
          type = "WineGuard"
        },
        {
          id = 59,
          type = "WineGuard"
        },
        {
          id = 63,
          type = "WineNun"
        },
        {
          id = 64,
          type = "WineNun"
        },
        {
          id = 65,
          type = "WineNun"
        },
        {
          id = 66,
          type = "WineHighPriest"
        },
        {
          id = 67,
          type = "WineHighPriest"
        },
        {
          id = 68,
          type = "WineHighPriest"
        },
        {
          id = 69,
          type = "WineHighPriestess"
        },
        {
          id = 70,
          type = "WineHighPriestess"
        },
        {
          id = 71,
          type = "WineHighPriestess"
        },
        {
          id = 72,
          type = "WineDefeatedEnemy",
          properties = {
            ["name"] = "kocaptain"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 12,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        },
        {
          id = 73,
          type = "WineDefeatedEnemy"
        },
        {
          id = 74,
          type = "WineDefeatedEnemy"
        },
        {
          id = 75,
          type = "WineDefeatedEnemy",
          properties = {
            ["name"] = "koguard"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 13,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        },
        {
          id = 76,
          type = "WineDefeatedEnemy"
        },
        {
          id = 77,
          type = "WineDefeatedEnemy"
        },
        {
          id = 78,
          type = "WineDefeatedEnemy",
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 12,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        },
        {
          id = 79,
          type = "WineDefeatedEnemy"
        },
        {
          id = 80,
          type = "WineDefeatedEnemy"
        },
        {
          id = 81,
          type = "WineDefeatedEnemy",
          properties = {
            ["name"] = "konun"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 2,
                name = "",
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        },
        {
          id = 82,
          type = "WineDefeatedEnemy"
        },
        {
          id = 83,
          type = "WineDefeatedEnemy"
        },
        {
          id = 84,
          type = "WineDefeatedEnemy",
          properties = {
            ["name"] = "kohighpriest"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        },
        {
          id = 85,
          type = "WineDefeatedEnemy"
        },
        {
          id = 86,
          type = "WineDefeatedEnemy"
        },
        {
          id = 87,
          type = "WineDefeatedEnemy",
          properties = {
            ["name"] = "kohighpriestess"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 10,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        },
        {
          id = 88,
          type = "WineDefeatedEnemy"
        },
        {
          id = 89,
          type = "WineDefeatedEnemy"
        }
      }
    },
    {
      name = "winecivilians",
      firstgid = 743,
      filename = "img/winecivilians.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 24,
      image = "img/winecivilians.png",
      imagewidth = 576,
      imageheight = 128,
      tileoffset = {
        x = -12,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 24,
        height = 32
      },
      properties = {
        ["colname00"] = "waiter",
        ["colname03"] = "waitress",
        ["colname06"] = "guest_grandpa",
        ["colname09"] = "guest_grandma",
        ["colname12"] = "guest_dad",
        ["colname15"] = "guest_mom",
        ["colname18"] = "guest_son",
        ["colname21"] = "guest_daughter",
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 96,
      tiles = {
        {
          id = 0,
          type = "WineCivilian",
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 2,
                name = "",
                type = "CollisionCivilian",
                shape = "rectangle",
                x = 6,
                y = 12,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "WineCivilian"
        },
        {
          id = 2,
          type = "WineCivilian"
        },
        {
          id = 3,
          type = "WineCivilian"
        },
        {
          id = 4,
          type = "WineCivilian"
        },
        {
          id = 5,
          type = "WineCivilian"
        },
        {
          id = 6,
          type = "WineCivilian"
        },
        {
          id = 7,
          type = "WineCivilian"
        },
        {
          id = 8,
          type = "WineCivilian"
        },
        {
          id = 9,
          type = "WineCivilian"
        },
        {
          id = 10,
          type = "WineCivilian"
        },
        {
          id = 11,
          type = "WineCivilian"
        },
        {
          id = 12,
          type = "WineCivilian"
        },
        {
          id = 13,
          type = "WineCivilian"
        },
        {
          id = 14,
          type = "WineCivilian"
        },
        {
          id = 15,
          type = "WineCivilian"
        },
        {
          id = 16,
          type = "WineCivilian"
        },
        {
          id = 17,
          type = "WineCivilian"
        },
        {
          id = 18,
          type = "WineCivilian"
        },
        {
          id = 19,
          type = "WineCivilian"
        },
        {
          id = 20,
          type = "WineCivilian"
        },
        {
          id = 21,
          type = "WineCivilian"
        },
        {
          id = 22,
          type = "WineCivilian"
        },
        {
          id = 23,
          type = "WineCivilian"
        },
        {
          id = 24,
          type = "WineCivilian"
        },
        {
          id = 25,
          type = "WineCivilian"
        },
        {
          id = 26,
          type = "WineCivilian"
        },
        {
          id = 27,
          type = "WineCivilian"
        },
        {
          id = 28,
          type = "WineCivilian"
        },
        {
          id = 29,
          type = "WineCivilian"
        },
        {
          id = 30,
          type = "WineCivilian"
        },
        {
          id = 31,
          type = "WineCivilian"
        },
        {
          id = 32,
          type = "WineCivilian"
        },
        {
          id = 33,
          type = "WineCivilian"
        },
        {
          id = 34,
          type = "WineCivilian"
        },
        {
          id = 35,
          type = "WineCivilian"
        },
        {
          id = 36,
          type = "WineCivilian"
        },
        {
          id = 37,
          type = "WineCivilian"
        },
        {
          id = 38,
          type = "WineCivilian"
        },
        {
          id = 39,
          type = "WineCivilian"
        },
        {
          id = 40,
          type = "WineCivilian"
        },
        {
          id = 41,
          type = "WineCivilian"
        },
        {
          id = 42,
          type = "WineCivilian"
        },
        {
          id = 43,
          type = "WineCivilian"
        },
        {
          id = 44,
          type = "WineCivilian"
        },
        {
          id = 45,
          type = "WineCivilian"
        },
        {
          id = 46,
          type = "WineCivilian"
        },
        {
          id = 47,
          type = "WineCivilian"
        },
        {
          id = 48,
          type = "WineCivilian"
        },
        {
          id = 49,
          type = "WineCivilian"
        },
        {
          id = 50,
          type = "WineCivilian"
        },
        {
          id = 51,
          type = "WineCivilian"
        },
        {
          id = 52,
          type = "WineCivilian"
        },
        {
          id = 53,
          type = "WineCivilian"
        },
        {
          id = 54,
          type = "WineCivilian"
        },
        {
          id = 55,
          type = "WineCivilian"
        },
        {
          id = 56,
          type = "WineCivilian"
        },
        {
          id = 57,
          type = "WineCivilian"
        },
        {
          id = 58,
          type = "WineCivilian"
        },
        {
          id = 59,
          type = "WineCivilian"
        },
        {
          id = 60,
          type = "WineCivilian"
        },
        {
          id = 61,
          type = "WineCivilian"
        },
        {
          id = 62,
          type = "WineCivilian"
        },
        {
          id = 63,
          type = "WineCivilian"
        },
        {
          id = 64,
          type = "WineCivilian"
        },
        {
          id = 65,
          type = "WineCivilian"
        },
        {
          id = 66,
          type = "WineCivilian"
        },
        {
          id = 67,
          type = "WineCivilian"
        },
        {
          id = 68,
          type = "WineCivilian"
        },
        {
          id = 69,
          type = "WineCivilian"
        },
        {
          id = 70,
          type = "WineCivilian"
        },
        {
          id = 71,
          type = "WineCivilian"
        },
        {
          id = 72,
          type = "WineCivilian"
        },
        {
          id = 73,
          type = "WineCivilian"
        },
        {
          id = 74,
          type = "WineCivilian"
        },
        {
          id = 75,
          type = "WineCivilian"
        },
        {
          id = 76,
          type = "WineCivilian"
        },
        {
          id = 77,
          type = "WineCivilian"
        },
        {
          id = 78,
          type = "WineCivilian"
        },
        {
          id = 79,
          type = "WineCivilian"
        },
        {
          id = 80,
          type = "WineCivilian"
        },
        {
          id = 81,
          type = "WineCivilian"
        },
        {
          id = 82,
          type = "WineCivilian"
        },
        {
          id = 83,
          type = "WineCivilian"
        },
        {
          id = 84,
          type = "WineCivilian"
        },
        {
          id = 85,
          type = "WineCivilian"
        },
        {
          id = 86,
          type = "WineCivilian"
        },
        {
          id = 87,
          type = "WineCivilian"
        },
        {
          id = 88,
          type = "WineCivilian"
        },
        {
          id = 89,
          type = "WineCivilian"
        },
        {
          id = 90,
          type = "WineCivilian"
        },
        {
          id = 91,
          type = "WineCivilian"
        },
        {
          id = 92,
          type = "WineCivilian"
        },
        {
          id = 93,
          type = "WineCivilian"
        },
        {
          id = 94,
          type = "WineCivilian"
        },
        {
          id = 95,
          type = "WineCivilian"
        }
      }
    },
    {
      name = "wineitems",
      firstgid = 839,
      filename = "img/wineitems.tsx",
      tilewidth = 8,
      tileheight = 24,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "img/wineitems.png",
      imagewidth = 32,
      imageheight = 48,
      tileoffset = {
        x = -4,
        y = 2
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 24
      },
      properties = {
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 8,
      tiles = {
        {
          id = 0,
          type = "ItemLiquor",
          properties = {
            ["alcohol"] = 0.02,
            ["itemtype"] = "glass_redwine",
            ["name"] = "glass_redwine"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 2,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 1,
          type = "ItemLiquor",
          properties = {
            ["itemtype"] = "glass_mediumwine",
            ["name"] = "glass_mediumwine"
          }
        },
        {
          id = 2,
          type = "ItemLiquor",
          properties = {
            ["itemtype"] = "glass_lightwine",
            ["name"] = "glass_lightwine"
          }
        },
        {
          id = 3,
          type = "ItemLiquor",
          properties = {
            ["alcohol"] = 0.02,
            ["itemtype"] = "glass_darkwine",
            ["name"] = "glass_darkwine"
          }
        },
        {
          id = 4,
          type = "ItemLiquor",
          properties = {
            ["alcohol"] = 0.2,
            ["itemtype"] = "bottle_redwine",
            ["name"] = "bottle_redwine"
          }
        },
        {
          id = 5,
          type = "ItemLiquor",
          properties = {
            ["alcohol"] = 0.15,
            ["itemtype"] = "bottle_mediumwine",
            ["name"] = "bottle_mediumwine"
          }
        },
        {
          id = 6,
          type = "ItemLiquor",
          properties = {
            ["alcohol"] = 0.1,
            ["itemtype"] = "bottle_lightwine",
            ["name"] = "bottle_lightwine"
          }
        },
        {
          id = 7,
          type = "ItemLiquor",
          properties = {
            ["alcohol"] = 0.25,
            ["itemtype"] = "bottle_darkwine",
            ["name"] = "bottle_darkwine"
          }
        }
      }
    },
    {
      name = "emotes",
      firstgid = 847,
      filename = "img/emotes.tsx",
      tilewidth = 24,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "img/emotes.png",
      imagewidth = 192,
      imageheight = 48,
      tileoffset = {
        x = -12,
        y = -16
      },
      grid = {
        orientation = "orthogonal",
        width = 24,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 24,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "drunk"
          },
          animation = {
            {
              tileid = 0,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            },
            {
              tileid = 3,
              duration = 125
            }
          }
        },
        {
          id = 4,
          properties = {
            ["name"] = "heart"
          },
          animation = {
            {
              tileid = 4,
              duration = 125
            },
            {
              tileid = 5,
              duration = 125
            },
            {
              tileid = 6,
              duration = 125
            },
            {
              tileid = 7,
              duration = 125
            }
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "sweat"
          },
          animation = {
            {
              tileid = 8,
              duration = 66
            },
            {
              tileid = 9,
              duration = 66
            },
            {
              tileid = 10,
              duration = 66
            }
          }
        },
        {
          id = 11,
          properties = {
            ["name"] = "help"
          },
          animation = {
            {
              tileid = 11,
              duration = 125
            },
            {
              tileid = 12,
              duration = 125
            },
            {
              tileid = 13,
              duration = 125
            },
            {
              tileid = 14,
              duration = 125
            },
            {
              tileid = 15,
              duration = 125
            }
          }
        },
        {
          id = 16,
          properties = {
            ["name"] = "stun"
          },
          animation = {
            {
              tileid = 16,
              duration = 125
            },
            {
              tileid = 17,
              duration = 125
            },
            {
              tileid = 18,
              duration = 125
            },
            {
              tileid = 17,
              duration = 125
            }
          }
        },
        {
          id = 19,
          properties = {
            ["name"] = "hostile"
          }
        },
        {
          id = 20,
          properties = {
            ["name"] = "angry"
          },
          animation = {
            {
              tileid = 20,
              duration = 125
            },
            {
              tileid = 21,
              duration = 125
            },
            {
              tileid = 22,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "explosion_giant",
      firstgid = 871,
      filename = "img/explosion_giant.tsx",
      tilewidth = 256,
      tileheight = 256,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "img/explosion_giant.png",
      imagewidth = 1024,
      imageheight = 1024,
      tileoffset = {
        x = -128,
        y = 128
      },
      grid = {
        orientation = "orthogonal",
        width = 256,
        height = 256
      },
      properties = {},
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          type = "Spark",
          animation = {
            {
              tileid = 0,
              duration = 67
            },
            {
              tileid = 1,
              duration = 67
            },
            {
              tileid = 2,
              duration = 67
            },
            {
              tileid = 3,
              duration = 67
            },
            {
              tileid = 4,
              duration = 67
            },
            {
              tileid = 5,
              duration = 67
            },
            {
              tileid = 6,
              duration = 67
            },
            {
              tileid = 7,
              duration = 67
            },
            {
              tileid = 8,
              duration = 67
            },
            {
              tileid = 9,
              duration = 67
            },
            {
              tileid = 10,
              duration = 67
            },
            {
              tileid = 11,
              duration = 67
            },
            {
              tileid = 12,
              duration = 67
            },
            {
              tileid = 13,
              duration = 67
            },
            {
              tileid = 14,
              duration = 67
            },
            {
              tileid = 15,
              duration = 67
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "town04_f_low",
      x = 0,
      y = 0,
      width = 18,
      height = 100,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHtmEluFEEQRctmEOMBGITa5gAIjI0HLsBgt7EQN4AlcAxA7FkgJsMFWICEBByBDRJwCoPNAeA/qb4UCmWW22UvbMmLr4yM4VdGZFRldq81TfNbeDrWNGutfE7j3fGmeaYxAh02+8WYI4o/KszKHuV7inkvXQS67OeYSXGcF1YUE+VPmn9LQJf9HHOMtQoX5BPl75qPiX+8xQGN6LJfjMEGpoVrrcz8oGL/aQSHJNvvhuY3BeaXBOZ+Xmk8E3jOSi75WOfn7ZbxlNa7E1hs67SskdotCdSb+UUBnX3Yg+st0E0J9p+RTAx26g6IvyzAgUw8cfiwR8SyT34Oc+9lacTOM3gWXKyz5Lev27wu0+qfGeGK4Hr10c0qfkqYCzx9dH1ivO4YG+WSfVTdPk/3vu5UfebVN4vCUuif7ei8v7tljGeezxJGzr8uW14/Z95nfe++BHyVzPnXZSvx/FDcz4BfgadmK/H8Udx6wEbgqdlKPJvlRZ6cu/g55xJPbe3UBxt5wmM53h3Mh29t7Vvl6cqLZ1CvUdbTlVe8j5izT161tbouHrt6zfUp9ZbjPXb5dtkc7xHfrv2q2Rzv8bB4Svep09J32Ry/rL3knsPdhjsP9xrfm2baue9V3I24vzASQywYCpzJOwHO5PvieyA8FKK8Ihvf3BpuyUa88Ujxj4UnQpQ5818ILwt4JZ3PCPOsKv6t8E6IMjyvhecFvCnwmC+PW+WJNYnyVnliTaIMz6rwoYCPhbxiTaK8LN+unhjKnmtRmscca3IpLutijjU5x5TmMcea7Lhar25V7/d1r4zcEbgrbHe9fCdL50IXr38PuPf4rWCekq3Glb8DvBfmKdn2Co/vqe5B7rDOq2SLeS3pGxjnWTZP1sc5ZwznSNRlmbOLMyzr45xzivUMhYEwKUQ755f1+NjG2RX1nH1wcZbNC1fbuf15hvWckdbzP4L1nJHk5XP0tuQ77dz+rMf6yIPdejiGAtyO6zu6NuTG85iTe3w3+Q/Da7ce37g/xLN21jUQqDOy9yjqWWtJ73sD3LHOxBIDeIbrGfNnfdZz9yAP5+a6EWsecrI+5gGn9fhio96O6zsOxUFd+8Y7jrWYZyB5Qog9zf74t1j8tmZfamwe6rYg0NN+Du+o79/x25p96WXqTdy6YjaEv8JmPNl3qHjWRNzx8aY5IZwUNuPJvnDA5R5g/+L+1vJyPVxfYuChTwbChBDrXOOJvvQSvHCCXDtyq/FEX6/f/Z5r18WTfXlP8Ae5dl082Zfe4R31O0YfUCtz1/IaygdfgMw+Ecf3YyD0qTMcrIVa+/vQp5/hoMY71c/er1w7ahR/d8UzLPuSE3tGjQB95BozDgRqlutGHdx39I/Xwkie5Ej9zeV+y3XDz99N1kIsew83vKwp9pT7LX8H2G/8GYklxnX2GuLoOuTvQPRBpm9A1nse73Lx/2DbPZJbF0+8y3HHc1xpdK1LtlF5XNsSB7pRefDNPRM5R+WBY17f44yF9htd4pkr+BP/HzcwF2k="
    },
    {
      type = "tilelayer",
      id = 2,
      name = "town04_f_mid",
      x = 0,
      y = 0,
      width = 18,
      height = 100,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHtVslNBEEMbMgAfkQARMH5JQKOhJA4kgCy4M4AfiwEAfwpS2NRsrzF7uwAj3VLVle77PJOaVo7rdUqB8qBcuD/HdhYbG0LwWvSXJ+eTLt0vh2YV39OF1o7R/CaNMc9hbUDK7jr9o5tdvd+j+6+4jJV1om84rhWzVQcazhWMxXn/barmYpjDcdqpuK833Y1U3Gs4VjNVJz3265mKo41HNv9PkvuvfGK8/7a/8aBFxrDmNI/wmtU3HRVjLnxHu/CA+IRMcsaof8V8SZ0+DcwjnNHMZGc2RPGSemvp5bwzMvdczMecrA94ypmrCMijnP4NzCOdXUezoF3SH0gPhNJxSXlvVPH6Lzo0X2JnhPqY51tfKvsIHbpm8VLI2c6V05i5zu+j/f2AHGIiCtytyi4i0UDn+0urSHsPsWlOKs9SnqixrjzLL3jNIfMP0PsKRGcNp9IVIocmNbPcfUkWbAcKAfKgXKAHMj+b7MctRScQwe+AIToV54="
    },
    {
      type = "objectgroup",
      id = 3,
      name = "groundobjects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    },
    {
      type = "tilelayer",
      id = 4,
      name = "town04_f_high",
      x = 0,
      y = 0,
      width = 18,
      height = 100,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHtlU0yBEEQhZs9biGYLUewFnY4BmHGIfzcAwsCN7Dyu8cSwQ3Y8TKmK+JFyurOmu5mIqYqomaqX2Z+mZXd1V0UeeQO5A7kDozegf5UUexi8vBqHHMNxo3ieDXmvIDxqjhejTnnYKxNs1IUXo2jLsG5UPV4NeY8gHGvOF6NOR9gvCuOV2POMnpzpjhejTmr4NwqjldjzikYb4rj1ZiT19Ud+EaP5XwPMOXcL9EZqbJZ1DvE1406H8l5Bch8CdL1SLzYxIdtpfuvP3n2Yjnl+a4bUg8Pzsk2bz2hdmbKOuw5Vmvwl5ziE2rX9YhN9iyDbUPF/q3LaUcN1br7JV5hz23U06TWqn1k2992YBvp9suUvOYqjvAsH2OeYHY9uAZed523a/4nEnyVSXjddt4Z3KO58j7xWufhGnit/fJ1ex14BOoJ89lAVtkM95GlLUSG854COYDzTiRgAd+5Rcye8R2vsgluL8L0yIcep0SfHr3j5PzM0nlilGXj2BXicJxn3STWw2/qMwCgb0BSdQORJepAaj9j/oTMS6MD69A2MDcNm5ZSfHXspF+n9C7Fd9L7qvef0rsUX53nv6/5extqsbRgi/3L9zb0IbwHxv0bHNtL1se/Az9qkm25"
    },
    {
      type = "objectgroup",
      id = 5,
      name = "highobjects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      id = 6,
      name = "camera",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 2,
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 24,
          y = 1280,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {
            ["pathid"] = "mylayer",
            ["pathspeed"] = 30
          }
        },
        {
          id = 3,
          name = "path",
          type = "",
          shape = "polyline",
          x = 24,
          y = 0,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 16 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 7,
      name = "fleepaths",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 49,
          name = "",
          type = "",
          shape = "polyline",
          x = 16,
          y = 1296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 64, y = 0 },
            { x = -32, y = 0 }
          },
          properties = {}
        },
        {
          id = 50,
          name = "",
          type = "",
          shape = "polyline",
          x = 16,
          y = 1376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 64, y = 0 },
            { x = -32, y = 0 }
          },
          properties = {}
        },
        {
          id = 51,
          name = "",
          type = "",
          shape = "polyline",
          x = 16,
          y = 1456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 64, y = 0 },
            { x = -32, y = 0 }
          },
          properties = {}
        },
        {
          id = 52,
          name = "",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -96, y = 0 }
          },
          properties = {}
        },
        {
          id = 53,
          name = "",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -96, y = 0 }
          },
          properties = {}
        },
        {
          id = 54,
          name = "",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -96, y = 0 }
          },
          properties = {}
        },
        {
          id = 28,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -240 }
          },
          properties = {}
        },
        {
          id = 95,
          name = "",
          type = "",
          shape = "polyline",
          x = 104,
          y = 1008,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -40, y = 0 },
            { x = -64, y = 24 },
            { x = -112, y = 24 }
          },
          properties = {}
        },
        {
          id = 97,
          name = "",
          type = "",
          shape = "polyline",
          x = 184,
          y = 1008,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 40, y = 0 },
            { x = 64, y = 24 },
            { x = 112, y = 24 }
          },
          properties = {}
        },
        {
          id = 99,
          name = "",
          type = "",
          shape = "polyline",
          x = 48,
          y = 976,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 16 },
            { x = 8, y = 32 },
            { x = -8, y = 48 },
            { x = -64, y = 48 }
          },
          properties = {}
        },
        {
          id = 100,
          name = "",
          type = "",
          shape = "polyline",
          x = 232,
          y = 976,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 16 },
            { x = 0, y = 32 },
            { x = 16, y = 48 },
            { x = 72, y = 48 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 8,
      name = "paths",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 9,
      name = "boss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 249,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 0,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["activateobjectslayer"] = "groundobjects",
            ["cleartowin"] = true
          }
        },
        {
          id = 250,
          name = "",
          type = "WineHighPriestFanAttack1",
          shape = "rectangle",
          x = 144,
          y = -24,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 683,
          visible = true,
          properties = {}
        },
        {
          id = 251,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 56,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 32, y = 32 },
            { x = 64, y = 32 },
            { x = 96, y = 64 },
            { x = 64, y = 64 },
            { x = 48, y = 80 },
            { x = 16, y = 80 },
            { x = 0, y = 64 },
            { x = -16, y = 80 },
            { x = -48, y = 80 },
            { x = -64, y = 64 },
            { x = -96, y = 64 },
            { x = -64, y = 32 },
            { x = -32, y = 32 },
            { x = 0, y = 0 }
          },
          properties = {}
        },
        {
          id = 252,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = -16,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 686,
          visible = true,
          properties = {
            ["rideid"] = 250
          }
        },
        {
          id = 253,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = -16,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 686,
          visible = true,
          properties = {
            ["rideid"] = 250
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 10,
      name = "preboss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 126,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 72,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["soundfile"] = "snd/alarm4.ogg"
          }
        },
        {
          id = 210,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 40,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 509,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 211,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 40,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 510,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 212,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 40,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 562,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 213,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 56,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 535,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 214,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 56,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 536,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 215,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 40,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 561,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 216,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 56,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 588,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 217,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 56,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 587,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 218,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 40,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 509,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 219,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 40,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 510,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 220,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 56,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 535,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 221,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 56,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 536,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 222,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 40,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 562,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 223,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 40,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 561,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 224,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 56,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 588,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 225,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 56,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 587,
          visible = true,
          properties = {
            ["static"] = true
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 11,
      name = "prebosspowerup",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 163,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 256,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 846,
          visible = true,
          properties = {}
        },
        {
          id = 162,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 256,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 843,
          visible = true,
          properties = {}
        },
        {
          id = 226,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 256,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 843,
          visible = true,
          properties = {}
        },
        {
          id = 227,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 232,
          width = 16,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "highobjects"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 12,
      name = "guard12",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 228,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 104,
          y = 344,
          width = 80,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        },
        {
          id = 241,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 336,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 242,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 312,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 243,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 288,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 680,
          visible = true,
          properties = {}
        },
        {
          id = 244,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 336,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 245,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 312,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 246,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 288,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 680,
          visible = true,
          properties = {}
        },
        {
          id = 247,
          name = "",
          type = "",
          shape = "polyline",
          x = 40,
          y = 312,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 104 },
            { x = 16, y = 120 },
            { x = 32, y = 120 },
            { x = 48, y = 104 },
            { x = 48, y = -72 },
            { x = -64, y = -184 }
          },
          properties = {}
        },
        {
          id = 248,
          name = "",
          type = "",
          shape = "polyline",
          x = 248,
          y = 336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 80 },
            { x = -16, y = 96 },
            { x = -32, y = 96 },
            { x = -48, y = 80 },
            { x = -48, y = -96 },
            { x = 64, y = -208 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 13,
      name = "guard11",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 209,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 104,
          y = 376,
          width = 80,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        },
        {
          id = 229,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 230,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 231,
          name = "",
          type = "",
          shape = "polyline",
          x = 120,
          y = 368,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 40 },
            { x = -48, y = 88 },
            { x = -64, y = 88 },
            { x = -88, y = 112 },
            { x = -88, y = 352 }
          },
          properties = {}
        },
        {
          id = 232,
          name = "",
          type = "",
          shape = "polyline",
          x = 168,
          y = 368,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 40 },
            { x = 48, y = 88 },
            { x = 64, y = 88 },
            { x = 88, y = 112 },
            { x = 88, y = 352 }
          },
          properties = {}
        },
        {
          id = 233,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 320,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 234,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 344,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 235,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 344,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 236,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 320,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 237,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 296,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 238,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 296,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 239,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 272,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 240,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 272,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 14,
      name = "highobj7",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 159,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 488,
          width = 16,
          height = 104,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "highobjects"
          }
        },
        {
          id = 160,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 544,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 161,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 576,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 164,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 584,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 165,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 504,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 166,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 520,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 842,
          visible = true,
          properties = {}
        },
        {
          id = 167,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 592,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 842,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 15,
      name = "guard10",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 193,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 104,
          y = 528,
          width = 80,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        },
        {
          id = 194,
          name = "",
          type = "",
          shape = "polyline",
          x = 32,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 40 },
            { x = 8, y = 152 },
            { x = 32, y = 176 },
            { x = 80, y = 176 },
            { x = 104, y = 152 },
            { x = 104, y = -8 },
            { x = 88, y = -24 },
            { x = -48, y = -24 }
          },
          properties = {}
        },
        {
          id = 195,
          name = "",
          type = "",
          shape = "polyline",
          x = 256,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 40 },
            { x = -8, y = 152 },
            { x = -32, y = 176 },
            { x = -80, y = 176 },
            { x = -104, y = 152 },
            { x = -104, y = -8 },
            { x = -88, y = -24 },
            { x = 48, y = -24 }
          },
          properties = {}
        },
        {
          id = 197,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 520,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 680,
          visible = true,
          properties = {}
        },
        {
          id = 198,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 520,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 680,
          visible = true,
          properties = {}
        },
        {
          id = 199,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 680,
          visible = true,
          properties = {}
        },
        {
          id = 200,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 680,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 16,
      name = "guard9",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 196,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 576,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        },
        {
          id = 201,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 544,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 202,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 544,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 203,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 520,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 204,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 520,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 205,
          name = "",
          type = "",
          shape = "polyline",
          x = 136,
          y = 568,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 80 },
            { x = -24, y = 104 },
            { x = -80, y = 104 },
            { x = -112, y = 72 },
            { x = -112, y = -112 },
            { x = -160, y = -160 }
          },
          properties = {}
        },
        {
          id = 206,
          name = "",
          type = "",
          shape = "polyline",
          x = 152,
          y = 568,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 80 },
            { x = 24, y = 104 },
            { x = 80, y = 104 },
            { x = 112, y = 72 },
            { x = 112, y = -112 },
            { x = 160, y = -160 }
          },
          properties = {}
        },
        {
          id = 207,
          name = "",
          type = "",
          shape = "polyline",
          x = 136,
          y = 568,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -24 },
            { x = 0, y = -48 }
          },
          properties = {}
        },
        {
          id = 208,
          name = "",
          type = "",
          shape = "polyline",
          x = 152,
          y = 568,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -24 },
            { x = 0, y = -48 }
          },
          properties = {}
        },
        {
          id = 179,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 180,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 17,
      name = "guard8",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 170,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 680,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        },
        {
          id = 171,
          name = "",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 712,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 172,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 712,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 173,
          name = "",
          type = "",
          shape = "rectangle",
          x = 392,
          y = 712,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 174,
          name = "",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 752,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 175,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 752,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 176,
          name = "",
          type = "",
          shape = "rectangle",
          x = 392,
          y = 752,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 177,
          name = "",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 712,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 178,
          name = "",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 752,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 181,
          name = "",
          type = "",
          shape = "polyline",
          x = 296,
          y = 712,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -184, y = 0 },
            { x = -200, y = -16 },
            { x = -216, y = -16 },
            { x = -240, y = 8 },
            { x = -240, y = 144 },
            { x = -200, y = 184 },
            { x = -160, y = 224 }
          },
          properties = {}
        },
        {
          id = 182,
          name = "",
          type = "",
          shape = "polyline",
          x = 296,
          y = 752,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -48, y = 48 },
            { x = -168, y = 48 },
            { x = -192, y = 24 },
            { x = -192, y = -40 },
            { x = -208, y = -56 },
            { x = -224, y = -56 },
            { x = -240, y = -40 },
            { x = -240, y = 288 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 18,
      name = "highobj6",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 134,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 720,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 846,
          visible = true,
          properties = {}
        },
        {
          id = 146,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 696,
          width = 8,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "highobjects"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 19,
      name = "highobj5",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 145,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 768,
          width = 8,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "highobjects"
          }
        },
        {
          id = 129,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 792,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 130,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 792,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 842,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 20,
      name = "guard7",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 147,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 792,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        },
        {
          id = 148,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 784,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 149,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 760,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 150,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 736,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 151,
          name = "",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 800,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 152,
          name = "",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 800,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 153,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 784,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 154,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 760,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 155,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 736,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 156,
          name = "",
          type = "",
          shape = "polyline",
          x = 56,
          y = 784,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 88 },
            { x = 24, y = 112 },
            { x = 56, y = 112 },
            { x = 80, y = 136 },
            { x = 80, y = 264 },
            { x = 64, y = 280 },
            { x = 64, y = 328 }
          },
          properties = {}
        },
        {
          id = 157,
          name = "",
          type = "",
          shape = "polyline",
          x = 104,
          y = 784,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 88 },
            { x = 24, y = 112 },
            { x = 48, y = 136 },
            { x = 48, y = 264 },
            { x = 64, y = 280 },
            { x = 64, y = 328 }
          },
          properties = {}
        },
        {
          id = 158,
          name = "",
          type = "",
          shape = "polyline",
          x = 296,
          y = 800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -168, y = 0 },
            { x = -192, y = 24 },
            { x = -192, y = 56 },
            { x = -168, y = 80 },
            { x = 8, y = 80 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 21,
      name = "highobj4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 127,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 840,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 842,
          visible = true,
          properties = {}
        },
        {
          id = 128,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 840,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 131,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 840,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 132,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 816,
          width = 8,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "highobjects"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 22,
      name = "guard6",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 133,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 864,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        },
        {
          id = 135,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 912,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 136,
          name = "",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 936,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {}
        },
        {
          id = 143,
          name = "",
          type = "",
          shape = "polyline",
          x = -16,
          y = 912,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 56, y = 0 },
            { x = 88, y = -32 },
            { x = 144, y = -32 },
            { x = 176, y = 0 },
            { x = 176, y = 144 },
            { x = 224, y = 192 },
            { x = 224, y = 328 }
          },
          properties = {}
        },
        {
          id = 144,
          name = "",
          type = "",
          shape = "polyline",
          x = -16,
          y = 936,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 96, y = 304 },
            { x = 96, y = 168 },
            { x = 144, y = 120 },
            { x = 144, y = 0 },
            { x = 176, y = -32 },
            { x = 232, y = -32 },
            { x = 264, y = 0 },
            { x = 320, y = 0 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 23,
      name = "guard5",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 109,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 110,
          name = "",
          type = "",
          shape = "polyline",
          x = 40,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -8 },
            { x = 24, y = 16 },
            { x = 72, y = 16 },
            { x = 88, y = 32 },
            { x = 88, y = 112 },
            { x = 56, y = 144 },
            { x = 56, y = 280 }
          },
          properties = {}
        },
        {
          id = 111,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 896,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 112,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 113,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 896,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 114,
          name = "",
          type = "",
          shape = "polyline",
          x = 16,
          y = 896,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 40, y = 40 },
            { x = 40, y = 104 },
            { x = 48, y = 112 },
            { x = 104, y = 112 },
            { x = 120, y = 128 },
            { x = 120, y = 160 },
            { x = 96, y = 184 },
            { x = 96, y = 328 }
          },
          properties = {}
        },
        {
          id = 115,
          name = "",
          type = "",
          shape = "polyline",
          x = 248,
          y = 920,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -24, y = 24 },
            { x = -72, y = 24 },
            { x = -88, y = 40 },
            { x = -88, y = 120 },
            { x = -56, y = 152 },
            { x = -56, y = 288 }
          },
          properties = {}
        },
        {
          id = 116,
          name = "",
          type = "",
          shape = "polyline",
          x = 272,
          y = 896,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -40, y = 40 },
            { x = -40, y = 104 },
            { x = -48, y = 112 },
            { x = -104, y = 112 },
            { x = -120, y = 128 },
            { x = -120, y = 160 },
            { x = -96, y = 184 },
            { x = -96, y = 328 }
          },
          properties = {}
        },
        {
          id = 117,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 936,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 24,
      name = "guard4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1056,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 1088,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 78,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1056,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 1088,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 86,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 1064,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        },
        {
          id = 82,
          name = "",
          type = "",
          shape = "polyline",
          x = 96,
          y = 1056,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 48 },
            { x = 24, y = 72 },
            { x = 24, y = 344 }
          },
          properties = {}
        },
        {
          id = 83,
          name = "",
          type = "",
          shape = "polyline",
          x = 192,
          y = 1056,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 48 },
            { x = -24, y = 72 },
            { x = -24, y = 344 }
          },
          properties = {}
        },
        {
          id = 84,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1088,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = 96, y = 64 },
            { x = 96, y = 328 }
          },
          properties = {}
        },
        {
          id = 85,
          name = "",
          type = "",
          shape = "polyline",
          x = 296,
          y = 1088,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -104, y = 64 },
            { x = -104, y = 352 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 25,
      name = "highobj3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 87,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 984,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 272,
          visible = true,
          properties = {}
        },
        {
          id = 88,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 968,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 246,
          visible = true,
          properties = {}
        },
        {
          id = 89,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 984,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 90,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 968,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 512,
          visible = true,
          properties = {}
        },
        {
          id = 101,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 952,
          width = 64,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "highobjects"
          }
        },
        {
          id = 118,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 984,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 845,
          visible = true,
          properties = {}
        },
        {
          id = 119,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 992,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 840,
          visible = true,
          properties = {}
        },
        {
          id = 120,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 992,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 121,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 976,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 842,
          visible = true,
          properties = {}
        },
        {
          id = 122,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 992,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 26,
      name = "guests1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 102,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 1008,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 809,
          visible = true,
          properties = {}
        },
        {
          id = 103,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 992,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 806,
          visible = true,
          properties = {}
        },
        {
          id = 104,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 992,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 755,
          visible = true,
          properties = {}
        },
        {
          id = 105,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 1008,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 764,
          visible = true,
          properties = {}
        },
        {
          id = 108,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 1016,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 27,
      name = "highobj2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 65,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1080,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 72,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1080,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 73,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 1080,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 75,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 1064,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "highobjects"
          }
        },
        {
          id = 140,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1080,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 840,
          visible = true,
          properties = {}
        },
        {
          id = 141,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1084,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 142,
          name = "",
          type = "",
          shape = "rectangle",
          x = 54,
          y = 1082,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 840,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 28,
      name = "highobj1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 66,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 1160,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 70,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1160,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 71,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1160,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 74,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 1144,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "highobjects"
          }
        },
        {
          id = 137,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1160,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 840,
          visible = true,
          properties = {}
        },
        {
          id = 138,
          name = "",
          type = "",
          shape = "rectangle",
          x = 244,
          y = 1164,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {}
        },
        {
          id = 139,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1164,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 29,
      name = "guard2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 67,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 1144,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        },
        {
          id = 91,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 80, y = 0 },
            { x = 112, y = 32 },
            { x = 112, y = 224 },
            { x = 80, y = 256 },
            { x = 80, y = 336 }
          },
          properties = {}
        },
        {
          id = 92,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1208,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 93,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 1208,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 94,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 1208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -80, y = 0 },
            { x = -112, y = 32 },
            { x = -112, y = 224 },
            { x = -80, y = 256 },
            { x = -80, y = 336 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 30,
      name = "guard1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 55,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1224,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 57,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 1232,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "groundobjects"
          }
        },
        {
          id = 68,
          name = "",
          type = "",
          shape = "polyline",
          x = 96,
          y = 1224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 24, y = 80 },
            { x = 24, y = 168 },
            { x = 0, y = 216 },
            { x = 0, y = 304 }
          },
          properties = {}
        },
        {
          id = 56,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1224,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 674,
          visible = true,
          properties = {}
        },
        {
          id = 69,
          name = "",
          type = "",
          shape = "polyline",
          x = 192,
          y = 1224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = -24, y = 80 },
            { x = -24, y = 168 },
            { x = 0, y = 208 },
            { x = 0, y = 304 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 31,
      name = "wine1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 8,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 1232,
          width = 16,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "highobjects"
          }
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1248,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1248,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1400,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1400,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1248,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1248,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 839,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1328,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 840,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1416,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1328,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 840,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1336,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 840,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1408,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1416,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1416,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1328,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 840,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1408,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1400,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1336,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 840,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1328,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 840,
          visible = true,
          properties = {}
        },
        {
          id = 183,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1408,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 184,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1328,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 185,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1328,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 189,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1408,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 190,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1248,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 191,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1472,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        },
        {
          id = 192,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1248,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 38,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 32,
      name = "reception",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 25,
          name = "receptionist",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1456,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 767,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 26,
          name = "receptionist",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 1456,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 770,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 27,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 1304,
          width = 32,
          height = 168,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 29,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 1368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 749,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 30,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1384,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 752,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 31,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1296,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 779,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 32,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 1456,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 827,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 33,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 758,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 34,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 1288,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 803,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1384,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 836,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 1440,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 785,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 1376,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 806,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1376,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 800,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1288,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 764,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 40,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1432,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 782,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 1456,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 824,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 42,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 1312,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 830,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1440,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 776,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 44,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1440,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 812,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 45,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 1296,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 46,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1440,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 755,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 47,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 1360,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 797,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 48,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 1304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 833,
          visible = true,
          properties = {
            ["pathid"] = "fleepaths",
            ["pathmode"] = "relative"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 33,
      name = "sparks",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      id = 34,
      name = "playershots",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      id = 35,
      name = "playerteam",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PlayerTeam"
      },
      objects = {
        {
          id = 1,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1632,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["script"] = "DrunkShmupPlayer"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 36,
      name = "wineitems",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["itemtileset"] = "wineitems",
        ["script"] = "ItemsLayer"
      },
      objects = {}
    }
  }
}
