#pragma once

#define SDL_MAIN_HANDLED

#include <map>
#include <array>
#include <string>
#include <cassert>
#include <list>
#include <vector>
#include <fstream>
#include <iostream>
#include <functional>
#include "SDL.h"
#include "SDL_image.h"
#include "Universal.h"

enum struct Position
{
  Left,
  Center,
  Right
};
struct TextureDeleter{
  void operator()(SDL_Texture* texture){
    SDL_DestroyTexture(texture);
  }
};


class IFont{
public:
  virtual int calculate(const std::string& s) = 0;
public:
  virtual void render(Uint8 c, int x, int y) = 0;
public:
  virtual Rectangle getLetter(size_t c) const = 0;
  virtual int getLetterHeight() const = 0;
  virtual int getLetterMaxWidth() const = 0;
  virtual std::shared_ptr<IRenderer> getRender() const = 0;
};

class Font:public IFont{
public:
  using arrRect = std::array<Rectangle, 256>;
  Font(std::shared_ptr<IRenderer> pRender);
public:
  int calculate(const std::string& s) override;
public:
  void render(Uint8 c, int x, int y) override;
public:
  Rectangle getLetter(size_t c) const override;
  int getLetterHeight() const override;
  int getLetterMaxWidth() const override;
  std::shared_ptr<IRenderer> getRender() const override;
private:
  std::shared_ptr<IRenderer> m_pRender;
  std::unique_ptr<SDL_Texture, TextureDeleter> m_pTexture;
  arrRect m_aLetters;

  int m_letterMaxWidth{0};
  int m_letterHeight{0};
};









