#pragma once

#include "Universal.h"
#include <SDL.h>
#include <SDL_image.h>
#include <cassert>
#include <string>
#include <vector>

enum class Position { Right, Left, Center };

struct Letters {
  SDL_Texture* pTexture;
  SDL_Rect aLetters[256];
  SDL_Renderer* pRender;
  int height;

  ~Letters();
  Letters(SDL_Renderer* render);
  void render(int c, int x, int y);
};

struct InputTextBox {
  std::vector<int> vText;
  Letters* allLetters;
  int TextWidth = 0;

  Point UpLeft, DownRight;
  Point UpLeftBody, DownRightBody;
  Point Current;
  Color headColor;
  Color bodyColor;

  SDL_Rect RBody, RHead;

  InputTextBox();
  InputTextBox(Letters* allLetters, Point UpLeft, Point DownRight, Point UpLeftBody, Point DownRightBody);
  InputTextBox(Letters* allLetters, Point UpLeft, Point Shift, int borderWide, int borderHeig);

  void addLetter(int c);
  void clearText();
  void render(Position pos);
  bool isMouseOn(Point mouse);
  std::string TextToString();
  int TextToInt();
};

struct TextBox {
  std::vector<int> vText;
  Letters* allLetters;
  std::string inputStr;
  int TextWidth = 0;

  SDL_Rect RBody, RHead;

  Point UpLeft, DownRight;
  Point UpLeftBody, DownRightBody;
  Color headColor;
  Color bodyColor;

  TextBox();
  TextBox(Letters* allLetters, Point UpLeft, Point Shift, Point UpLeftBody, Point DownRightBody,
          std::string inputStr);
  TextBox(Letters* allLetters, Point UpLeft, int borderWide, int borderHeig, std::string inputStr);
  TextBox(Letters* allLetters, Point UpLeft, Point Shift, int borderWide, int borderHeig,
          std::string inputStr);

  void changeText(const std::string& tempStr);
  void clearText();
  void render(Position pos = Position::Right);
  bool isMouseOn(Point mouse);
};

struct Button {
  std::vector<int> vText;
  Letters* allLetters;
  std::string inputStr;
  int TextWidth = 0;

  SDL_Rect RBody, RHead;

  Point UpLeft, DownRight;
  Point UpLeftBody, DownRightBody;
  Color headColor;
  Color bodyColor;

  Button(Letters* allLetters, Point UpLeft, Point DownRight, Point UpLeftBody, Point DownRightBody,
         std::string inputStr);
  Button(Letters* allLetters, Point UpLeft, int borderWide, int borderHeig, std::string inputStr);
  Button(Letters* allLetters, Point UpLeft, Point Shift, int borderWide, int borderHeig, std::string inputStr);

  void changeText(const std::string& tempStr);
  void render(Position pos);
  bool isMouseOn(Point mouse);
};

struct OneOptionChoise {
  std::vector<TextBox*> vTextBox;
  Letters* allLetters;
  Color bodyColor;
  int activeOption = -1;

  OneOptionChoise();
  OneOptionChoise(Letters* allLetters);
  ~OneOptionChoise();

  void tryToChose(Point mouse);
  void add(Point pt);
  void render();
  void clearChoise();
};

struct Switcher {
  SDL_Renderer* pRender;
  bool isOn;
  SDL_Rect RBody, RHead;

  Point UpLeft, DownRight;
  Point UpLeftBody, DownRightBody;
  Color headColor;
  Color bodyColorON;
  Color bodyColorOFF;

  Switcher();
  Switcher(SDL_Renderer* pRender, Point UpLeft, Point Shift, int borderWide, int borderHeig);
  void render();
  void change();
  bool isMouseOn(Point mouse);
};
