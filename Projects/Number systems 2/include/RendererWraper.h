#pragma once

#include "Universal.h"
#include <memory>

class RendererWraper {
  std::unique_ptr<SDL_Renderer*> m_pRenderer;
  SDL_RendererInfo m_info;
  int m_width, m_height;
  SDL_Color m_color;
  SDL_BlendMode m_blendMode;

public:
  RendererWraper(SDL_Window* pWindow, int index, Uint32 flags);

  void destroy();

  SDL_Renderer* get_value() const;

  SDL_RendererInfo get_info() const;

  int get_width();

  int get_height();

  SDL_Color get_color();

  SDL_BlendMode get_blenderMod();

  void set_color(SDL_Color c);

  void set_blendMode(SDL_BlendMode b);

  void full_fill();

  void full_fill(SDL_Color c);

  void present();
};
