Config { 

   -- appearance
     font =         "xft:Comfortaa Regular:size=12:italic:antialias=true, font Awesome 5 free Solid:style=solid:size=16, font Awesome 5 free Solid:style=solid:size=16, font Awesome 5 Brands:size=16, Roboto:size=16"
     --, font Awesome 5 free Solid:style=solid:size=12, font Awesome 5 Brands:size=13, Roboto:size=13"
     --Bitstream Vera Sans Mono:size=13:bold:antialias=true"
   , bgColor =      "#202020"
   --"black"
   , fgColor =      "#CC99FF"
   --"#646464"
   , position =     Top
   , border =       BottomB
   , borderColor =  "#FF99FF"
   --"#646464"

   -- layout
   , sepChar =  "%"   -- delineator between plugin names and straight text
   , alignSep = "}{"  -- separator between left-right alignment
   , template = "%UnsafeStdinReader% }{[<fc=#9999FF>  </fc><fc=#FFFF99>%memory%</fc> ] [ <fc=#CC99FF> </fc><fc=#66FFFF>%myweather%</fc> ] [ <fc=#FF9000> </fc> <fc=#FFFFFF>%time%</fc><fc=#66FFFF> %mytime%</fc> ]"

   -- general behavior Unsafe
   , lowerOnStart =     True    -- send to bottom of window stack on start
   , hideOnStart =      False   -- start with window unmapped (hidden)
   , allDesktops =      True    -- show on all desktops
   , overrideRedirect = True    -- set the Override Redirect flag (Xlib)
   , pickBroadest =     False   -- choose widest display (multi-monitor)
   , persistent =       True    -- enable/disable hiding (True = disabled)
 --| <fc=#FFFFFF> %updates% </fc>
   -- plugins
   --   Numbers can be automatically colored according to their value. xmobar
   --   decides color based on a three-tier/two-cutoff system, controlled by
   --   command options:
   --     --Low sets the low cutoff
   --     --High sets the high cutoff
   --
   --     --low sets the color below --Low cutoff
   --     --normal sets the color between --Low and --High cutoffs
   --     --High sets the color above --High cutoff
   --
   --   The --template option controls how the plugin is displayed. Text
   --   color can be set by enclosing in <fc></fc> tags. For more details
   --   see http://projects.haskell.org/xmobar/#system-monitor-plugins.
   , commands = 

        -- weather monitor
     --  [ Run Weather "EGFF" ["-t","<skyCondition> <fc=#FF9999><station>:</fc> <fc=#FFFFFF><tempC>C</fc>",
      --                                    "-L","18","-H","25",
       --                                   "--normal","green",
        --                                  "--high","red",
        --                                  "--low","lightblue"] 36000
      -- Run Weather "EGPF" ["-t", | "<fc=#FF9999><station>: <tempC>C</fc>"] 36000
                            
                           
         [ Run UnsafeStdinReader

        -- network activity monitor (dynamic interface resolution)
        , Run DynNetwork     [ "--template" , " <rx>kB/s  <tx>kB/s"
                             , "--Low"      , "5000"       -- units: B/s
                             , "--High"     , "20000"       -- units: B/s
                             , "--low"      , "#FFFF99"
                             -- "#FFFF99"
                             , "--normal"   , "#FFFF99"
                             , "--high"     , "red"
                             ] 10

        -- cpu activity monitor
        , Run MultiCpu       [ "--template" , "Cpu: <total0>%|<total1>%"
                             , "--Low"      , "50"         -- units: %
                             , "--High"     , "85"         -- units: %
                             , "--low"      , "white"
                             , "--normal"   , "orange"
                             , "--high"     , "red"
                             ] 10

        -- cpu core temperature monitor
        , Run CoreTemp       [ "--template" , "Temp: <core0>°C|<core1>°C"
                             , "--Low"      , "70"        -- units: °C
                             , "--High"     , "80"        -- units: °C
                             , "--low"      , "darkgreen"
                             , "--normal"   , "darkorange"
                             , "--high"     , "darkred"
                             ] 50
                          
        -- memory usage monitor
       -- , Run Memory         [ "--template" ,"Mem: <free>"
        --                     , "--Low"      , "20"        -- units: %
         --                    , "--High"     , "90"        -- units: %
         --                    , "--low"      , "darkgreen"
         --                    , "--normal"   , "darkorange"
          --                   , "--high"     , "darkred"
          --                   ] 10
                             
        , Run Com "/home/phil/.xmobar/mem.sh" [] "memory" 20	
        , Run Com "/home/phil/.xmobar/dwmcpu" [] "cpu1" 20	
        , Run Com "/home/phil/.xmobar/dwmmail" [] "mail" 3000
        , Run Com "/home/phil/.xmobar/updates" [] "updates" 6000
        , Run Com "/home/phil/.xmobar/time" [] "time" 60
        , Run Com "/home/phil/.xmobar/time2" [] "mytime" 10
        , Run Com "/home/phil/.xmobar/weather" [] "myweather" 3000

        -- battery monitor
        , Run Battery        [ "--template" , "Batt: <acstatus>"
                             , "--Low"      , "10"        -- units: %
                             , "--High"     , "80"        -- units: %
                             , "--low"      , "darkred"
                             , "--normal"   , "darkorange"
                             , "--high"     , "darkgreen"

                             , "--" -- battery specific options
                                       -- discharging status
                                       , "-o"	, "<left>% (<timeleft>)"
                                       -- AC "on" status
                                       , "-O"	, "<fc=#dAA520>Charging</fc>"
                                       -- charged status
                                       , "-i"	, "<fc=#006000>Charged</fc>"
                             ] 50

        -- time and date indicator 
        --   (%F = d-m-y date, %a = day of week, %T = h:m:s time)
        , Run Date           "<fc=#FFFFFF>%F (%a) %T</fc>" "date" 10

        -- keyboard layout indicator
        , Run Kbd            [ ("us(dvorak)" , "<fc=#00008B>DV</fc>")
                             , ("us"         , "<fc=#8B0000>US</fc>")
                             ]
        ]
   }
