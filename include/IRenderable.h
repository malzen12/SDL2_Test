#pragma once

#include "Universal.h"

class IRenderable{
public:
  virtual void render(Point = Point{}) = 0;
  virtual ~IRenderable()  = default;
};









