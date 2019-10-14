return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 24,
  height = 32,
  tilewidth = 10,
  tileheight = 10,
  nextlayerid = 17,
  nextobjectid = 51,
  properties = {
    ["cameraid"] = 11,
    ["nextmap"] = "mainmenu.lua",
    ["playerid"] = 42,
    ["script"] = "MenuMap"
  },
  tilesets = {
    {
      name = "bg_swirl",
      firstgid = 1,
      filename = "img/bg_swirl.tsx",
      tilewidth = 10,
      tileheight = 10,
      spacing = 0,
      margin = 0,
      columns = 5,
      image = "img/bg_swirl.png",
      imagewidth = 50,
      imageheight = 50,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 5,
        height = 5
      },
      properties = {},
      terrains = {},
      tilecount = 25,
      tiles = {}
    },
    {
      name = "title_demonization",
      firstgid = 26,
      filename = "img/title_demonization.tsx",
      tilewidth = 32,
      tileheight = 24,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "img/title_demonization.png",
      imagewidth = 256,
      imageheight = 48,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 24
      },
      properties = {},
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 100
            },
            {
              tileid = 2,
              duration = 150
            },
            {
              tileid = 4,
              duration = 100
            },
            {
              tileid = 6,
              duration = 150
            }
          }
        },
        {
          id = 1,
          animation = {
            {
              tileid = 1,
              duration = 100
            },
            {
              tileid = 3,
              duration = 150
            },
            {
              tileid = 5,
              duration = 100
            },
            {
              tileid = 7,
              duration = 150
            }
          }
        },
        {
          id = 8,
          animation = {
            {
              tileid = 8,
              duration = 100
            },
            {
              tileid = 10,
              duration = 150
            },
            {
              tileid = 12,
              duration = 100
            },
            {
              tileid = 14,
              duration = 150
            }
          }
        }
      }
    },
    {
      name = "title",
      firstgid = 42,
      filename = "img/title.tsx",
      tilewidth = 200,
      tileheight = 50,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/title.png",
      imagewidth = 200,
      imageheight = 50,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 200,
        height = 50
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "player",
      firstgid = 43,
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
                shape = "ellipse",
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
                shape = "ellipse",
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
                shape = "ellipse",
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
                shape = "ellipse",
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
                shape = "ellipse",
                x = 0,
                y = 8,
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
                shape = "ellipse",
                x = 64,
                y = 8,
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
                shape = "ellipse",
                x = 16,
                y = -24,
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
                shape = "ellipse",
                x = 48,
                y = -24,
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
      name = "converted",
      firstgid = 71,
      filename = "img/human/converted.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/human/converted.png",
      imagewidth = 144,
      imageheight = 576,
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
        ["colstype"] = "direction",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["directiontilestride"] = 3,
        ["numdirections"] = 2,
        ["rowname0"] = "ArcherF",
        ["rowname1"] = "CatapultOperatorF",
        ["rowname10"] = "aristocrate-f-03",
        ["rowname11"] = "townfolk-adult-f-001",
        ["rowname12"] = "townfolk-adult-f-002",
        ["rowname13"] = "townfolk-adult-f-003",
        ["rowname14"] = "townfolk-adult-f-005",
        ["rowname15"] = "townfolk-adult-f-006",
        ["rowname16"] = "FireArcherF",
        ["rowname17"] = "AssassinF",
        ["rowname2"] = "DancerF",
        ["rowname3"] = "MageF",
        ["rowname4"] = "PikemanF",
        ["rowname5"] = "PriestF",
        ["rowname6"] = "SailorF",
        ["rowname7"] = "SwordsmanF",
        ["rowname8"] = "aristocrate-f-01",
        ["rowname9"] = "aristocrate-f-02",
        ["rowstype"] = "state"
      },
      terrains = {},
      tilecount = 108,
      tiles = {
        {
          id = 0,
          type = "PlayerWingman",
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
                x = 7,
                y = 11,
                width = 10,
                height = 10,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
                  ["sensor"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 1,
              duration = 100
            },
            {
              tileid = 2,
              duration = 150
            },
            {
              tileid = 1,
              duration = 100
            },
            {
              tileid = 0,
              duration = 150
            }
          }
        },
        {
          id = 1,
          type = "PlayerWingman"
        },
        {
          id = 2,
          type = "PlayerWingman"
        },
        {
          id = 3,
          type = "PlayerWingman"
        },
        {
          id = 4,
          type = "PlayerWingman"
        },
        {
          id = 5,
          type = "PlayerWingman"
        },
        {
          id = 6,
          type = "PlayerWingman"
        },
        {
          id = 7,
          type = "PlayerWingman"
        },
        {
          id = 8,
          type = "PlayerWingman"
        },
        {
          id = 9,
          type = "PlayerWingman"
        },
        {
          id = 10,
          type = "PlayerWingman"
        },
        {
          id = 11,
          type = "PlayerWingman"
        },
        {
          id = 12,
          type = "PlayerWingman",
          animation = {
            {
              tileid = 13,
              duration = 100
            },
            {
              tileid = 14,
              duration = 150
            },
            {
              tileid = 13,
              duration = 100
            },
            {
              tileid = 12,
              duration = 150
            }
          }
        },
        {
          id = 13,
          type = "PlayerWingman"
        },
        {
          id = 14,
          type = "PlayerWingman"
        },
        {
          id = 15,
          type = "PlayerWingman"
        },
        {
          id = 16,
          type = "PlayerWingman"
        },
        {
          id = 17,
          type = "PlayerWingman"
        },
        {
          id = 18,
          type = "PlayerWingman"
        },
        {
          id = 19,
          type = "PlayerWingman"
        },
        {
          id = 20,
          type = "PlayerWingman"
        },
        {
          id = 21,
          type = "PlayerWingman"
        },
        {
          id = 22,
          type = "PlayerWingman"
        },
        {
          id = 23,
          type = "PlayerWingman"
        },
        {
          id = 24,
          type = "PlayerWingman"
        },
        {
          id = 25,
          type = "PlayerWingman"
        },
        {
          id = 26,
          type = "PlayerWingman"
        },
        {
          id = 27,
          type = "PlayerWingman"
        },
        {
          id = 28,
          type = "PlayerWingman"
        },
        {
          id = 29,
          type = "PlayerWingman"
        },
        {
          id = 30,
          type = "PlayerWingman"
        },
        {
          id = 31,
          type = "PlayerWingman"
        },
        {
          id = 32,
          type = "PlayerWingman"
        },
        {
          id = 33,
          type = "PlayerWingman"
        },
        {
          id = 34,
          type = "PlayerWingman"
        },
        {
          id = 35,
          type = "PlayerWingman"
        },
        {
          id = 36,
          type = "PlayerWingman"
        },
        {
          id = 37,
          type = "PlayerWingman"
        },
        {
          id = 38,
          type = "PlayerWingman"
        },
        {
          id = 39,
          type = "PlayerWingman"
        },
        {
          id = 40,
          type = "PlayerWingman"
        },
        {
          id = 41,
          type = "PlayerWingman"
        },
        {
          id = 42,
          type = "PlayerWingman"
        },
        {
          id = 43,
          type = "PlayerWingman"
        },
        {
          id = 44,
          type = "PlayerWingman"
        },
        {
          id = 45,
          type = "PlayerWingman"
        },
        {
          id = 46,
          type = "PlayerWingman"
        },
        {
          id = 47,
          type = "PlayerWingman"
        },
        {
          id = 48,
          type = "PlayerWingman"
        },
        {
          id = 49,
          type = "PlayerWingman"
        },
        {
          id = 50,
          type = "PlayerWingman"
        },
        {
          id = 51,
          type = "PlayerWingman",
          animation = {
            {
              tileid = 52,
              duration = 100
            },
            {
              tileid = 53,
              duration = 150
            },
            {
              tileid = 52,
              duration = 100
            },
            {
              tileid = 51,
              duration = 150
            }
          }
        },
        {
          id = 52,
          type = "PlayerWingman"
        },
        {
          id = 53,
          type = "PlayerWingman"
        },
        {
          id = 54,
          type = "PlayerWingman"
        },
        {
          id = 55,
          type = "PlayerWingman"
        },
        {
          id = 56,
          type = "PlayerWingman"
        },
        {
          id = 57,
          type = "PlayerWingman"
        },
        {
          id = 58,
          type = "PlayerWingman"
        },
        {
          id = 59,
          type = "PlayerWingman"
        },
        {
          id = 60,
          type = "PlayerWingman",
          animation = {
            {
              tileid = 61,
              duration = 100
            },
            {
              tileid = 62,
              duration = 150
            },
            {
              tileid = 61,
              duration = 100
            },
            {
              tileid = 60,
              duration = 150
            }
          }
        },
        {
          id = 61,
          type = "PlayerWingman"
        },
        {
          id = 62,
          type = "PlayerWingman"
        },
        {
          id = 63,
          type = "PlayerWingman"
        },
        {
          id = 64,
          type = "PlayerWingman"
        },
        {
          id = 65,
          type = "PlayerWingman"
        },
        {
          id = 66,
          type = "PlayerWingman"
        },
        {
          id = 67,
          type = "PlayerWingman"
        },
        {
          id = 68,
          type = "PlayerWingman"
        },
        {
          id = 69,
          type = "PlayerWingman"
        },
        {
          id = 70,
          type = "PlayerWingman"
        },
        {
          id = 71,
          type = "PlayerWingman"
        },
        {
          id = 72,
          type = "PlayerWingman"
        },
        {
          id = 73,
          type = "PlayerWingman"
        },
        {
          id = 74,
          type = "PlayerWingman"
        },
        {
          id = 75,
          type = "PlayerWingman",
          animation = {
            {
              tileid = 76,
              duration = 100
            },
            {
              tileid = 77,
              duration = 150
            },
            {
              tileid = 76,
              duration = 100
            },
            {
              tileid = 75,
              duration = 150
            }
          }
        },
        {
          id = 76,
          type = "PlayerWingman"
        },
        {
          id = 77,
          type = "PlayerWingman"
        },
        {
          id = 78,
          type = "PlayerWingman"
        },
        {
          id = 79,
          type = "PlayerWingman"
        },
        {
          id = 80,
          type = "PlayerWingman"
        },
        {
          id = 81,
          type = "PlayerWingman"
        },
        {
          id = 82,
          type = "PlayerWingman"
        },
        {
          id = 83,
          type = "PlayerWingman"
        },
        {
          id = 84,
          type = "PlayerWingman"
        },
        {
          id = 85,
          type = "PlayerWingman"
        },
        {
          id = 86,
          type = "PlayerWingman"
        },
        {
          id = 87,
          type = "PlayerWingman"
        },
        {
          id = 88,
          type = "PlayerWingman"
        },
        {
          id = 89,
          type = "PlayerWingman"
        },
        {
          id = 90,
          type = "PlayerWingman"
        },
        {
          id = 91,
          type = "PlayerWingman"
        },
        {
          id = 92,
          type = "PlayerWingman"
        },
        {
          id = 93,
          type = "PlayerWingman"
        },
        {
          id = 94,
          type = "PlayerWingman"
        },
        {
          id = 95,
          type = "PlayerWingman"
        },
        {
          id = 96,
          type = "PlayerWingman"
        },
        {
          id = 97,
          type = "PlayerWingman"
        },
        {
          id = 98,
          type = "PlayerWingman"
        },
        {
          id = 99,
          type = "PlayerWingman"
        },
        {
          id = 100,
          type = "PlayerWingman"
        },
        {
          id = 101,
          type = "PlayerWingman"
        }
      }
    },
    {
      name = "demonization",
      firstgid = 179,
      filename = "img/demonization.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "img/demonization.png",
      imagewidth = 256,
      imageheight = 128,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {},
      terrains = {},
      tilecount = 8,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "demonizing"
          },
          animation = {
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 3,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 3,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 3,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            }
          }
        },
        {
          id = 4,
          properties = {
            ["name"] = "demonized"
          },
          animation = {
            {
              tileid = 4,
              duration = 100
            },
            {
              tileid = 5,
              duration = 150
            },
            {
              tileid = 6,
              duration = 100
            },
            {
              tileid = 7,
              duration = 150
            }
          }
        }
      }
    },
    {
      name = "powergauge",
      firstgid = 187,
      filename = "img/powergauge.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "img/powergauge.png",
      imagewidth = 128,
      imageheight = 32,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 4,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "notfull"
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
                name = "power1",
                type = "",
                shape = "ellipse",
                x = 17,
                y = 0,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 2,
                name = "power2",
                type = "",
                shape = "ellipse",
                x = 21,
                y = 2,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 3,
                name = "power3",
                type = "",
                shape = "ellipse",
                x = 24,
                y = 5,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 4,
                name = "power4",
                type = "",
                shape = "ellipse",
                x = 27,
                y = 8,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 5,
                name = "power5",
                type = "",
                shape = "ellipse",
                x = 29,
                y = 12,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 6,
                name = "power6",
                type = "",
                shape = "ellipse",
                x = 29,
                y = 17,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 7,
                name = "power7",
                type = "",
                shape = "ellipse",
                x = 27,
                y = 21,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 8,
                name = "power8",
                type = "",
                shape = "ellipse",
                x = 24,
                y = 24,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 9,
                name = "power9",
                type = "",
                shape = "ellipse",
                x = 21,
                y = 27,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 10,
                name = "power10",
                type = "",
                shape = "ellipse",
                x = 17,
                y = 29,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 11,
                name = "power18",
                type = "",
                shape = "ellipse",
                x = 5,
                y = 5,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 12,
                name = "power14",
                type = "",
                shape = "ellipse",
                x = 2,
                y = 21,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 13,
                name = "power15",
                type = "",
                shape = "ellipse",
                x = 0,
                y = 17,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 14,
                name = "power16",
                type = "",
                shape = "ellipse",
                x = 0,
                y = 12,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 15,
                name = "power12",
                type = "",
                shape = "ellipse",
                x = 8,
                y = 27,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 16,
                name = "power11",
                type = "",
                shape = "ellipse",
                x = 12,
                y = 29,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 17,
                name = "power13",
                type = "",
                shape = "ellipse",
                x = 5,
                y = 24,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 18,
                name = "power17",
                type = "",
                shape = "ellipse",
                x = 2,
                y = 8,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 19,
                name = "power19",
                type = "",
                shape = "ellipse",
                x = 8,
                y = 2,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 20,
                name = "power20",
                type = "",
                shape = "ellipse",
                x = 12,
                y = 0,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 1,
          properties = {
            ["name"] = "full"
          },
          animation = {
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
            }
          }
        }
      }
    },
    {
      name = "playerhitbox",
      firstgid = 191,
      filename = "img/playerhitbox.tsx",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/playerhitbox.png",
      imagewidth = 8,
      imageheight = 8,
      tileoffset = {
        x = -4,
        y = 4
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 8
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "crosshair",
      firstgid = 192,
      filename = "img/crosshair.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 2,
      image = "img/crosshair.png",
      imagewidth = 32,
      imageheight = 32,
      tileoffset = {
        x = -8,
        y = 8
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 4,
      tiles = {}
    },
    {
      name = "particles",
      firstgid = 196,
      filename = "img/particles.tsx",
      tilewidth = 4,
      tileheight = 4,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "img/particles.png",
      imagewidth = 32,
      imageheight = 32,
      tileoffset = {
        x = 0,
        y = 4
      },
      grid = {
        orientation = "orthogonal",
        width = 4,
        height = 4
      },
      properties = {
        ["commonanimation"] = 0
      },
      terrains = {},
      tilecount = 64,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "damage"
          },
          animation = {
            {
              tileid = 0,
              duration = 100
            },
            {
              tileid = 1,
              duration = 100
            },
            {
              tileid = 2,
              duration = 100
            },
            {
              tileid = 3,
              duration = 100
            }
          }
        },
        {
          id = 4,
          properties = {
            ["name"] = "hypno"
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "guard"
          }
        },
        {
          id = 16,
          properties = {
            ["name"] = "powerdot"
          }
        },
        {
          id = 24,
          properties = {
            ["name"] = "charge"
          }
        },
        {
          id = 32,
          properties = {
            ["name"] = "defeat"
          }
        },
        {
          id = 40,
          properties = {
            ["name"] = "death"
          }
        },
        {
          id = 48,
          properties = {
            ["name"] = "enemyfire"
          }
        },
        {
          id = 56,
          properties = {
            ["name"] = "heal"
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 8,
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 24,
      height = 32,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["script"] = "InfiniteScrollLayer",
        ["scrolling"] = true,
        ["scrollvelx"] = 60,
        ["scrollvely"] = 60,
        ["tilewrap"] = true
      },
      encoding = "base64",
      compression = "gzip",
      data = "H4sIAAAAAAAAA+3RNxKAQBADwcN7Dm/+/1EmXsItiKSqTpROCP8sQYoMOQrnZ1eiQo0GrfOz69BjwIjo/OwmzFiwYnN+djsOnLhwOz879VVf9VVf9VVf9X1PfdXX0/erPd/SQyoADAAA"
    },
    {
      type = "objectgroup",
      id = 2,
      name = "info",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {},
      objects = {
        {
          id = 3,
          name = "hiscore",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 5,
          width = 240,
          height = 10,
          rotation = 0,
          visible = false,
          properties = {
            ["text"] = "HI SCORE 0"
          }
        },
        {
          id = 11,
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 240,
          height = 320,
          rotation = 0,
          visible = false,
          properties = {}
        },
        {
          id = 17,
          name = "instructions",
          type = "",
          shape = "text",
          x = 70,
          y = 200,
          width = 100,
          height = 40,
          rotation = 0,
          visible = false,
          text = "Z key: FIRE\n\nX key: FOCUS\n\nC key: BOMB",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 18,
          name = "pressstart",
          type = "",
          shape = "text",
          x = 0,
          y = 260,
          width = 240,
          height = 10,
          rotation = 0,
          visible = false,
          text = "PRESS Z TO START",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        },
        {
          id = 19,
          name = "copyright",
          type = "",
          shape = "text",
          x = 0,
          y = 270,
          width = 240,
          height = 40,
          rotation = 0,
          visible = true,
          text = "© 2019 IoriBranford\n\nioribranford.itch.io",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 10,
      name = "startbutton",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "UIMenu"
      },
      objects = {
        {
          id = 26,
          name = "start",
          type = "UIButton",
          shape = "text",
          x = 30,
          y = 180,
          width = 180,
          height = 40,
          rotation = 0,
          visible = true,
          text = "PRESS ENTER OR BUTTON",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "playerExit",
            ["presssound"] = ""
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 3,
      name = "title",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "TitleLayer"
      },
      objects = {
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12.5,
          y = 125,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 197.5,
          y = 125,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 115,
          y = 150,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 34,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 150,
          width = 200,
          height = 50,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 15,
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
      id = 14,
      name = "playershots",
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
      id = 11,
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
          id = 42,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 360,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 43,
          visible = true,
          properties = {
            ["coroutine"] = "waitCoroutine"
          }
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 170,
          y = 370,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 86,
          visible = true,
          properties = {
            ["demonizationid"] = 50
          }
        },
        {
          id = 44,
          name = "",
          type = "",
          shape = "rectangle",
          x = 75,
          y = 370,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 146,
          visible = true,
          properties = {
            ["demonizationid"] = 47
          }
        },
        {
          id = 45,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 405,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 122,
          visible = true,
          properties = {
            ["demonizationid"] = 48
          }
        },
        {
          id = 46,
          name = "",
          type = "",
          shape = "rectangle",
          x = 155,
          y = 405,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 140,
          visible = true,
          properties = {
            ["demonizationid"] = 49
          }
        },
        {
          id = 47,
          name = "",
          type = "",
          shape = "rectangle",
          x = 75,
          y = 450,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 183,
          visible = true,
          properties = {}
        },
        {
          id = 48,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 485,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 183,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "",
          type = "",
          shape = "rectangle",
          x = 155,
          y = 485,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 183,
          visible = true,
          properties = {}
        },
        {
          id = 50,
          name = "",
          type = "",
          shape = "rectangle",
          x = 170,
          y = 450,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 183,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "imagelayer",
      id = 6,
      name = "qr",
      visible = false,
      opacity = 1,
      offsetx = 190,
      offsety = 270,
      image = "img/qr-website.png",
      properties = {}
    },
    {
      type = "objectgroup",
      id = 16,
      name = "curtain",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "Curtain"
      },
      objects = {}
    }
  }
}
