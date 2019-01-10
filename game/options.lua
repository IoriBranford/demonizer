return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 48,
  height = 64,
  tilewidth = 5,
  tileheight = 5,
  nextlayerid = 9,
  nextobjectid = 43,
  properties = {
    ["prevmap"] = "title.lua",
    ["script"] = "MenuMap"
  },
  tilesets = {
    {
      name = "bg_swirl",
      firstgid = 1,
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
      id = 1,
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
      data = "eJzt1VVWQgEARdH3REUMxMLCArtFsRUTExMLW5z/GDyjcN3Fuh/77/yfMAiCGkRQizrUI4oGxNCIULRrQjNaEEcrEmhDOzrQKdx1IYlu9KAXfehHCgMYFO6GMIwRpJHBKMYwjglMCndTmMYMZjGHeSxgEUvICnfLWEEOq1jDOjawiS1sC3c72EUee9jHAQ5xhGMUhLsTnOIM57jAJYq4wjVuhLtb3OEeJTzgEU94xgvKwt0r3vCOD3ziC9/4QQW/wp3qV/1f/9f/9X/9X//X/9XtVL/q//q//q//6//6v/6vbqf6Vf/X//V//V//1//1f3U71a/6v/7vf3SqX/V//V//1//1f/1f/1e3U/2q/+v/+r/V/98/LZpFnw=="
    },
    {
      type = "objectgroup",
      id = 2,
      name = "Object Layer 3",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 4,
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 3,
      name = "options_pc",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "MenuPrefs"
      },
      objects = {
        {
          id = 2,
          name = "cancel",
          type = "UIButton",
          shape = "text",
          x = 30,
          y = 264,
          width = 180,
          height = 16,
          rotation = 0,
          visible = false,
          text = "cancel",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {}
        },
        {
          id = 1,
          name = "fullscreen",
          type = "UIBoolean",
          shape = "text",
          x = 30,
          y = 20,
          width = 180,
          height = 15,
          rotation = 0,
          visible = false,
          text = "fullscreen",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["textformat"] = "fullscreen = %s"
          }
        },
        {
          id = 3,
          name = "vsync",
          type = "UIBoolean",
          shape = "text",
          x = 30,
          y = 40,
          width = 180,
          height = 15,
          rotation = 0,
          visible = false,
          text = "vsync",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["textformat"] = "vsync = %s"
          }
        },
        {
          id = 5,
          name = "volume",
          type = "UIOption",
          shape = "text",
          x = 30,
          y = 140,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Volume %d",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["increment"] = 0.25,
            ["max"] = 1,
            ["textformat"] = "Volume %d",
            ["units"] = "percent"
          }
        },
        {
          id = 6,
          name = "canvasscale",
          type = "UIOption",
          shape = "text",
          x = 30,
          y = 100,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Max pixel scale %d",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["increment"] = 1,
            ["max"] = 6,
            ["min"] = 1,
            ["textformat"] = "Max pixel scale %d"
          }
        },
        {
          id = 9,
          name = "rotation",
          type = "UIOption",
          shape = "text",
          x = 30,
          y = 120,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Rotation (cw) %d",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["increment"] = 90,
            ["max"] = 270,
            ["min"] = 0,
            ["textformat"] = "Rotation (cw) %d"
          }
        },
        {
          id = 7,
          name = "back",
          type = "UIButton",
          shape = "text",
          x = 30,
          y = 280,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Back",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "goBack"
          }
        },
        {
          id = 8,
          name = "default",
          type = "UIButton",
          shape = "text",
          x = 30,
          y = 260,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Reset defaults",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "resetPrefs"
          }
        },
        {
          id = 19,
          name = "controller",
          type = "UIButton",
          shape = "text",
          x = 30,
          y = 40,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Controller",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "changeMenu",
            ["nextmenu"] = "options_controller"
          }
        },
        {
          id = 20,
          name = "keyboard",
          type = "UIButton",
          shape = "text",
          x = 30,
          y = 60,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Keyboard",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "changeMenu",
            ["nextmenu"] = "options_keyboard"
          }
        },
        {
          id = 32,
          name = "menutitle",
          type = "",
          shape = "text",
          x = 30,
          y = 20,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "OPTIONS",
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
      name = "options_mobile",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "MenuPrefs"
      },
      objects = {
        {
          id = 35,
          name = "menutitle",
          type = "",
          shape = "text",
          x = 30,
          y = 20,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "OPTIONS",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {}
        },
        {
          id = 36,
          name = "default",
          type = "UIButton",
          shape = "text",
          x = 30,
          y = 260,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Reset defaults",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "resetPrefs"
          }
        },
        {
          id = 37,
          name = "back",
          type = "UIButton",
          shape = "text",
          x = 30,
          y = 280,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Back",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "goBack"
          }
        },
        {
          id = 38,
          name = "canvasscale",
          type = "UIOption",
          shape = "text",
          x = 30,
          y = 100,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Max pixel scale %d",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["increment"] = 1,
            ["max"] = 6,
            ["min"] = 1,
            ["textformat"] = "Max pixel scale %d"
          }
        },
        {
          id = 39,
          name = "volume",
          type = "UIOption",
          shape = "text",
          x = 30,
          y = 140,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Volume %d",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["increment"] = 0.25,
            ["max"] = 1,
            ["textformat"] = "Volume %d",
            ["units"] = "percent"
          }
        },
        {
          id = 42,
          name = "controller",
          type = "UIButton",
          shape = "text",
          x = 30,
          y = 60,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Controller",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "changeMenu",
            ["nextmenu"] = "options_controller"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 5,
      name = "options_keyboard",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["prevmenu"] = "options_pc",
        ["script"] = "UIMenu"
      },
      objects = {
        {
          id = 10,
          name = "key_left",
          type = "UIInputBind",
          shape = "text",
          x = 30,
          y = 40,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Left = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["textformat"] = "Left = %s"
          }
        },
        {
          id = 11,
          name = "key_right",
          type = "UIInputBind",
          shape = "text",
          x = 30,
          y = 60,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Right = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["textformat"] = "Right = %s"
          }
        },
        {
          id = 12,
          name = "key_up",
          type = "UIInputBind",
          shape = "text",
          x = 30,
          y = 80,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Up = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["textformat"] = "Up = %s"
          }
        },
        {
          id = 13,
          name = "key_down",
          type = "UIInputBind",
          shape = "text",
          x = 30,
          y = 100,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Down = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["textformat"] = "Down = %s"
          }
        },
        {
          id = 14,
          name = "key_fire",
          type = "UIInputBind",
          shape = "text",
          x = 30,
          y = 120,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Fire = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["textformat"] = "Fire = %s"
          }
        },
        {
          id = 15,
          name = "key_focus",
          type = "UIInputBind",
          shape = "text",
          x = 30,
          y = 140,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Alt Fire = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["textformat"] = "Alt Fire = %s"
          }
        },
        {
          id = 16,
          name = "key_bomb",
          type = "UIInputBind",
          shape = "text",
          x = 30,
          y = 160,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Bomb = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["textformat"] = "Bomb = %s"
          }
        },
        {
          id = 17,
          name = "key_pausemenu",
          type = "",
          shape = "text",
          x = 30,
          y = 180,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Pause = escape",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["textformat"] = "Pause = %s"
          }
        },
        {
          id = 21,
          name = "key_pause",
          type = "UIInputBind",
          shape = "text",
          x = 30,
          y = 180,
          width = 180,
          height = 15,
          rotation = 0,
          visible = false,
          text = "pause",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["textformat"] = "pause = %s"
          }
        },
        {
          id = 18,
          name = "back",
          type = "UIButton",
          shape = "text",
          x = 30,
          y = 280,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Back",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "goBack"
          }
        },
        {
          id = 33,
          name = "menutitle",
          type = "",
          shape = "text",
          x = 30,
          y = 20,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "KEYBOARD",
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
      id = 6,
      name = "options_controller",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["prevmenu"] = "options_pc",
        ["script"] = "UIMenu"
      },
      objects = {
        {
          id = 24,
          name = "joy_x",
          type = "UIInputBind",
          shape = "text",
          x = 20,
          y = 40,
          width = 200,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Left/Right = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["inputtype"] = "axis",
            ["textformat"] = "Left/Right = %s"
          }
        },
        {
          id = 25,
          name = "joy_y",
          type = "UIInputBind",
          shape = "text",
          x = 20,
          y = 60,
          width = 200,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Up/Down = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["inputtype"] = "axis",
            ["textformat"] = "Up/Down = %s"
          }
        },
        {
          id = 26,
          name = "joy_fire",
          type = "UIInputBind",
          shape = "text",
          x = 20,
          y = 80,
          width = 200,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Fire = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["inputtype"] = "button",
            ["textformat"] = "Fire = %s"
          }
        },
        {
          id = 27,
          name = "joy_focus",
          type = "UIInputBind",
          shape = "text",
          x = 20,
          y = 100,
          width = 200,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Alt Fire = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["inputtype"] = "button",
            ["textformat"] = "Alt Fire = %s"
          }
        },
        {
          id = 28,
          name = "joy_bomb",
          type = "UIInputBind",
          shape = "text",
          x = 20,
          y = 120,
          width = 200,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Bomb = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["inputtype"] = "button",
            ["textformat"] = "Bomb = %s"
          }
        },
        {
          id = 29,
          name = "joy_pausemenu",
          type = "UIInputBind",
          shape = "text",
          x = 20,
          y = 140,
          width = 200,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Pause = %s",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["inputtype"] = "button",
            ["textformat"] = "Pause = %s"
          }
        },
        {
          id = 30,
          name = "back",
          type = "UIButton",
          shape = "text",
          x = 30,
          y = 280,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "Back",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "goBack"
          }
        },
        {
          id = 34,
          name = "menutitle",
          type = "",
          shape = "text",
          x = 30,
          y = 20,
          width = 180,
          height = 15,
          rotation = 0,
          visible = true,
          text = "CONTROLLER",
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
      id = 7,
      name = "inputbind_instructions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 40,
          name = "",
          type = "",
          shape = "text",
          x = 30,
          y = 220,
          width = 180,
          height = 60,
          rotation = 0,
          visible = false,
          text = "Press new %s to assign\n\nOr Escape key to cancel",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textformat"] = "Press new %s to assign\n\nOr Escape key to cancel"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 8,
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
