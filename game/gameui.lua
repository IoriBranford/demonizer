return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 15,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 24,
  properties = {},
  tilesets = {
    {
      name = "bombgauge",
      firstgid = 1,
      filename = "img/bombgauge.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/bombgauge.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = 0,
        y = 0
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
      image = "img/hud_icons.png",
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
      name = "touchmarkers",
      firstgid = 21,
      filename = "img/touchmarkers.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/touchmarkers.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 32
      },
      properties = {},
      terrains = {},
      tilecount = 2,
      tiles = {}
    }
  },
  layers = {
    {
      type = "objectgroup",
      name = "status",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["scoreid"] = 16,
        ["script"] = "ShmupStatus"
      },
      objects = {
        {
          id = 2,
          name = "wingright",
          type = "",
          shape = "rectangle",
          x = 16,
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
          x = 0,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 19,
          visible = true,
          properties = {}
        },
        {
          id = 1,
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
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        },
        {
          id = 4,
          name = "bomb3",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 320,
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
          x = 16,
          y = 320,
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
          x = 0,
          y = 320,
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
          x = 128,
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
          x = 112,
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
          x = 96,
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
          x = 80,
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
          x = 64,
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
          x = 48,
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
          x = 32,
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
          x = 16,
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
          x = 0,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 16,
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
            ["textfont"] = "fnt/pressstart2p.fnt",
            ["textformat"] = "SC%8d EX%8d"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pausemenu",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PauseMenu"
      },
      objects = {
        {
          id = 17,
          name = "title",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 208,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonTitle",
            ["text"] = "TITLE",
            ["textalign"] = "center",
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        },
        {
          id = 18,
          name = "restart",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 160,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonRestart",
            ["text"] = "RESTART",
            ["textalign"] = "center",
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        },
        {
          id = 19,
          name = "resume",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 112,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonResume",
            ["text"] = "RESUME",
            ["textalign"] = "center",
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        },
        {
          id = 20,
          name = "pause",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 32,
          width = 208,
          height = 16,
          rotation = 0,
          visible = false,
          properties = {
            ["text"] = "Paused",
            ["textalign"] = "center",
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "touchcontrols",
      visible = true,
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
