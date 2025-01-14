#pragma once

#include "gmock/gmock.h"
#include "Universal.h"

class MockRenderer : public IRenderer
{
public:
  MockRenderer(){
    SDL_Surface* surf = SDL_CreateRGBSurface(0, 1, 1, 32, 0, 0, 0, 0);
    m_pRender = std::unique_ptr<SDL_Renderer, RendererDeleter>(SDL_CreateSoftwareRenderer(surf));
  };


  MOCK_METHOD(void, destroy, (),(override));
  MOCK_METHOD(void, fullFill, (),(override));
  MOCK_METHOD(void, fullFill, (Color c),(override));
  MOCK_METHOD(void, fillRect, (Rectangle rect),(override));
  MOCK_METHOD(void, fillRect, (Rectangle rect, Color col),(override));
  MOCK_METHOD(void, fillRect, (Point xy, Point wh),(override));
  MOCK_METHOD(void, fillRect, (Point xy, Point wh, Color col),(override));
  MOCK_METHOD(void, present,(), (override));
  MOCK_METHOD(SDL_Renderer*, getValue,(), (const, override));
  MOCK_METHOD(SDL_RendererInfo, getInfo,(), (const, override));
  MOCK_METHOD(int, getWidth,(), (const, override));
  MOCK_METHOD(int, getHeight,(), (const, override));
  MOCK_METHOD(Color, getColor,(), (const, override));
  MOCK_METHOD(SDL_BlendMode, getBlenderMod,(), (const, override));
  MOCK_METHOD(void, setColor, (Color c), (override));
  MOCK_METHOD(void, setBlendMode, (SDL_BlendMode b), (override));
  std::unique_ptr<SDL_Renderer, RendererDeleter> m_pRender;
};
