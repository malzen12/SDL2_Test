#pragma once
#define SDL_MAIN_HANDLED

#include<iostream>
#include <fstream>
#include <string>
#include <vector>
#include <algorithm>
#include <memory>

#include "SDL.h"
#include "SDL_image.h"

using Color = SDL_Color;
using Rectangle = SDL_Rect;
struct Point{
  Point& operator-=(const Point& rhs){
    x -= rhs.x; y -= rhs.y;
    return *this;
  }

  Point operator-(const Point& rhs) const{
    Point temp{*this};
    temp -= rhs;
    return temp;
  }

  Point operator-() const{
    Point temp{};
    temp -= *this;
    return temp;
  }

  Point& operator+=(const Point& rhs){
    x += rhs.x; y += rhs.y;
    return *this;
  }

  Point operator+(const Point& rhs) const{
    Point temp{*this};
    temp += rhs;
    return temp;
  }
  Point operator+() const{
    return *this;
  }

  Point& operator*=(const int rhs){
    x *= rhs;
    y *= rhs;
    return *this;
  }

  Point operator*(const int rhs) const{
    Point temp{*this};
    temp *= rhs;
    return temp;
  }

  Point& operator/=(const int rhs){
    x /= rhs;
    y /= rhs;
    return *this;
  }

  Point operator/(const int rhs) const{
    Point temp{*this};
    temp /= rhs;
    return temp;
  }

  bool operator==(const Point& rhs){
    return x == rhs.x && y == rhs.y;
  }

  void print();
public:
  int x;
  int y;
};

Point operator*(const int lhs, const Point& rhs);
Point operator*(const int lhs, Point&& rhs);

class WindowInfo{

};

struct WindowDeleter{
  void operator()(SDL_Window* p){
    std::cout << "Window" << SDL_GetWindowID(p) << " is Killed" << std::endl;
    SDL_DestroyWindow(p);
  }
};

class Window{
public:
  Window() = default;
  Window(SDL_Window* win);
  Window(const char *title, Point coordinates, int w, int h, uint32_t flags);
  Window(const char *title, int x, int y, int w, int h, uint32_t flags);
public:
  void destroy();
public:
  SDL_Window* getValue() const;
  std::pair<int, int> getSize();
  std::pair<int, int> getPos();
  uint32_t getId() const;
  uint32_t getFlags() const;
  bool flagsIsOn(uint32_t) const;

  void setSize(int w, int h);


private:
  std::unique_ptr<SDL_Window, WindowDeleter> m_pWindow;
  uint32_t m_id;
  uint32_t m_flags;
};

struct RendererDeleter{
  void operator()(SDL_Renderer* p){
    SDL_DestroyRenderer(p);
  }
};



class IRenderer{
public:
  virtual void destroy() = 0;
public:
  virtual void fullFill() = 0;
  virtual void fullFill(Color c) = 0;
  virtual void fillRect(Rectangle rect) = 0;
  virtual void fillRect(Rectangle rect, Color col) = 0;
  virtual void fillRect(Point xy, Point wh) = 0;
  virtual void fillRect(Point xy, Point wh, Color col) = 0;

  virtual void present() = 0;
public:
  virtual SDL_Renderer* getValue() const = 0;
  virtual SDL_RendererInfo getInfo() const = 0;
  virtual int getWidth() const = 0;
  virtual int getHeight() const = 0;
  virtual Color getColor() const = 0;
  virtual SDL_BlendMode getBlenderMod() const = 0;

  virtual void setColor(Color c) = 0;
  virtual void setBlendMode(SDL_BlendMode b) = 0;

};

class Renderer final: public IRenderer{
public:
  Renderer() = default;
  Renderer(SDL_Window * pWindow, uint32_t flags);
  Renderer(SDL_Window * pWindow, int index, uint32_t flags);
public:
  void destroy() override;
public:
  void fullFill() override;
  void fullFill(Color c) override;
  void fillRect(Rectangle rect) override;
  void fillRect(Rectangle rect, Color col) override;
  void fillRect(Point xy, Point wh) override;
  void fillRect(Point xy, Point wh, Color col) override;

  void present() override;
public:
  SDL_Renderer* getValue() const override;
  SDL_RendererInfo getInfo() const override;
  int getWidth() const override;
  int getHeight() const override;
  Color getColor() const override;
  SDL_BlendMode getBlenderMod() const override;

  void setColor(Color c) override;
  void setBlendMode(SDL_BlendMode b) override;
private:
  std::unique_ptr<SDL_Renderer, RendererDeleter> m_pRenderer;
  SDL_RendererInfo m_info;
  int m_width, m_height;
  Color m_color;
  SDL_BlendMode m_blenderMode;
};
