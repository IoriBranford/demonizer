return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.17.0",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 19,
  height = 140,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 23,
  properties = {
    ["cameraid"] = 1,
    ["music"] = "20 - My Kingdom.vgm",
    ["playerid"] = 2,
    ["script"] = "ShmupMap"
  },
  tilesets = {
    {
      name = "imp",
      firstgid = 1,
      filename = "imp.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "imp.png",
      imagewidth = 192,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 32
      },
      properties = {},
      terrains = {},
      tilecount = 3,
      tiles = {
        {
          id = 0,
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
                name = "body",
                type = "",
                shape = "ellipse",
                x = -4,
                y = 60,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 7,
                name = "ally1",
                type = "",
                shape = "ellipse",
                x = -24,
                y = 72,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              },
              {
                id = 8,
                name = "ally2",
                type = "",
                shape = "ellipse",
                x = 24,
                y = 72,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              },
              {
                id = 10,
                name = "ally3",
                type = "",
                shape = "ellipse",
                x = -16,
                y = 48,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              },
              {
                id = 11,
                name = "ally4",
                type = "",
                shape = "ellipse",
                x = 16,
                y = 48,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              },
              {
                id = 12,
                name = "focusally1",
                type = "",
                shape = "ellipse",
                x = -32,
                y = 40,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              },
              {
                id = 13,
                name = "focusally2",
                type = "",
                shape = "ellipse",
                x = 32,
                y = 40,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              },
              {
                id = 14,
                name = "focusally3",
                type = "",
                shape = "ellipse",
                x = -16,
                y = 8,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              },
              {
                id = 15,
                name = "focusally4",
                type = "",
                shape = "ellipse",
                x = 16,
                y = 8,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            }
          }
        }
      }
    },
    {
      name = "demonshots",
      firstgid = 4,
      filename = "demonshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "demonshots.png",
      imagewidth = 32,
      imageheight = 64,
      tileoffset = {
        x = -16,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_ally"] = 1,
        ["row_bombpackage"] = 2,
        ["row_bombshrapnel"] = 3,
        ["row_player"] = 0
      },
      terrains = {},
      tilecount = 4,
      tiles = {
        {
          id = 0,
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
                type = "",
                shape = "ellipse",
                x = -8,
                y = 8,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        }
      }
    },
    {
      name = "map_cave",
      firstgid = 8,
      filename = "map_cave.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "map_cave.png",
      imagewidth = 256,
      imageheight = 336,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {
        {
          name = "ground",
          tile = 17,
          properties = {}
        },
        {
          name = "darkwater",
          tile = 50,
          properties = {}
        },
        {
          name = "pit",
          tile = 136,
          properties = {}
        },
        {
          name = "clearwater",
          tile = 219,
          properties = {}
        }
      },
      tilecount = 336,
      tiles = {
        {
          id = 0,
          terrain = { 1, 1, 1, 0 }
        },
        {
          id = 1,
          terrain = { 1, 1, 0, 0 }
        },
        {
          id = 2,
          terrain = { 1, 1, 0, 1 }
        },
        {
          id = 16,
          terrain = { 1, 0, 1, 0 }
        },
        {
          id = 17,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 18,
          terrain = { 0, 1, 0, 1 }
        },
        {
          id = 32,
          terrain = { 1, 0, 1, 1 }
        },
        {
          id = 33,
          terrain = { 0, 0, 1, 1 }
        },
        {
          id = 34,
          terrain = { 0, 1, 1, 1 }
        },
        {
          id = 48,
          terrain = { 1, 0, 0, 0 }
        },
        {
          id = 49,
          terrain = { 0, 1, 0, 0 }
        },
        {
          id = 50,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 64,
          terrain = { 0, 0, 1, 0 }
        },
        {
          id = 65,
          terrain = { 0, 0, 0, 1 }
        },
        {
          id = 86,
          terrain = { 2, 2, 2, 0 }
        },
        {
          id = 87,
          terrain = { 2, 2, 0, 0 }
        },
        {
          id = 88,
          terrain = { 2, 2, 0, 2 }
        },
        {
          id = 102,
          terrain = { 2, 0, 2, 0 }
        },
        {
          id = 103,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 104,
          terrain = { 0, 2, 0, 2 }
        },
        {
          id = 118,
          terrain = { 2, 0, 2, 2 }
        },
        {
          id = 119,
          terrain = { 0, 0, 2, 2 }
        },
        {
          id = 120,
          terrain = { 0, 2, 2, 2 }
        },
        {
          id = 134,
          terrain = { 2, 0, 0, 0 }
        },
        {
          id = 135,
          terrain = { 0, 2, 0, 0 }
        },
        {
          id = 136,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 144,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 145,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 150,
          terrain = { 0, 0, 2, 0 }
        },
        {
          id = 151,
          terrain = { 0, 0, 0, 2 }
        },
        {
          id = 160,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 161,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 176,
          terrain = { -1, -1, -1, 0 }
        },
        {
          id = 177,
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 178,
          terrain = { -1, -1, 0, -1 }
        },
        {
          id = 192,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 193,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 194,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 208,
          terrain = { -1, 0, -1, -1 }
        },
        {
          id = 209,
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 210,
          terrain = { 0, -1, -1, -1 }
        },
        {
          id = 214,
          terrain = { 3, 3, 3, 0 }
        },
        {
          id = 215,
          terrain = { 3, 3, 0, 0 }
        },
        {
          id = 216,
          terrain = { 3, 3, 0, 3 }
        },
        {
          id = 217,
          terrain = { 3, 0, 0, 0 }
        },
        {
          id = 218,
          terrain = { 0, 3, 0, 0 }
        },
        {
          id = 219,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 224,
          terrain = { -1, 0, 0, 0 }
        },
        {
          id = 225,
          terrain = { 0, -1, 0, 0 }
        },
        {
          id = 230,
          terrain = { 3, 0, 3, 0 }
        },
        {
          id = 231,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 232,
          terrain = { 0, 3, 0, 3 }
        },
        {
          id = 233,
          terrain = { 0, 0, 3, 0 }
        },
        {
          id = 234,
          terrain = { 0, 0, 0, 3 }
        },
        {
          id = 240,
          terrain = { 0, 0, -1, 0 }
        },
        {
          id = 241,
          terrain = { 0, 0, 0, -1 }
        },
        {
          id = 246,
          terrain = { 3, 0, 3, 3 }
        },
        {
          id = 247,
          terrain = { 0, 0, 3, 3 }
        },
        {
          id = 248,
          terrain = { 0, 3, 3, 3 }
        }
      }
    },
    {
      name = "hud_icons",
      firstgid = 344,
      filename = "hud_icons.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "hud_icons.png",
      imagewidth = 32,
      imageheight = 32,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 4,
      tiles = {}
    },
    {
      name = "bombgauge",
      firstgid = 348,
      filename = "bombgauge.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "bombgauge.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {
        ["row_full"] = 1,
        ["row_notfull"] = 0
      },
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
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
                name = "fill",
                type = "",
                shape = "rectangle",
                x = 6,
                y = 4,
                width = 4,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["color"] = "#ffaadfff",
                  ["direction"] = "up"
                }
              }
            }
          }
        },
        {
          id = 8,
          animation = {
            {
              tileid = "8",
              duration = "100"
            },
            {
              tileid = "9",
              duration = "100"
            },
            {
              tileid = "10",
              duration = "100"
            },
            {
              tileid = "11",
              duration = "100"
            },
            {
              tileid = "12",
              duration = "100"
            },
            {
              tileid = "13",
              duration = "100"
            },
            {
              tileid = "14",
              duration = "100"
            },
            {
              tileid = "15",
              duration = "100"
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 19,
      height = 140,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "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"
    },
    {
      type = "objectgroup",
      name = "camera",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1920,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["pathid"] = 6,
            ["pathtime"] = 60,
            ["script"] = "ShmupCam",
            ["sensor"] = true
          }
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "polyline",
          x = 32,
          y = 1920,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -1920 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "player",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 2208,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["script"] = "ShmupPlayer"
          }
        }
      }
    },
    {
      type = "tilelayer",
      name = "Tile Layer 2",
      x = 0,
      y = 0,
      width = 19,
      height = 140,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztzkEJADEQBMHTknOQ+PeWWGjYZzXMd6j1zfS/7aGv87aGvrhaXC2uFleLq8XV4mpxtbhaXC2uFleLq8XV4mpxtbhaXC2uFleLq8XV4mpxtbhaXC2uFleLq8XV4mpxtbhaXK1p1wVfwy59"
    },
    {
      type = "objectgroup",
      name = "collision",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["collidable"] = true,
        ["static"] = true
      },
      objects = {
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 16,
          height = 2240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 0,
          width = 16,
          height = 2256,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "hud",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["scoreid"] = 7,
        ["script"] = "ShmupStatus"
      },
      objects = {
        {
          id = 7,
          name = "score",
          type = "",
          shape = "rectangle",
          x = 4,
          y = 4,
          width = 232,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ShmupScore",
            ["text"] = "SC00000000 EX01000000",
            ["textalign"] = "left",
            ["textfont"] = "pressstart2p.fnt",
            ["textformat"] = "SC%8d EX%8d"
          }
        },
        {
          id = 8,
          name = "life1",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 344,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "life2",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 344,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "life3",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 344,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "life4",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 344,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "life5",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 344,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "life6",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 344,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "life7",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 344,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "life8",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 344,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "life9",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 344,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "bomb1",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 348,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 18,
          name = "bomb2",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 348,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 19,
          name = "bomb3",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 348,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 20,
          name = "wingleft",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 346,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "wingright",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 347,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "reserves",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 36,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["text"] = "0",
            ["textalign"] = "center",
            ["textfont"] = "pressstart2p.fnt"
          }
        }
      }
    }
  }
}
