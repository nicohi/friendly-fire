module Main where

import NGL.Rendering
import NGL.Shape

main :: IO ()
main = do
  let prims =
        [ shape $
            Triangle
              (0.0, 1.0)
              (-1.0, -1.0)
              (1.0, -1.0),
          shape $
            Circle (0.5, 0.5) 0.5 20
        ]
  win <- createWindow "My First Window" (512, 512)
  drawInWindow win prims
  closeWindow win
