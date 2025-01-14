#include "RendererWraper.h"

RendererWraper::RendererWraper(SDL_Window* pWindow, int index, Uint32 flags)
    : m_pRenderer(std::make_unique<SDL_Renderer*>(SDL_CreateRenderer(pWindow, index, flags)))
    , m_color({255, 255, 255, 255}) {
  SDL_GetRendererInfo(*m_pRenderer.get(), &m_info);
  SDL_GetRendererOutputSize(*m_pRenderer.get(), &m_width, &m_height);
  SDL_SetRenderDrawColor(*m_pRenderer.get(), m_color.r, m_color.g, m_color.b, m_color.a);
  SDL_GetRenderDrawBlendMode(*m_pRenderer.get(), &m_blendMode);
}

void RendererWraper::destroy() { SDL_DestroyRenderer(*m_pRenderer.get()); }

SDL_Renderer* RendererWraper::get_value() const { return *m_pRenderer.get(); }

SDL_RendererInfo RendererWraper::get_info() const { return m_info; }

int RendererWraper::get_width() { return m_width; }

int RendererWraper::get_height() { return m_height; }

SDL_Color RendererWraper::get_color() { return m_color; }

SDL_BlendMode RendererWraper::get_blenderMod() { return m_blendMode; }

void RendererWraper::set_color(SDL_Color c) {
  m_color = c;
  SDL_SetRenderDrawColor(*m_pRenderer.get(), c.r, c.g, c.b, c.a);
}

void RendererWraper::set_blendMode(SDL_BlendMode b) {
  m_blendMode = b;
  SDL_SetRenderDrawBlendMode(*m_pRenderer.get(), b);
}

void RendererWraper::full_fill() { SDL_RenderClear(*m_pRenderer.get()); }

void RendererWraper::full_fill(SDL_Color c) {
  set_color(c);
  full_fill();
}

void RendererWraper::present() { SDL_RenderPresent(*m_pRenderer.get()); }
