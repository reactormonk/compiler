-- A library for low latency HTTP communication. See the HTTP library for
-- standard requests like GET, POST, etc.
module WebSocket where

import Signal (Signal)
import Basics (String)
import Native.WebSocket

-- Create a web-socket. The first argument is the URL of the desired
-- web-socket server. The input signal holds the outgoing messages,
-- and the resulting signal contains the incoming ones.
connect : String -> Signal String -> Signal String
connect = Native.WebSocket.connect

-- data Action = Open String | Close String | Send String String
-- connections : Signal Action -> Signal String