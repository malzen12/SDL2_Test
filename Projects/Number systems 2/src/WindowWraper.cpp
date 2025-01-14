#include "WindowWraper.h"

WindowWraper::WindowWraper(const char* title, int x, int y, int w, int h, Uint32 flags)
    : pWindow(std::make_unique<SDL_Window*>(SDL_CreateWindow(title, x, y, w, h, flags))) {}

SDL_Window* WindowWraper::get_value() const { return *pWindow.get(); }

void WindowWraper::destroy() { SDL_DestroyWindow(*pWindow.get()); }
