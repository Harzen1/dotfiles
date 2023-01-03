-------------------------------------------------
-- mpris based Arc Widget for Awesome Window Manager
-- Modelled after Pavel Makhov's work
-- @author Mohammed Gaber
-- requires - playerctl
-- @copyright 2020
-------------------------------------------------
local awful = require("awful")
local beautiful = require("beautiful")
local watch = require("awful.widget.watch")
local wibox = require("wibox")
local gears = require("gears")

local GET_MPD_CMD = "playerctl -p %s -f '{{status}};{{xesam:artist}};{{xesam:title}}' metadata"

local TOGGLE_MPD_CMD = "playerctl play-pause"
local NEXT_MPD_CMD = "playerctl next"
local PREV_MPD_CMD = "playerctl previous"
local LIST_PLAYERS_CMD = "playerctl -l"


local default_player = 'mpd'
