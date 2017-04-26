return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 36,
  height = 265,
  tilewidth = 8,
  tileheight = 8,
  nextobjectid = 468,
  properties = {
    ["cameraid"] = 7,
    ["delayinitobjects"] = true,
    ["music"] = "mus/09 - Blue Sky Laundry.vgm",
    ["overlaymap"] = "gameui.lua",
    ["playerid"] = 1,
    ["script"] = "ShmupMap"
  },
  tilesets = {
    {
      name = "imp",
      firstgid = 1,
      filename = "img/imp.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/imp.png",
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
                properties = {
                  ["collidable"] = true
                }
              },
              {
                id = 7,
                name = "wingman1",
                type = "",
                shape = "ellipse",
                x = -24,
                y = 72,
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
                x = 24,
                y = 72,
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
                x = -16,
                y = 48,
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
                x = 16,
                y = 48,
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
                x = -32,
                y = 40,
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
                x = 32,
                y = 40,
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
                x = -16,
                y = 8,
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
                x = 16,
                y = 8,
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
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "demonizing",
      firstgid = 4,
      filename = "img/demonizing.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/demonizing.png",
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
            }
          }
        }
      }
    },
    {
      name = "demonwomen",
      firstgid = 7,
      filename = "img/demonwomen.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/demonwomen.png",
      imagewidth = 192,
      imageheight = 832,
      tileoffset = {
        x = -32,
        y = 32
      },
      properties = {
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_archer"] = 12,
        ["row_civ1"] = 0,
        ["row_civ2"] = 1,
        ["row_civ3"] = 2,
        ["row_civ4"] = 3,
        ["row_civ5"] = 4,
        ["row_civ6"] = 5,
        ["row_civ7"] = 6,
        ["row_civ8"] = 7,
        ["row_mage"] = 11,
        ["row_pikeman"] = 8,
        ["row_priest"] = 10,
        ["row_swordsman"] = 9
      },
      terrains = {},
      tilecount = 39,
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
                y = 56,
                width = 16,
                height = 16,
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
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "demonshots",
      firstgid = 46,
      filename = "img/demonshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/demonshots.png",
      imagewidth = 32,
      imageheight = 64,
      tileoffset = {
        x = -16,
        y = 8
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
                x = -8,
                y = 8,
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
      name = "demonbomb",
      firstgid = 50,
      filename = "img/demonbomb.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "img/demonbomb.png",
      imagewidth = 512,
      imageheight = 256,
      tileoffset = {
        x = -64,
        y = 128
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
                x = -64,
                y = 128,
                width = 128,
                height = 128,
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
      name = "infwomen",
      firstgid = 58,
      filename = "img/infwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/infwomen.png",
      imagewidth = 432,
      imageheight = 160,
      tileoffset = {
        x = -12,
        y = 16
      },
      properties = {
        ["column_archer"] = 12,
        ["column_mage"] = 9,
        ["column_pikeman"] = 0,
        ["column_priest"] = 6,
        ["column_princess"] = 15,
        ["column_swordsman"] = 3,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_down"] = 2,
        ["row_ko"] = 4,
        ["row_left"] = 3,
        ["row_right"] = 1,
        ["row_up"] = 0
      },
      terrains = {},
      tilecount = 90,
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
                x = -10,
                y = 24,
                width = 20,
                height = 20,
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
        }
      }
    },
    {
      name = "infmen",
      firstgid = 148,
      filename = "img/infmen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/infmen.png",
      imagewidth = 432,
      imageheight = 160,
      tileoffset = {
        x = -12,
        y = 16
      },
      properties = {
        ["column_archer"] = 12,
        ["column_hero"] = 15,
        ["column_mage"] = 9,
        ["column_pikeman"] = 0,
        ["column_priest"] = 6,
        ["column_swordsman"] = 3,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_down"] = 2,
        ["row_ko"] = 4,
        ["row_left"] = 3,
        ["row_right"] = 1,
        ["row_up"] = 0
      },
      terrains = {},
      tilecount = 90,
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
                x = -10,
                y = 24,
                width = 20,
                height = 20,
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
        }
      }
    },
    {
      name = "boat",
      firstgid = 238,
      filename = "img/boat.tsx",
      tilewidth = 128,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/boat.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = -64,
        y = 64
      },
      properties = {},
      terrains = {},
      tilecount = 1,
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
                id = 6,
                name = "",
                type = "",
                shape = "rectangle",
                x = -64,
                y = 64,
                width = 112,
                height = 48,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              },
              {
                id = 8,
                name = "",
                type = "",
                shape = "ellipse",
                x = 16,
                y = 64,
                width = 48,
                height = 48,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        }
      }
    },
    {
      name = "ballista",
      firstgid = 239,
      filename = "img/ballista.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/ballista.png",
      imagewidth = 512,
      imageheight = 192,
      tileoffset = {
        x = -32,
        y = 32
      },
      properties = {
        ["column_angle0"] = 0,
        ["column_angle135"] = 3,
        ["column_angle180"] = 4,
        ["column_angle225"] = 5,
        ["column_angle270"] = 6,
        ["column_angle315"] = 7,
        ["column_angle45"] = 1,
        ["column_angle90"] = 2,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_empty"] = 2,
        ["row_windup"] = 0
      },
      terrains = {},
      tilecount = 24,
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
                x = -24,
                y = 40,
                width = 48,
                height = 48,
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
              tileid = 16,
              duration = 967
            },
            {
              tileid = 0,
              duration = 250
            },
            {
              tileid = 8,
              duration = 500
            },
            {
              tileid = 0,
              duration = 33
            }
          }
        }
      }
    },
    {
      name = "humanshots",
      firstgid = 263,
      filename = "img/humanshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/humanshots.png",
      imagewidth = 128,
      imageheight = 128,
      tileoffset = {
        x = -24,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 32,
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
                x = -2,
                y = 14,
                width = 4,
                height = 4,
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
          id = 4,
          properties = {
            ["name"] = "sword"
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "arrow"
          }
        },
        {
          id = 12,
          properties = {
            ["name"] = "magic"
          }
        },
        {
          id = 16,
          properties = {
            ["name"] = "ballista"
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
            }
          }
        },
        {
          id = 24,
          properties = {
            ["name"] = "water"
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
        }
      }
    },
    {
      name = "civwomen",
      firstgid = 295,
      filename = "img/civwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/civwomen.png",
      imagewidth = 576,
      imageheight = 160,
      tileoffset = {
        x = -12,
        y = 16
      },
      properties = {
        ["column_civ1"] = 0,
        ["column_civ2"] = 3,
        ["column_civ3"] = 6,
        ["column_civ4"] = 9,
        ["column_civ5"] = 12,
        ["column_civ6"] = 15,
        ["column_civ7"] = 18,
        ["column_civ8"] = 21,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_down"] = 2,
        ["row_ko"] = 4,
        ["row_left"] = 3,
        ["row_right"] = 1,
        ["row_up"] = 0
      },
      terrains = {},
      tilecount = 120,
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
                x = -10,
                y = 24,
                width = 20,
                height = 20,
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
        }
      }
    },
    {
      name = "civmen",
      firstgid = 415,
      filename = "img/civmen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/civmen.png",
      imagewidth = 648,
      imageheight = 160,
      tileoffset = {
        x = -12,
        y = 16
      },
      properties = {
        ["column_civ1"] = 0,
        ["column_civ2"] = 3,
        ["column_civ3"] = 6,
        ["column_civ4"] = 9,
        ["column_civ5"] = 12,
        ["column_civ6"] = 15,
        ["column_civ7"] = 18,
        ["column_civ8"] = 21,
        ["column_civ9"] = 24,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_down"] = 2,
        ["row_ko"] = 4,
        ["row_left"] = 3,
        ["row_right"] = 1,
        ["row_up"] = 0
      },
      terrains = {},
      tilecount = 135,
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
                x = -10,
                y = 24,
                width = 20,
                height = 20,
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
        }
      }
    },
    {
      name = "test_bank.png",
      firstgid = 550,
      filename = "img/test_bank.png.tsx",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      image = "img/test_bank.png",
      imagewidth = 1024,
      imageheight = 424,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 6784,
      tiles = {}
    },
    {
      name = "playerhitbox",
      firstgid = 7334,
      filename = "img/playerhitbox.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/playerhitbox.png",
      imagewidth = 32,
      imageheight = 32,
      tileoffset = {
        x = -16,
        y = 16
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "sparks_small",
      firstgid = 7335,
      filename = "img/sparks_small.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/sparks_small.png",
      imagewidth = 128,
      imageheight = 32,
      tileoffset = {
        x = -8,
        y = 8
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
      name = "sparks_med",
      firstgid = 7351,
      filename = "img/sparks_med.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/sparks_med.png",
      imagewidth = 192,
      imageheight = 64,
      tileoffset = {
        x = -16,
        y = 16
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
      name = "sparks_huge",
      firstgid = 7363,
      filename = "img/sparks_huge.tsx",
      tilewidth = 96,
      tileheight = 96,
      spacing = 0,
      margin = 0,
      image = "img/sparks_huge.png",
      imagewidth = 480,
      imageheight = 384,
      tileoffset = {
        x = -48,
        y = 48
      },
      properties = {},
      terrains = {},
      tilecount = 20,
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
                x = -42,
                y = 54,
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
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 36,
      height = 265,
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
          id = 7,
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 24,
          y = 1800,
          width = 240,
          height = 320,
          rotation = 0,
          visible = false,
          properties = {
            ["pathid"] = 44,
            ["pathspeed"] = 30
          }
        },
        {
          id = 44,
          name = "path",
          type = "",
          shape = "polyline",
          x = 24,
          y = 1800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -1800 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "boss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["activatemusic"] = "mus/06 - Approaching.vgm"
      },
      objects = {
        {
          id = 261,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 136,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 199,
          visible = true,
          properties = {
            ["onDiscard"] = "playerVictory",
            ["script"] = "NPCHero"
          }
        },
        {
          id = 265,
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
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "preboss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["activatesound"] = "snd/alarm4.wav",
        ["fademusic"] = true
      },
      objects = {
        {
          id = 436,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 120,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "roofballistae",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 405,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 241,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 407,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 242,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 408,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 241,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 409,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 288,
          width = 288,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "roofarchers2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 290,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 336,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 294,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 300,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 302,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 336,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 305,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "knights3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 278,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 432,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 279,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 464,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 187,
          visible = true,
          properties = {
            ["pathid"] = 288,
            ["pathtime"] = 0.5,
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 281,
          name = "path",
          type = "",
          shape = "polyline",
          x = 120,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 32, y = -32 },
            { x = 32, y = 8 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 282,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 464,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 187,
          visible = true,
          properties = {
            ["pathid"] = 281,
            ["pathtime"] = 0.5,
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 288,
          name = "path",
          type = "",
          shape = "polyline",
          x = 120,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = -32 },
            { x = 16, y = 8 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikes5",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 394,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 424,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 395,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 400,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 396,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 448,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 397,
          name = "path",
          type = "",
          shape = "polyline",
          x = 16,
          y = 368,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 104 },
            { x = 0, y = 160 },
            { x = 80, y = 160 },
            { x = 248, y = 160 },
            { x = 288, y = 200 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 399,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 472,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 400,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 401,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 376,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 402,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 403,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 328,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 404,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 435,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 592,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 434,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 592,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "unusedmagefirepoints",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["static"] = true
      },
      objects = {
        {
          id = 331,
          name = "firepoint_tl",
          type = "",
          shape = "ellipse",
          x = 36.6863,
          y = 552,
          width = 16,
          height = 16,
          rotation = 315,
          visible = true,
          properties = {
            ["aimatplayer"] = false,
            ["collidable"] = false,
            ["script"] = "VehicleFountain"
          }
        },
        {
          id = 332,
          name = "firepoint_tr",
          type = "",
          shape = "ellipse",
          x = 240,
          y = 563.314,
          width = 16,
          height = 16,
          rotation = 225,
          visible = true,
          properties = {
            ["aimatplayer"] = false,
            ["collidable"] = false,
            ["script"] = "VehicleFountain"
          }
        },
        {
          id = 333,
          name = "firepoint_bl",
          type = "",
          shape = "ellipse",
          x = 38.202,
          y = 749.657,
          width = 16,
          height = 16,
          rotation = 285,
          visible = true,
          properties = {
            ["aimatplayer"] = false,
            ["collidable"] = false,
            ["script"] = "VehicleFountain"
          }
        },
        {
          id = 334,
          name = "firepoint_br",
          type = "",
          shape = "ellipse",
          x = 234.343,
          y = 753.798,
          width = 16,
          height = 16,
          rotation = 255,
          visible = true,
          properties = {
            ["aimatplayer"] = false,
            ["collidable"] = false,
            ["script"] = "VehicleFountain"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "mage",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 260,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 640,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 103,
          visible = true,
          properties = {
            ["firepointid_bl"] = 333,
            ["firepointid_br"] = 334,
            ["firepointid_c"] = 336,
            ["firepointid_cl"] = 335,
            ["firepointid_cr"] = 337,
            ["firepointid_tl"] = 331,
            ["firepointid_tr"] = 332,
            ["kolaunch"] = true,
            ["onKO"] = "unpauseCamera",
            ["script"] = "NPCMage"
          }
        },
        {
          id = 264,
          name = "trigger",
          type = "",
          shape = "polyline",
          x = 0,
          y = 536,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 268,
          name = "pause",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 536,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "pausecamera"
          }
        },
        {
          id = 335,
          name = "firepoint_cl",
          type = "",
          shape = "ellipse",
          x = 140.392,
          y = 688.392,
          width = 24,
          height = 24,
          rotation = 150,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["fireinterval"] = 0.25,
            ["operatorid"] = 260,
            ["script"] = "VehicleFountain"
          }
        },
        {
          id = 336,
          name = "firepoint_c",
          type = "",
          shape = "ellipse",
          x = 160,
          y = 672,
          width = 32,
          height = 32,
          rotation = 90,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["fireinterval"] = 0.25,
            ["operatorid"] = 260,
            ["script"] = "VehicleFountain"
          }
        },
        {
          id = 337,
          name = "firepoint_cr",
          type = "",
          shape = "ellipse",
          x = 159.608,
          y = 667.608,
          width = 24,
          height = 24,
          rotation = 30,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["fireinterval"] = 0.25,
            ["operatorid"] = 260,
            ["script"] = "VehicleFountain"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "fountainarchers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 415,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 413,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 736,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 412,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 736,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 414,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 416,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 624,
          width = 288,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "knightsballistae",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 213,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 824,
          width = 288,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 232,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 856,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 97,
          visible = true,
          properties = {
            ["pathid"] = 366,
            ["pathtime"] = 0.25,
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 327,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 848,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 240,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 361,
          name = "",
          type = "",
          shape = "rectangle",
          x = 264,
          y = 848,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 242,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 366,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 856,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 48 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikes4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 219,
          name = "path",
          type = "",
          shape = "polyline",
          x = -24,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -24 },
            { x = 144, y = -24 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 370,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 896,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 371,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 888,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 372,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -48,
          y = 888,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 373,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 888,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 374,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -96,
          y = 888,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 378,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -48,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 379,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 380,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -96,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 381,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "roofarchers1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 224,
          name = "path",
          type = "",
          shape = "polyline",
          x = 208,
          y = 952,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 0, y = 8 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 227,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["pathid"] = 224,
            ["pathtime"] = 0.25,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 393,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 928,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 223,
          name = "path",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1000,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -208, y = -16 },
            { x = -192, y = 8 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 225,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 984,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["pathid"] = 223,
            ["pathtime"] = 0.25,
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikes3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 211,
          name = "path",
          type = "",
          shape = "polyline",
          x = 320,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -48, y = -8 },
            { x = -48, y = 112 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 388,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 896,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 211,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 383,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 952,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 273,
            ["pathmode"] = "relative",
            ["pathtime"] = 0.5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 386,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 211,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 273,
          name = "path",
          type = "",
          shape = "polyline",
          x = 216,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 24, y = 24 },
            { x = 24, y = 56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 385,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 928,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 273,
            ["pathmode"] = "relative",
            ["pathtime"] = 0.5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 391,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 968,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikes2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 356,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1008,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 271,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 355,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 984,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 271,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 353,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1032,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 271,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 271,
          name = "path",
          type = "",
          shape = "polyline",
          x = 272,
          y = 952,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 104 },
            { x = 0, y = 208 },
            { x = -80, y = 208 },
            { x = -144, y = 224 },
            { x = -288, y = 224 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 354,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1056,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 271,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 390,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1064,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "windowarcher2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 221,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1016,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 240,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1056,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 106,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 428,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 429,
          name = "",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 430,
          name = "",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 431,
          name = "",
          type = "",
          shape = "rectangle",
          x = -88,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "windowarchers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 241,
          name = "trigger",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 237,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1120,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 238,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1120,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikes",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 186,
          name = "",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 195,
          name = "path",
          type = "",
          shape = "polyline",
          x = -16,
          y = 1192,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 152, y = 0 },
            { x = 216, y = -16 },
            { x = 320, y = -16 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 239,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1144,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 350,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 351,
          name = "",
          type = "",
          shape = "rectangle",
          x = -88,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 352,
          name = "",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "busharchers3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 250,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1248,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 251,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1248,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 392,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1216,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "busharchers2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 244,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1264,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 248,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1296,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 252,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 1280,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "busharchers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 243,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 245,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 246,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 247,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "waterarchers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 253,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 256,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1512,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 258,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1456,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "waterpikes3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 177,
          name = "pike3",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 1584,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 345,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 345
          }
        },
        {
          id = 178,
          name = "path3",
          type = "",
          shape = "polyline",
          x = -24,
          y = 1632,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -32, y = -72 },
            { x = 104, y = -40 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 179,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1576,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 180,
          name = "pike5",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 1568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 345,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 345
          }
        },
        {
          id = 181,
          name = "pike4",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1576,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 345,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 345
          }
        },
        {
          id = 172,
          name = "pike6",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 1584,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 343,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 343
          }
        },
        {
          id = 173,
          name = "pike7",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1576,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 343,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 343
          }
        },
        {
          id = 175,
          name = "pike8",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 1568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 343,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 343
          }
        },
        {
          id = 174,
          name = "path4",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 40, y = -88 },
            { x = -96, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 343,
          name = "",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1560,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 2147483886,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 174,
            ["pathtime"] = 1,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 345,
          name = "",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1560,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 178,
            ["pathtime"] = 1,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 117,
          name = "pike10",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1536,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 94,
          visible = true,
          properties = {
            ["leaderid"] = 346,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 346
          }
        },
        {
          id = 161,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1552,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 346,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 346
          }
        },
        {
          id = 346,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1528,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 347,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 1552,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 346,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 346
          }
        },
        {
          id = 420,
          name = "pike3",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1704,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 421,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 421
          }
        },
        {
          id = 421,
          name = "",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 1680,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 104,
            ["pathtime"] = 5,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 422,
          name = "pike4",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 1696,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 421,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 421
          }
        },
        {
          id = 423,
          name = "pike5",
          type = "",
          shape = "rectangle",
          x = -88,
          y = 1688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 421,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 421
          }
        },
        {
          id = 424,
          name = "pike7",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 1640,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 426,
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 426
          }
        },
        {
          id = 425,
          name = "pike8",
          type = "",
          shape = "rectangle",
          x = 376,
          y = 1632,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 426,
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 426
          }
        },
        {
          id = 426,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 1624,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 2147483886,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 106,
            ["pathtime"] = 5,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 427,
          name = "pike6",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1648,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 426,
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 426
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "waterpikes2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 113,
          name = "pike6",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1648,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 325,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 325
          }
        },
        {
          id = 68,
          name = "pike7",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 1640,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 325,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 325
          }
        },
        {
          id = 106,
          name = "path4",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1728,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 56, y = -104 },
            { x = -96, y = -72 },
            { x = -224, y = -72 },
            { x = -376, y = -104 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 114,
          name = "pike8",
          type = "",
          shape = "rectangle",
          x = 376,
          y = 1632,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 325,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 325
          }
        },
        {
          id = 115,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1632,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 325,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 1624,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 2147483886,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 106,
            ["pathtime"] = 5,
            ["script"] = "ShmupVehicle"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "waterpikes",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 67,
          name = "pike3",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1704,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 324,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 324
          }
        },
        {
          id = 104,
          name = "path3",
          type = "",
          shape = "polyline",
          x = -24,
          y = 1736,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -48, y = -56 },
            { x = 104, y = -24 },
            { x = 232, y = -24 },
            { x = 384, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 108,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1688,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 111,
          name = "pike5",
          type = "",
          shape = "rectangle",
          x = -88,
          y = 1688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 324,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 324
          }
        },
        {
          id = 112,
          name = "pike4",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 1696,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 324,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 324
          }
        },
        {
          id = 324,
          name = "",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 1680,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 104,
            ["pathtime"] = 5,
            ["script"] = "ShmupVehicle"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "unusedcivilians",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      name = "civilians",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 43,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1904,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 343,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 86,
          name = "path2",
          type = "",
          shape = "polyline",
          x = 64,
          y = 1888,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 8 },
            { x = -8, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 132,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 478,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 136,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 1944,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 490,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 152,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 1912,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 493,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 150,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 1936,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 487,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 85,
          name = "path1",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1968,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 32, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1960,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 475,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 160,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 1960,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 484,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 133,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1944,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 481,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 1952,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 469,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 158,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 1952,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 418,
          name = "path1",
          type = "",
          shape = "polyline",
          x = 176,
          y = 1968,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 32, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 419,
          name = "path2",
          type = "",
          shape = "polyline",
          x = 88,
          y = 1904,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 8 },
            { x = -8, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "sparks",
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
      name = "player",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 2152,
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
      type = "objectgroup",
      name = "npcshots",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {},
      objects = {}
    }
  }
}
