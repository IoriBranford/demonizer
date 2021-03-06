return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.3",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 15,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 20,
  nextobjectid = 64,
  properties = {
    ["delayinitobjects"] = true,
    ["enemydefeatsound"] = "snd/knockout.ogg",
    ["enemyguardsound"] = "snd/parry.ogg",
    ["enemyhitsound"] = "snd/hit.ogg",
    ["losemusic"] = "mus/gameover.vgm",
    ["script"] = "ShmupMap",
    ["targetlocksound"] = "snd/targetlock.ogg",
    ["winmusic"] = "mus/clear.vgm"
  },
  tilesets = {
    {
      name = "bombgauge",
      firstgid = 1,
      filename = "img/bombgauge.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "img/bombgauge.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 32
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_full"] = 1,
        ["row_notfull"] = 0
      },
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          properties = {
            ["color"] = "#ffaadfff",
            ["direction"] = "up"
          },
          objectGroup = {
            type = "objectgroup",
            id = 2,
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
                properties = {}
              }
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
            },
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
        }
      }
    },
    {
      name = "hud_icons",
      firstgid = 17,
      filename = "img/hud_icons.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 2,
      image = "img/hud_icons.png",
      imagewidth = 32,
      imageheight = 32,
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
      terrains = {},
      tilecount = 4,
      tiles = {}
    },
    {
      name = "touchmarkers",
      firstgid = 21,
      filename = "img/touchmarkers.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 2,
      image = "img/touchmarkers.png",
      imagewidth = 128,
      imageheight = 64,
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
      tilecount = 2,
      tiles = {}
    },
    {
      name = "particles",
      firstgid = 23,
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
    },
    {
      name = "playerhitbox",
      firstgid = 87,
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
      name = "sparks_huge",
      firstgid = 88,
      filename = "img/sparks_huge.tsx",
      tilewidth = 96,
      tileheight = 96,
      spacing = 0,
      margin = 0,
      columns = 5,
      image = "img/sparks_huge.png",
      imagewidth = 480,
      imageheight = 384,
      tileoffset = {
        x = -48,
        y = 48
      },
      grid = {
        orientation = "orthogonal",
        width = 96,
        height = 96
      },
      properties = {},
      terrains = {},
      tilecount = 20,
      tiles = {
        {
          id = 0,
          type = "Spark",
          properties = {
            ["name"] = "explosion"
          },
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
            }
          }
        },
        {
          id = 10,
          type = "PlayerDeath",
          properties = {
            ["name"] = "playerexplosion"
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
                type = "",
                shape = "ellipse",
                x = 6,
                y = 6,
                width = 84,
                height = 84,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 10,
              duration = 83
            },
            {
              tileid = 11,
              duration = 83
            },
            {
              tileid = 12,
              duration = 83
            },
            {
              tileid = 13,
              duration = 83
            },
            {
              tileid = 14,
              duration = 83
            },
            {
              tileid = 15,
              duration = 83
            },
            {
              tileid = 16,
              duration = 83
            },
            {
              tileid = 17,
              duration = 83
            },
            {
              tileid = 18,
              duration = 83
            },
            {
              tileid = 19,
              duration = 83
            }
          }
        }
      }
    },
    {
      name = "sparks_med",
      firstgid = 108,
      filename = "img/sparks_med.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/sparks_med.png",
      imagewidth = 192,
      imageheight = 64,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "explosion"
          },
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
            }
          }
        },
        {
          id = 6,
          properties = {
            ["name"] = "wingmanexplosion"
          },
          animation = {
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
            }
          }
        }
      }
    },
    {
      name = "sparks_small",
      firstgid = 120,
      filename = "img/sparks_small.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "img/sparks_small.png",
      imagewidth = 128,
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
      properties = {
        ["commonanimation"] = 0
      },
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "enemydamage"
          },
          animation = {
            {
              tileid = 0,
              duration = 16
            },
            {
              tileid = 1,
              duration = 16
            },
            {
              tileid = 2,
              duration = 16
            },
            {
              tileid = 3,
              duration = 16
            },
            {
              tileid = 4,
              duration = 16
            },
            {
              tileid = 5,
              duration = 16
            },
            {
              tileid = 6,
              duration = 16
            },
            {
              tileid = 7,
              duration = 16
            }
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "enemyguard"
          }
        }
      }
    },
    {
      name = "demonization",
      firstgid = 136,
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
      name = "demonbomb",
      firstgid = 144,
      filename = "img/demonbomb.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "img/demonbomb.png",
      imagewidth = 512,
      imageheight = 256,
      tileoffset = {
        x = -64,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 128,
        height = 128
      },
      properties = {},
      terrains = {},
      tilecount = 8,
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
                x = 0,
                y = 0,
                width = 128,
                height = 128,
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
              tileid = 0,
              duration = 50
            },
            {
              tileid = 1,
              duration = 50
            },
            {
              tileid = 2,
              duration = 50
            },
            {
              tileid = 3,
              duration = 50
            },
            {
              tileid = 4,
              duration = 50
            },
            {
              tileid = 5,
              duration = 50
            },
            {
              tileid = 6,
              duration = 50
            },
            {
              tileid = 7,
              duration = 50
            }
          }
        }
      }
    },
    {
      name = "demonshots",
      firstgid = 152,
      filename = "img/demonshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/demonshots.png",
      imagewidth = 32,
      imageheight = 64,
      tileoffset = {
        x = -16,
        y = 8
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 16
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
            ["name"] = "player"
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
                type = "",
                shape = "ellipse",
                x = 8,
                y = 0,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 1,
          properties = {
            ["name"] = "wingman"
          }
        },
        {
          id = 2,
          properties = {
            ["name"] = "bombpackage"
          }
        },
        {
          id = 3,
          properties = {
            ["name"] = "bombshrapnel"
          }
        }
      }
    },
    {
      name = "humanshots",
      firstgid = 156,
      filename = "img/humanshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "img/humanshots.png",
      imagewidth = 128,
      imageheight = 224,
      tileoffset = {
        x = -24,
        y = 8
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 16
      },
      properties = {
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 56,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "pike"
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
                type = "",
                shape = "ellipse",
                x = 23.5,
                y = 7.5,
                width = 1,
                height = 1,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 1,
          properties = {
            ["name"] = "holy"
          }
        },
        {
          id = 2,
          properties = {
            ["name"] = "axe"
          },
          animation = {
            {
              tileid = 2,
              duration = 67
            },
            {
              tileid = 3,
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
          id = 4,
          properties = {
            ["name"] = "sword"
          }
        },
        {
          id = 5,
          properties = {
            ["name"] = "arrow"
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "magic"
          }
        },
        {
          id = 9,
          properties = {
            ["name"] = "ballista"
          }
        },
        {
          id = 10,
          properties = {
            ["name"] = "electric"
          },
          animation = {
            {
              tileid = 10,
              duration = 66
            },
            {
              tileid = 11,
              duration = 66
            }
          }
        },
        {
          id = 12,
          properties = {
            ["name"] = "water"
          },
          animation = {
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
        },
        {
          id = 16,
          properties = {
            ["name"] = "firearrow"
          },
          animation = {
            {
              tileid = 16,
              duration = 67
            },
            {
              tileid = 17,
              duration = 67
            },
            {
              tileid = 18,
              duration = 67
            },
            {
              tileid = 19,
              duration = 67
            }
          }
        },
        {
          id = 20,
          properties = {
            ["name"] = "catapult"
          },
          animation = {
            {
              tileid = 20,
              duration = 67
            },
            {
              tileid = 21,
              duration = 67
            },
            {
              tileid = 22,
              duration = 67
            },
            {
              tileid = 23,
              duration = 67
            }
          }
        },
        {
          id = 24,
          properties = {
            ["name"] = "blood"
          },
          animation = {
            {
              tileid = 24,
              duration = 67
            },
            {
              tileid = 25,
              duration = 67
            },
            {
              tileid = 26,
              duration = 67
            },
            {
              tileid = 27,
              duration = 67
            }
          }
        },
        {
          id = 28,
          properties = {
            ["name"] = "fire"
          },
          animation = {
            {
              tileid = 28,
              duration = 67
            },
            {
              tileid = 29,
              duration = 67
            },
            {
              tileid = 30,
              duration = 67
            },
            {
              tileid = 31,
              duration = 67
            }
          }
        },
        {
          id = 32,
          properties = {
            ["name"] = "spiritfire"
          },
          animation = {
            {
              tileid = 32,
              duration = 67
            },
            {
              tileid = 33,
              duration = 67
            },
            {
              tileid = 34,
              duration = 67
            },
            {
              tileid = 35,
              duration = 67
            }
          }
        },
        {
          id = 36,
          properties = {
            ["name"] = "poisongas"
          },
          animation = {
            {
              tileid = 36,
              duration = 67
            },
            {
              tileid = 37,
              duration = 67
            },
            {
              tileid = 38,
              duration = 67
            },
            {
              tileid = 39,
              duration = 67
            },
            {
              tileid = 40,
              duration = 67
            },
            {
              tileid = 41,
              duration = 67
            },
            {
              tileid = 42,
              duration = 67
            },
            {
              tileid = 43,
              duration = 67
            }
          }
        },
        {
          id = 44,
          properties = {
            ["name"] = "fireblast"
          },
          animation = {
            {
              tileid = 44,
              duration = 67
            },
            {
              tileid = 45,
              duration = 67
            },
            {
              tileid = 46,
              duration = 67
            },
            {
              tileid = 47,
              duration = 67
            },
            {
              tileid = 48,
              duration = 67
            },
            {
              tileid = 49,
              duration = 67
            },
            {
              tileid = 50,
              duration = 67
            },
            {
              tileid = 51,
              duration = 67
            }
          }
        },
        {
          id = 52,
          properties = {
            ["name"] = "kunai"
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
                type = "",
                shape = "ellipse",
                x = 16,
                y = 0,
                width = 16,
                height = 16,
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
          id = 53,
          properties = {
            ["name"] = "barbed"
          }
        }
      }
    },
    {
      name = "crosshair",
      firstgid = 212,
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
      name = "item",
      firstgid = 216,
      filename = "img/item.tsx",
      tilewidth = 48,
      tileheight = 24,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/item.png",
      imagewidth = 48,
      imageheight = 72,
      tileoffset = {
        x = -24,
        y = 12
      },
      grid = {
        orientation = "orthogonal",
        width = 48,
        height = 24
      },
      properties = {},
      terrains = {},
      tilecount = 3,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "score"
          }
        },
        {
          id = 1,
          properties = {
            ["name"] = "wingman"
          }
        },
        {
          id = 2,
          type = "ItemExtend",
          properties = {
            ["name"] = "extend"
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
                width = 48,
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
        }
      }
    },
    {
      name = "gameover",
      firstgid = 219,
      filename = "img/gameover.tsx",
      tilewidth = 192,
      tileheight = 40,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/gameover.png",
      imagewidth = 192,
      imageheight = 40,
      tileoffset = {
        x = -96,
        y = 20
      },
      grid = {
        orientation = "orthogonal",
        width = 192,
        height = 40
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "ko",
      firstgid = 220,
      filename = "img/human/ko.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 18,
      image = "img/human/ko.png",
      imagewidth = 432,
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
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 72,
      tiles = {
        {
          id = 0,
          type = "ItemScore",
          properties = {
            ["name"] = "Pikeman"
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
                type = "",
                shape = "ellipse",
                x = 2,
                y = 6,
                width = 20,
                height = 20,
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
          type = "ItemScore",
          properties = {
            ["name"] = "Swordsman"
          }
        },
        {
          id = 2,
          type = "ItemScore",
          properties = {
            ["name"] = "Priest"
          }
        },
        {
          id = 3,
          type = "ItemScore",
          properties = {
            ["name"] = "Mage"
          }
        },
        {
          id = 4,
          type = "ItemScore",
          properties = {
            ["name"] = "Archer"
          }
        },
        {
          id = 5,
          type = "ItemScore",
          properties = {
            ["name"] = "CatapultOperator"
          }
        },
        {
          id = 6,
          type = "ItemScore",
          properties = {
            ["name"] = "Militia"
          }
        },
        {
          id = 7,
          type = "ItemScore",
          properties = {
            ["name"] = "MilitiaCaptain"
          }
        },
        {
          id = 8,
          type = "ItemScore",
          properties = {
            ["name"] = "HeavyMilitia"
          }
        },
        {
          id = 9,
          type = "ItemScore",
          properties = {
            ["name"] = "Lord"
          }
        },
        {
          id = 10,
          type = "ItemScore",
          properties = {
            ["name"] = "FireArcher"
          }
        },
        {
          id = 11,
          type = "ItemScore",
          properties = {
            ["name"] = "Butcher"
          }
        },
        {
          id = 12,
          type = "ItemScore",
          properties = {
            ["name"] = "Pilot"
          }
        },
        {
          id = 13,
          type = "ItemScore",
          properties = {
            ["name"] = "NecromancerPoison"
          }
        },
        {
          id = 14,
          type = "ItemScore",
          properties = {
            ["name"] = "NecromancerBlood"
          }
        },
        {
          id = 15,
          type = "ItemScore"
        },
        {
          id = 16,
          type = "ItemScore"
        },
        {
          id = 17,
          type = "ItemScore",
          properties = {
            ["name"] = "Assassin"
          }
        },
        {
          id = 18,
          type = "ItemWingman",
          properties = {
            ["name"] = "PikemanF"
          }
        },
        {
          id = 19,
          type = "ItemWingman",
          properties = {
            ["name"] = "SwordsmanF"
          }
        },
        {
          id = 20,
          type = "ItemWingman",
          properties = {
            ["name"] = "PriestF"
          }
        },
        {
          id = 21,
          type = "ItemWingman",
          properties = {
            ["name"] = "MageF"
          }
        },
        {
          id = 22,
          type = "ItemWingman",
          properties = {
            ["name"] = "ArcherF"
          }
        },
        {
          id = 23,
          type = "ItemWingman",
          properties = {
            ["name"] = "CatapultOperatorF"
          }
        },
        {
          id = 24,
          type = "ItemWingman"
        },
        {
          id = 25,
          type = "ItemWingman"
        },
        {
          id = 27,
          type = "ItemWingman",
          properties = {
            ["name"] = "Princess"
          }
        },
        {
          id = 28,
          type = "ItemWingman",
          properties = {
            ["name"] = "FireArcherF"
          }
        },
        {
          id = 29,
          type = "ItemWingman"
        },
        {
          id = 30,
          type = "ItemWingman"
        },
        {
          id = 31,
          type = "ItemWingman"
        },
        {
          id = 32,
          type = "ItemWingman"
        },
        {
          id = 33,
          type = "ItemWingman"
        },
        {
          id = 34,
          type = "ItemWingman",
          properties = {
            ["name"] = "SailorF"
          }
        },
        {
          id = 35,
          type = "ItemWingman",
          properties = {
            ["name"] = "AssassinF"
          }
        },
        {
          id = 36,
          type = "ItemScore",
          properties = {
            ["name"] = "townfolk-child-m-001"
          }
        },
        {
          id = 37,
          type = "ItemScore",
          properties = {
            ["name"] = "townfolk-child-m-002"
          }
        },
        {
          id = 38,
          type = "ItemScore"
        },
        {
          id = 39,
          type = "ItemScore"
        },
        {
          id = 40,
          type = "ItemScore"
        },
        {
          id = 41,
          type = "ItemScore"
        },
        {
          id = 42,
          type = "ItemScore"
        },
        {
          id = 43,
          type = "ItemScore"
        },
        {
          id = 44,
          type = "ItemScore",
          properties = {
            ["name"] = "Sailor"
          }
        },
        {
          id = 45,
          type = "ItemScore"
        },
        {
          id = 46,
          type = "ItemScore"
        },
        {
          id = 47,
          type = "ItemScore"
        },
        {
          id = 48,
          type = "ItemScore"
        },
        {
          id = 49,
          type = "ItemScore"
        },
        {
          id = 50,
          type = "ItemScore"
        },
        {
          id = 51,
          type = "ItemScore",
          properties = {
            ["name"] = "HighPriest"
          }
        },
        {
          id = 52,
          type = "ItemScore",
          properties = {
            ["name"] = "Bishop"
          }
        },
        {
          id = 53,
          type = "ItemScore"
        },
        {
          id = 54,
          type = "ItemWingman",
          properties = {
            ["name"] = "townfolk-adult-f-001"
          }
        },
        {
          id = 55,
          type = "ItemWingman",
          properties = {
            ["name"] = "townfolk-adult-f-002"
          }
        },
        {
          id = 56,
          type = "ItemWingman"
        },
        {
          id = 57,
          type = "ItemWingman",
          properties = {
            ["name"] = "Townfolk-Adult-F-005"
          }
        },
        {
          id = 58,
          type = "ItemWingman",
          properties = {
            ["name"] = "Townfolk-Adult-F-006"
          }
        },
        {
          id = 59,
          type = "ItemWingman"
        },
        {
          id = 60,
          type = "ItemWingman"
        },
        {
          id = 61,
          type = "ItemWingman"
        },
        {
          id = 62,
          type = "ItemWingman"
        },
        {
          id = 63,
          type = "ItemWingman"
        },
        {
          id = 64,
          type = "ItemWingman"
        },
        {
          id = 65,
          type = "ItemWingman"
        },
        {
          id = 66,
          type = "ItemWingman"
        },
        {
          id = 67,
          type = "ItemWingman"
        }
      }
    },
    {
      name = "converted",
      firstgid = 292,
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
        ["rowname14"] = "Townfolk-Adult-F-005",
        ["rowname15"] = "Townfolk-Adult-F-006",
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "ArcherF"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "CatapultOperatorF"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "DancerF"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "MageF"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "PikemanF"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "PriestF"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "SailorF"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "SwordsmanF"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "aristocrate-f-01"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "aristocrate-f-02"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "aristocrate-f-03"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "townfolk-adult-f-001"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "townfolk-adult-f-002"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "townfolk-adult-f-003"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "Townfolk-Adult-F-005"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "Townfolk-Adult-F-006"
          }
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
          type = "PlayerWingman",
          properties = {
            ["name"] = "FireArcherF"
          }
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
        },
        {
          id = 102,
          type = "PlayerWingman"
        },
        {
          id = 103,
          type = "PlayerWingman",
          properties = {
            ["name"] = "AssassinF"
          }
        },
        {
          id = 104,
          type = "PlayerWingman"
        },
        {
          id = 105,
          type = "PlayerWingman"
        },
        {
          id = 106,
          type = "PlayerWingman"
        },
        {
          id = 107,
          type = "PlayerWingman"
        }
      }
    },
    {
      name = "countdown",
      firstgid = 400,
      filename = "img/countdown.tsx",
      tilewidth = 16,
      tileheight = 20,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/countdown.png",
      imagewidth = 48,
      imageheight = 20,
      tileoffset = {
        x = -8,
        y = 10
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 20
      },
      properties = {},
      terrains = {},
      tilecount = 3,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "1"
          }
        },
        {
          id = 1,
          properties = {
            ["name"] = "2"
          }
        },
        {
          id = 2,
          properties = {
            ["name"] = "3"
          }
        }
      }
    },
    {
      name = "go",
      firstgid = 403,
      filename = "img/go.tsx",
      tilewidth = 64,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/go.png",
      imagewidth = 64,
      imageheight = 32,
      tileoffset = {
        x = -32,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "emotes",
      firstgid = 404,
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
      name = "winebomb",
      firstgid = 428,
      filename = "img/winebomb.tsx",
      tilewidth = 18,
      tileheight = 12,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/winebomb.png",
      imagewidth = 18,
      imageheight = 24,
      tileoffset = {
        x = -9,
        y = 6
      },
      grid = {
        orientation = "orthogonal",
        width = 18,
        height = 12
      },
      properties = {},
      terrains = {},
      tilecount = 2,
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
                x = 6,
                y = 0,
                width = 12,
                height = 12,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 67
            },
            {
              tileid = 1,
              duration = 67
            }
          }
        }
      }
    },
    {
      name = "title_demonization",
      firstgid = 430,
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
      firstgid = 446,
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
      name = "powergauge",
      firstgid = 447,
      filename = "img/powergauge.tsx",
      tilewidth = 128,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/powergauge.png",
      imagewidth = 128,
      imageheight = 16,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 128,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {
        {
          id = 0,
          properties = {
            ["color"] = "#c05100ff",
            ["colorlevel1"] = "#c05100ff",
            ["colorlevel2"] = "#c0a200ff",
            ["colorlevel3"] = "#c0d900ff",
            ["colorlevel4"] = "#c0ff00b7",
            ["colorlevel5"] = "#c0ff0044",
            ["direction"] = "right",
            ["script"] = "UIGauge"
          },
          objectGroup = {
            type = "objectgroup",
            id = 2,
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
                x = 25,
                y = 9,
                width = 10,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 2,
                name = "fill",
                type = "",
                shape = "rectangle",
                x = 35,
                y = 7,
                width = 20,
                height = 6,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 3,
                name = "fill",
                type = "",
                shape = "rectangle",
                x = 55,
                y = 5,
                width = 30,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 4,
                name = "fill",
                type = "",
                shape = "rectangle",
                x = 85,
                y = 3,
                width = 40,
                height = 10,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "objectgroup",
      id = 1,
      name = "items",
      visible = true,
      opacity = 0.75,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "ItemsLayer"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 15,
      name = "healparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["areaspreadh"] = 16,
        ["areaspreadw"] = 16,
        ["lifetime"] = 0.25,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 60,
        ["speedmin"] = 60,
        ["spread"] = 0,
        ["tileid"] = "heal",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 2,
      name = "enemyfireparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["lifetime"] = 0.25,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 360,
        ["speedmin"] = 240,
        ["spread"] = 10,
        ["tileid"] = "enemyfire",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 3,
      name = "defeatparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["lifetime"] = 0.5,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 180,
        ["speedmin"] = 90,
        ["tileid"] = "defeat",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 4,
      name = "damageparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["lifetime"] = 0.25,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 360,
        ["speedmin"] = 180,
        ["spread"] = 22.5,
        ["tileid"] = "damage",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 5,
      name = "guardparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["lifetime"] = 0.25,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 360,
        ["speedmin"] = 180,
        ["spread"] = 22.5,
        ["tileid"] = "guard",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 6,
      name = "launchbombparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["lifetime"] = 0.12,
        ["maxparticles"] = "4",
        ["script"] = "ParticleLayer",
        ["speedmax"] = 480,
        ["speedmin"] = 400,
        ["spread"] = 30,
        ["tileset"] = "playerhitbox"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 7,
      name = "deathparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["lifetime"] = 0.5,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 360,
        ["speedmin"] = 120,
        ["spread"] = 90,
        ["tileid"] = "death",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 8,
      name = "npcshots",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["glowcolor"] = "#ff00ffff",
        ["glowspeed"] = 8,
        ["glowstrength"] = 1,
        ["script"] = "BulletLayer"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 18,
      name = "dialogue",
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
      id = 9,
      name = "status",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["countdownsound"] = "snd/equip.ogg",
        ["extendsound"] = "snd/extend.ogg",
        ["gosound"] = "snd/extend.ogg",
        ["maxmultipliersound"] = "snd/maxed.ogg",
        ["newbombsound"] = "snd/thankyou.ogg",
        ["powerupsound"] = "snd/powerup.ogg",
        ["script"] = "ShmupStatus"
      },
      objects = {
        {
          id = 42,
          name = "countdown",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 168,
          width = 16,
          height = 20,
          rotation = 0,
          gid = 402,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "timer",
          type = "",
          shape = "text",
          x = 4,
          y = 48,
          width = 40,
          height = 8,
          rotation = 0,
          visible = true,
          text = "mm:ss",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 2,
          name = "wingright",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 20,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "wingleft",
          type = "",
          shape = "rectangle",
          x = 4,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 19,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "bomb3",
          type = "",
          shape = "rectangle",
          x = 36,
          y = 316,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 5,
          name = "bomb2",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 316,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 6,
          name = "bomb1",
          type = "",
          shape = "rectangle",
          x = 4,
          y = 316,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 7,
          name = "life9",
          type = "",
          shape = "rectangle",
          x = 132,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "life8",
          type = "",
          shape = "rectangle",
          x = 116,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "life7",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "life6",
          type = "",
          shape = "rectangle",
          x = 84,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "life5",
          type = "",
          shape = "rectangle",
          x = 68,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "life4",
          type = "",
          shape = "rectangle",
          x = 52,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "life3",
          type = "",
          shape = "rectangle",
          x = 36,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "life2",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "life1",
          type = "",
          shape = "rectangle",
          x = 4,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "reserves",
          type = "",
          shape = "text",
          x = 4,
          y = 36,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          text = "0",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {}
        },
        {
          id = 29,
          name = "score",
          type = "",
          shape = "text",
          x = 4,
          y = 4,
          width = 232,
          height = 8,
          rotation = 0,
          visible = true,
          text = "SCORE 00000000 EXTRA@01000000",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["script"] = "ShmupScore",
            ["textformat"] = "SCORE %8d EXTRA@%8d"
          }
        },
        {
          id = 48,
          name = "caravanrules",
          type = "",
          shape = "text",
          x = 64,
          y = 64,
          width = 112,
          height = 80,
          rotation = 0,
          visible = true,
          text = "%3d SECONDS\n%s BOMBS\n\nGOOD LUCK!!!",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {
            ["textformat"] = "%3d SECONDS\n%s BOMBS\n\nGOOD LUCK!!!"
          }
        },
        {
          id = 49,
          name = "winebomb1",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 312,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 428,
          visible = false,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 50,
          name = "winebomb2",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 312,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 428,
          visible = false,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 51,
          name = "winebomb3",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 312,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 428,
          visible = false,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 52,
          name = "winebomb4",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 312,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 428,
          visible = false,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 53,
          name = "winebomb5",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 312,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 428,
          visible = false,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 54,
          name = "activetriggers",
          type = "",
          shape = "text",
          x = 0,
          y = 272,
          width = 240,
          height = 48,
          rotation = 0,
          visible = false,
          text = "activetriggers",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          valign = "bottom",
          properties = {}
        },
        {
          id = 55,
          name = "continueprompt",
          type = "",
          shape = "text",
          x = 56,
          y = 264,
          width = 176,
          height = 32,
          rotation = 0,
          visible = false,
          text = "PRESS ${joy_fire} TO CONTINUE\n${joy_pausemenu} TO SKIP",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          valign = "bottom",
          properties = {}
        },
        {
          id = 56,
          name = "battleprompt",
          type = "",
          shape = "text",
          x = 8,
          y = 264,
          width = 224,
          height = 32,
          rotation = 0,
          visible = false,
          text = "PRESS ${joy_fire} OR ${joy_pausemenu}\nTO START BATTLE",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          valign = "bottom",
          properties = {}
        },
        {
          id = 62,
          name = "powergauge",
          type = "",
          shape = "rectangle",
          x = 108,
          y = 316,
          width = 128,
          height = 16,
          rotation = 0,
          gid = 447,
          visible = true,
          properties = {}
        },
        {
          id = 63,
          name = "powerlevel",
          type = "",
          shape = "text",
          x = 104,
          y = 300,
          width = 28,
          height = 16,
          rotation = 0,
          visible = true,
          text = "Lv1",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 10,
      name = "results",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "ShmupResults"
      },
      objects = {
        {
          id = 30,
          name = "reservepoints",
          type = "",
          shape = "text",
          x = 48,
          y = 36,
          width = 72,
          height = 8,
          rotation = 0,
          visible = true,
          text = "x rsrvpts",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textformat"] = "x %d"
          }
        },
        {
          id = 31,
          name = "reservetotal",
          type = "",
          shape = "text",
          x = 128,
          y = 36,
          width = 104,
          height = 8,
          rotation = 0,
          visible = true,
          text = "rsrvtotal",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d pts"
          }
        },
        {
          id = 32,
          name = "bombpoints",
          type = "",
          shape = "text",
          x = 56,
          y = 304,
          width = 56,
          height = 8,
          rotation = 0,
          visible = false,
          text = "xbombpt",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textformat"] = "x %d"
          }
        },
        {
          id = 33,
          name = "bombtotal",
          type = "",
          shape = "text",
          x = 120,
          y = 304,
          width = 72,
          height = 8,
          rotation = 0,
          visible = false,
          text = "bombtotal",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d pts"
          }
        },
        {
          id = 47,
          name = "livespoints",
          type = "",
          shape = "text",
          x = 152,
          y = 16,
          width = 80,
          height = 8,
          rotation = 0,
          visible = true,
          text = "x livespts",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textformat"] = "x %d"
          }
        },
        {
          id = 44,
          name = "livestotal",
          type = "",
          shape = "text",
          x = 152,
          y = 24,
          width = 80,
          height = 8,
          rotation = 0,
          visible = true,
          text = "livestotal",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d pts"
          }
        },
        {
          id = 45,
          name = "timepoints",
          type = "",
          shape = "text",
          x = 48,
          y = 48,
          width = 72,
          height = 8,
          rotation = 0,
          visible = true,
          text = "x timepts",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textformat"] = "x %d"
          }
        },
        {
          id = 46,
          name = "timetotal",
          type = "",
          shape = "text",
          x = 128,
          y = 48,
          width = 104,
          height = 8,
          rotation = 0,
          visible = true,
          text = "timetotal",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d pts"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 11,
      name = "pausemenu",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["pausesound"] = "snd/pause.ogg",
        ["script"] = "MenuPause"
      },
      objects = {
        {
          id = 37,
          name = "title",
          type = "UIButton",
          shape = "text",
          x = 48,
          y = 192,
          width = 144,
          height = 32,
          rotation = 0,
          visible = true,
          text = "END GAME",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "changeMap",
            ["nextmap"] = "mainmenu.lua"
          }
        },
        {
          id = 36,
          name = "restart",
          type = "UIButton",
          shape = "text",
          x = 48,
          y = 144,
          width = 144,
          height = 32,
          rotation = 0,
          visible = true,
          text = "RESTART",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "restartMap"
          }
        },
        {
          id = 35,
          name = "resume",
          type = "UIButton",
          shape = "text",
          x = 48,
          y = 96,
          width = 144,
          height = 32,
          rotation = 0,
          visible = true,
          text = "RESUME",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "togglePause"
          }
        },
        {
          id = 34,
          name = "pause",
          type = "",
          shape = "text",
          x = 0,
          y = 64,
          width = 240,
          height = 16,
          rotation = 0,
          visible = true,
          text = "PAUSE",
          fontfamily = "Lady Radical",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 12,
      name = "gameovermenu",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "MenuGameOver"
      },
      objects = {
        {
          id = 38,
          name = "gameover",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 112,
          width = 192,
          height = 40,
          rotation = 0,
          gid = 219,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "restart",
          type = "UIButton",
          shape = "text",
          x = 48,
          y = 144,
          width = 144,
          height = 32,
          rotation = 0,
          visible = true,
          text = "RESTART",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "restartMap"
          }
        },
        {
          id = 40,
          name = "title",
          type = "UIButton",
          shape = "text",
          x = 48,
          y = 192,
          width = 144,
          height = 32,
          rotation = 0,
          visible = true,
          text = "END GAME",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "changeMap",
            ["nextmap"] = "mainmenu.lua"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 13,
      name = "touchcontrols",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "ShmupTouchControls"
      },
      objects = {
        {
          id = 22,
          name = "move",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 21,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "focus",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 22,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 19,
      name = "attract",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 57,
          name = "start",
          type = "",
          shape = "text",
          x = 0,
          y = 256,
          width = 240,
          height = 16,
          rotation = 0,
          visible = true,
          text = "PRESS ANY KEY OR BUTTON",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {}
        },
        {
          id = 58,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12,
          y = 72,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 59,
          name = "",
          type = "",
          shape = "rectangle",
          x = 196,
          y = 72,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 431,
          visible = true,
          properties = {}
        },
        {
          id = 60,
          name = "",
          type = "",
          shape = "rectangle",
          x = 114,
          y = 97,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 97,
          width = 200,
          height = 50,
          rotation = 0,
          gid = 446,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 14,
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
