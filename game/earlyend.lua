return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 48,
  height = 64,
  tilewidth = 5,
  tileheight = 5,
  nextlayerid = 6,
  nextobjectid = 11,
  properties = {
    ["music"] = "mus/34 - Deposit Coins.vgz",
    ["script"] = "MenuMap"
  },
  tilesets = {
    {
      name = "title",
      firstgid = 1,
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
      name = "title_demonization",
      firstgid = 2,
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
      name = "bg_swirl",
      firstgid = 18,
      filename = "img/bg_swirl.tsx",
      tilewidth = 5,
      tileheight = 5,
      spacing = 0,
      margin = 0,
      columns = 10,
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
      tilecount = 100,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 5,
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 48,
      height = 64,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt1dc6wgEAhvH/NUTZsvcoW0REZmZGhJAVyrz/3sv4np7v4Hf2nr+hIAga0IgwImhCM1rQijaERLt2dKATUXShGz3oRR/6hbsBDGIIwxjBKMYwjglMCncxxDGFacxgFnOYxwIWhbsElrCMJFawihTWsI60cLeBTWSwhW3sYBd72EdWuDvAIY5wjBOcIocznONCuLtEHle4RgE3uMUdirgX7h7wiBKe8IwXvOINZbwLdx/4RAVVfOEbP/jFH/6FO9Wv+r/+r//r//q//q//q9upftX/9X/9X/+3GPi//q//q9qpftX/9X/9X//X//V//V/dTvWr/q//6//6v/6v/+v/6naqX/V//V//1//1f/3fev5vDeSYEa4="
    },
    {
      type = "objectgroup",
      id = 3,
      name = "menu",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["script"] = "UIMenu"
      },
      objects = {
        {
          id = 10,
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
          id = 1,
          name = "thanks",
          type = "",
          shape = "text",
          x = 20,
          y = 70,
          width = 200,
          height = 10,
          rotation = 0,
          visible = true,
          text = "THANKS FOR PLAYING",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        },
        {
          id = 6,
          name = "eta",
          type = "",
          shape = "text",
          x = 20,
          y = 150,
          width = 200,
          height = 10,
          rotation = 0,
          visible = true,
          text = "To be completed 2019",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        },
        {
          id = 7,
          name = "website",
          type = "UIButton",
          shape = "text",
          x = 25,
          y = 190,
          width = 190,
          height = 20,
          rotation = 0,
          visible = true,
          text = "GAME WEBSITE",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "quitToWebsite"
          }
        },
        {
          id = 8,
          name = "mainmenu",
          type = "UIButton",
          shape = "text",
          x = 25,
          y = 210,
          width = 190,
          height = 20,
          rotation = 0,
          visible = true,
          text = "MAIN MENU",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "changeMap",
            ["nextmap"] = "title.lua"
          }
        },
        {
          id = 9,
          name = "quit",
          type = "",
          shape = "text",
          x = 25,
          y = 230,
          width = 190,
          height = 20,
          rotation = 0,
          visible = true,
          text = "Or Escape key to quit",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
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
      id = 4,
      name = "title",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["script"] = "TitleLayer"
      },
      objects = {
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12.5,
          y = 115,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 195,
          y = 115,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 115,
          y = 140,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 10,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 140,
          width = 200,
          height = 50,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 2,
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
