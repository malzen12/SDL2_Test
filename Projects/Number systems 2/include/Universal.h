#pragma once

#define SDL_MAIN_HANDLED
#include <SDL.h>
#include <SDL_image.h>

struct Point {
  int32_t x;
  int32_t y;
  Point(int32_t x = 0, int32_t y = 0);
  void print();

  Point& operator-=(const Point& rhs) {
    x -= rhs.x;
    y -= rhs.y;
    return *this;
  }

  Point operator-(const Point& rtPoint) const {
    Point temp{*this};
    temp -= rtPoint;
    return temp;
  }

  Point operator-() const {
    Point temp{};
    temp -= *this;
    return temp;
  }

  Point& operator+=(const Point& rhs) {
    x += rhs.x;
    y += rhs.y;
    return *this;
  }

  Point operator+(const Point& rtPoint) const {
    Point temp{*this};
    temp += rtPoint;
    return temp;
  }
};

struct Color {
  Uint8 red;
  Uint8 green;
  Uint8 blue;
  Uint8 alpha;

  Color();
  Color(Uint8 red, Uint8 green, Uint8 blue, Uint8 alpha);

  void setColor(SDL_Renderer* pRender);
  void fillRect(SDL_Renderer* pRender, const SDL_Rect& Rct);
  void fillRect(SDL_Renderer* pRender, const Point LeftUp, const Point Shift);
  void drawLine(SDL_Renderer* pRender, const Point First, const Point Second);
  void DrawArrow(SDL_Renderer* pRender, const Point start, const Point endP, const int len);
};

struct Triangle {
  Point p1, p2, p3;
  Color col;
  Triangle(Point tp1, Point tp2, Point tp3, Color tcol);
  void render(SDL_Renderer* pRender);
  void toValid();
  void print();
};
