#pragma once

#include "Universal.h"
#include <memory>

class WindowWraper {
  std::unique_ptr<SDL_Window*> pWindow;

public:
  WindowWraper(const char* title, int x, int y, int w, int h, Uint32 flags);

  SDL_Window* get_value() const;

  void destroy();
};
