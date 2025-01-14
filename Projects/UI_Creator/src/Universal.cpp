#include "Universal.h"

void Point::print(){
  std::cout << x << ' ' << y << std::endl;
}

Point operator*(const int lhs, const Point& rhs){
  Point temp{rhs};
  temp.x *= lhs;
  temp.y *= lhs;
  return temp;
}
Point operator*(const int lhs, Point&& rhs){
  rhs.x *= lhs;
  rhs.y *= lhs;
  return rhs;
}
//////////////////////////////////////////////////////////
Window::Window(SDL_Window *win)
  :m_pWindow(std::unique_ptr<SDL_Window, WindowDeleter>(win)),
    m_id(SDL_GetWindowID(win)),
    m_flags(SDL_GetWindowFlags(win))
{}

Window::Window(const char *title, Point coordinates, int w, int h, uint32_t flags)
  :Window(title, coordinates.x, coordinates.y, w, h, flags)
{}

Window::Window(const char *title, int x, int y, int w, int h, uint32_t flags)
  :m_pWindow(std::unique_ptr<SDL_Window, WindowDeleter>(SDL_CreateWindow(title, x, y, w, h, flags))),
    m_id(SDL_GetWindowID(m_pWindow.get())),
    m_flags(flags)
{}

SDL_Window* Window::getValue() const{
  return m_pWindow.get();
}

std::pair<int, int> Window::getSize(){
  int w, h;
  SDL_GetWindowSize(m_pWindow.get(), &w, &h);
  return std::make_pair(w, h);
}

std::pair<int, int> Window::getPos(){
  int x, y;
  SDL_GetWindowSize(m_pWindow.get(), &x, &y);
  return std::make_pair(x, y);
}

uint32_t Window::getId() const{
  return m_id;
}

uint32_t Window::getFlags() const{
  return m_flags;
}

bool Window::flagsIsOn(uint32_t flags) const{
  return m_flags & flags;
}

void Window::setSize(int w, int h){
  SDL_SetWindowSize(m_pWindow.get(), w, h);
}



void Window::destroy(){
  SDL_DestroyWindow(m_pWindow.get());
}
///////////////////////////////////////////////////////////
Renderer::Renderer(SDL_Window *pWindow, uint32_t flags)
  :Renderer(pWindow, -1, flags)
{}

Renderer::Renderer(SDL_Window *pWindow, int index, uint32_t flags)    
{
  m_pRenderer = std::unique_ptr<SDL_Renderer, RendererDeleter>(SDL_CreateRenderer(pWindow, index, flags));
  m_color = Color{255,255,255,255};
  SDL_GetRendererInfo(m_pRenderer.get(),&m_info);
//  SDL_GetRendererInfo(*m_pRenderer.get(),&m_info);
  SDL_GetRendererOutputSize(m_pRenderer.get(),&m_width,&m_height);
  SDL_SetRenderDrawColor(m_pRenderer.get(), m_color.r, m_color.g, m_color.b, m_color.a);
  SDL_GetRenderDrawBlendMode(m_pRenderer.get(), &m_blenderMode);
}

void Renderer::destroy(){SDL_DestroyRenderer(m_pRenderer.get());}

SDL_Renderer *Renderer::getValue() const{return m_pRenderer.get();}
SDL_RendererInfo Renderer::getInfo() const{return m_info;}
int Renderer::getWidth() const{return m_width;}
int Renderer::getHeight() const{return m_height;}
Color Renderer::getColor() const{return m_color;}
SDL_BlendMode Renderer::getBlenderMod() const {
  return m_blenderMode;
}

void Renderer::setColor(Color c){
  m_color = c;
  SDL_SetRenderDrawColor(m_pRenderer.get(), c.r, c.g, c.b, c.a);
}
void Renderer::setBlendMode(SDL_BlendMode b){
  m_blenderMode = b;
  SDL_SetRenderDrawBlendMode(m_pRenderer.get(), b);
}

void Renderer::fullFill(){
  SDL_RenderClear(m_pRenderer.get());
}
void Renderer::fullFill(Color c){
  setColor(c);
  fullFill();
}

void Renderer::fillRect(Rectangle rect){
  SDL_RenderFillRect(m_pRenderer.get(), &rect);
}

void Renderer::fillRect(Rectangle rect, Color col){
  setColor(col);
  SDL_RenderFillRect(m_pRenderer.get(), &rect);
}

void Renderer::fillRect(Point xy, Point wh){
  Rectangle rect{xy.x, xy.y, wh.x, wh.y};
  SDL_RenderFillRect(m_pRenderer.get(), &rect);
}

void Renderer::fillRect(Point xy, Point wh, Color col){
  setColor(col);
  fillRect(xy, wh);
}

void Renderer::present(){SDL_RenderPresent(m_pRenderer.get()); }
