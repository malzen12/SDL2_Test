#include "Letters.h"
#include <fstream>
#include <iostream>

Letters::~Letters() { SDL_DestroyTexture(pTexture); }

Letters::Letters(SDL_Renderer* render)
    : pRender(render) {
  pTexture = IMG_LoadTexture(pRender, "Letters.png");
  std::ifstream fin("Letters.txt");
  int charID;
  int x, width;
  int temp;
  SDL_QueryTexture(pTexture, nullptr, nullptr, nullptr, &temp);
  // height = static_cast<int>(temp);
  height = temp;
  while (fin) {
    fin >> charID >> x >> width;
    assert(charID <= 255);
    aLetters[charID] = {x, 0, width, height};
  }
}

void Letters::render(int c, int x, int y) {
  SDL_Rect tempRect = {x, y, aLetters[c].w, aLetters[c].h};
  SDL_RenderCopy(pRender, pTexture, &aLetters[c], &tempRect);
}

InputTextBox::InputTextBox(Letters* allLetters, Point UpLeft, Point DownRight, Point UpLeftBody,
                           Point DownRightBody)
    : allLetters(allLetters)
    , UpLeft(UpLeft)
    , DownRight(DownRight)
    , UpLeftBody(UpLeftBody)
    , DownRightBody(DownRightBody)
    , Current(UpLeftBody) {
  RHead = {UpLeft.x, UpLeft.y, (DownRight.x - UpLeft.x), (DownRight.y - UpLeft.y)};
  RBody = {UpLeftBody.x, UpLeftBody.y, (DownRightBody.x - UpLeftBody.x), (DownRightBody.y - UpLeftBody.y)};

  headColor = Color{26, 48, 76, 255};
  bodyColor = Color{13, 72, 68, 255};
}

InputTextBox::InputTextBox(Letters* allLetters, Point UpLeft, Point Shift, int borderWide, int borderHeig)
    : allLetters(allLetters)
    , UpLeft(UpLeft) {
  this->DownRight = Point(UpLeft.x + Shift.x, UpLeft.y + Shift.y);
  this->UpLeftBody = Point(UpLeft.x + borderWide, UpLeft.y + borderHeig);
  this->DownRightBody = Point(DownRight.x - borderWide, DownRight.y - borderHeig);
  Current = UpLeftBody;

  RHead = {UpLeft.x, UpLeft.y, (DownRight.x - UpLeft.x), (DownRight.y - UpLeft.y)};
  RBody = {UpLeftBody.x, UpLeftBody.y, (DownRightBody.x - UpLeftBody.x), (DownRightBody.y - UpLeftBody.y)};

  headColor = Color(26, 48, 76, 255);
  bodyColor = Color(13, 72, 68, 255);
}

void InputTextBox::addLetter(int c) {
  if (c != SDLK_RETURN)
    if (Current.x + allLetters->aLetters[c].w <= DownRightBody.x) {
      Current.x += allLetters->aLetters[c].w;
      TextWidth += allLetters->aLetters[c].w;
    } else {
      TextWidth = 0;
      for (int i = vText.size() - 1; i != -1; --i)
        if (vText[i] != SDLK_SPACE)
          TextWidth += allLetters->aLetters[vText[i]].w;
        else {
          vText[i] = SDLK_RETURN;
          break;
        }
      Current.x = UpLeftBody.x + TextWidth;
      Current.y += allLetters->height;
    }
  else {
    Current.x = UpLeftBody.x;
    Current.y += allLetters->height;
  }
  vText.push_back(c);
}

void InputTextBox::clearText() {
  vText.clear();
  TextWidth = 0;
  Current = UpLeftBody;
}

void InputTextBox::render(Position pos) {
  headColor.setColor(allLetters->pRender);
  SDL_RenderFillRect(allLetters->pRender, &RHead);
  bodyColor.setColor(allLetters->pRender);
  SDL_RenderFillRect(allLetters->pRender, &RBody);
  int x;
  switch (pos) {
    case Position::Right : {
      x = DownRightBody.x - TextWidth;
      break;
    }
    case Position::Left : {
      x = UpLeftBody.x;
      break;
    }
    case Position::Center : {
      x = (DownRightBody.x - UpLeftBody.x - TextWidth) / 2 + UpLeftBody.x;
      break;
    }
  }

  int y = UpLeftBody.y;
  auto startLine = vText.begin();
  int lineSize = 0;
  for (auto i = vText.begin(); i != vText.end(); ++i) {
    if (*i != SDLK_RETURN)
      lineSize += allLetters->aLetters[*i].w;
    else {
      switch (pos) {
        case Position::Right  : x = DownRightBody.x - lineSize; break;
        case Position::Left   : x = UpLeftBody.x; break;
        case Position::Center : x = (DownRightBody.x - UpLeftBody.x - lineSize) / 2 + UpLeftBody.x; break;
      }
      for (; startLine != i; ++startLine) {
        allLetters->render(*startLine, x, y);
        x += allLetters->aLetters[*startLine].w;
      }
      lineSize = 0;
      startLine = i;
      ++startLine;
      y += allLetters->height;
    }
  }
  if (vText.end() != vText.begin()) {
    if (*(vText.rbegin()) != SDLK_RETURN) {
      switch (pos) {
        case Position::Right  : x = DownRightBody.x - lineSize; break;
        case Position::Left   : x = UpLeftBody.x; break;
        case Position::Center : x = (DownRightBody.x - UpLeftBody.x - lineSize) / 2 + UpLeftBody.x; break;
      }
      for (; startLine != vText.end(); ++startLine) {
        allLetters->render(*startLine, x, y);
        x += allLetters->aLetters[*startLine].w;
      }
    }
  }
}

bool InputTextBox::isMouseOn(Point mouse) {
  return mouse.x >= UpLeft.x && mouse.x <= DownRight.x && mouse.y >= UpLeft.y && mouse.y <= DownRight.y;
}

std::string InputTextBox::TextToString() {
  std::string tempStr = "";
  for (auto c : vText) tempStr += c;
  return tempStr;
}

int InputTextBox::TextToInt() {
  int ret = 0;
  for (size_t i = 0; i < vText.size(); ++i) {
    ret *= 10;
    ret += vText[i] - '0';
  }
  return ret;
}

Button::Button(Letters* allLetters, Point UpLeft, Point DownRight, Point UpLeftBody, Point DownRightBody,
               std::string inputStr)
    : allLetters(allLetters)
    , UpLeft(UpLeft)
    , DownRight(DownRight)
    , UpLeftBody(UpLeftBody)
    , DownRightBody(DownRightBody) {
  changeText(inputStr);

  RHead = {UpLeft.x, UpLeft.y, (DownRight.x - UpLeft.x), (DownRight.y - UpLeft.y)};
  RBody = {UpLeftBody.x, UpLeftBody.y, DownRightBody.x - UpLeftBody.x, DownRightBody.y - UpLeftBody.y};
  headColor = Color(26, 48, 76, 255);
  bodyColor = Color(13, 72, 68, 255);
}

Button::Button(Letters* allLetters, Point UpLeft, int32_t borderWide, int32_t borderHeig, std::string inputStr)
    : allLetters(allLetters)
    , UpLeft(UpLeft) {
  changeText(inputStr);
  this->UpLeftBody = Point(UpLeft.x + borderWide, UpLeft.y + borderHeig);
  this->DownRightBody = Point(UpLeftBody.x + TextWidth, UpLeftBody.y + allLetters->height);
  this->DownRight = Point(DownRightBody.x + borderWide, DownRightBody.y + borderHeig);

  RHead = {UpLeft.x, UpLeft.y, (DownRight.x - UpLeft.x), (DownRight.y - UpLeft.y)};
  RBody = {UpLeftBody.x, UpLeftBody.y, DownRightBody.x - UpLeftBody.x, DownRightBody.y - UpLeftBody.y};
  headColor = Color(26, 48, 76, 255);
  bodyColor = Color(13, 72, 68, 255);
}

Button::Button(Letters* allLetters, Point UpLeft, Point Shift, int32_t borderWide, int32_t borderHeig,
               std::string inputStr)
    : allLetters(allLetters)
    , UpLeft(UpLeft) {
  this->DownRight = Point(UpLeft.x + Shift.x, UpLeft.y + Shift.y);
  changeText(inputStr);
  this->UpLeftBody = Point(UpLeft.x + borderWide, UpLeft.y + borderHeig);
  this->DownRightBody = Point(DownRight.x - borderWide, DownRight.y - borderHeig);

  RHead = {UpLeft.x, UpLeft.y, (DownRight.x - UpLeft.x), (DownRight.y - UpLeft.y)};
  RBody = {UpLeftBody.x, UpLeftBody.y, DownRightBody.x - UpLeftBody.x, DownRightBody.y - UpLeftBody.y};
  headColor = Color(26, 48, 76, 255);
  bodyColor = Color(13, 72, 68, 255);
}

void Button::changeText(const std::string& tempStr) {
  inputStr = tempStr;
  int x;
  for (auto i : inputStr) {
    x = ((int) i) & 255;
    vText.push_back(x);
    TextWidth += allLetters->aLetters[x].w;
  }
}

void Button::render(Position pos) {
  headColor.setColor(allLetters->pRender);
  SDL_RenderFillRect(allLetters->pRender, &RHead);
  bodyColor.setColor(allLetters->pRender);
  SDL_RenderFillRect(allLetters->pRender, &RBody);
  int x;
  switch (pos) {
    case Position::Right  : x = DownRightBody.x - TextWidth; break;
    case Position::Left   : x = UpLeftBody.x; break;
    case Position::Center : x = (DownRightBody.x - UpLeftBody.x - TextWidth) / 2 + UpLeftBody.x; break;
  }

  int y = UpLeftBody.y;
  for (auto i = vText.begin(); i != vText.end(); ++i)
    if (*i != 13) {
      allLetters->render(*i, x, y);
      x += allLetters->aLetters[*i].w;
    } else {
      x = UpLeftBody.x;
      y += allLetters->height;
    }
  SDL_SetRenderDrawColor(allLetters->pRender, 192, 192, 192, 80);
  SDL_RenderFillRect(allLetters->pRender, &RBody);
}

bool Button::isMouseOn(Point mouse) {
  return mouse.x >= UpLeft.x && mouse.x <= DownRight.x && mouse.y >= UpLeft.y && mouse.y <= DownRight.y;
}

TextBox::TextBox(Letters* allLetters, Point UpLeft, Point DownRight, Point UpLeftBody, Point DownRightBody,
                 std::string inputStr)
    : allLetters(allLetters)
    , UpLeft(UpLeft)
    , DownRight(DownRight)
    , UpLeftBody(UpLeftBody)
    , DownRightBody(DownRightBody) {
  changeText(inputStr);

  RHead = {UpLeft.x, UpLeft.y, (DownRight.x - UpLeft.x), (DownRight.y - UpLeft.y)};
  RBody = {UpLeftBody.x, UpLeftBody.y, DownRightBody.x - UpLeftBody.x, DownRightBody.y - UpLeftBody.y};
  headColor = Color(26, 48, 76, 255);
  bodyColor = Color(13, 72, 68, 255);
}

TextBox::TextBox(Letters* allLetters, Point UpLeft, int borderWide, int borderHeig, std::string inputStr)
    : allLetters(allLetters)
    , UpLeft(UpLeft) {
  changeText(inputStr);
  this->UpLeftBody = Point(UpLeft.x + borderWide, UpLeft.y + borderHeig);
  this->DownRightBody = Point(UpLeftBody.x + TextWidth, UpLeftBody.y + allLetters->height);
  this->DownRight = Point(DownRightBody.x + borderWide, DownRightBody.y + borderHeig);

  RHead = {UpLeft.x, UpLeft.y, (DownRight.x - UpLeft.x), (DownRight.y - UpLeft.y)};
  RBody = {UpLeftBody.x, UpLeftBody.y, DownRightBody.x - UpLeftBody.x, DownRightBody.y - UpLeftBody.y};
  headColor = Color(26, 48, 76, 255);
  bodyColor = Color(13, 72, 68, 255);
}

TextBox::TextBox(Letters* allLetters, Point UpLeft, Point Shift, int borderWide, int borderHeig,
                 std::string inputStr)
    : allLetters(allLetters)
    , UpLeft(UpLeft) {
  this->DownRight = Point(UpLeft.x + Shift.x, UpLeft.y + Shift.y);
  changeText(inputStr);
  this->UpLeftBody = Point(UpLeft.x + borderWide, UpLeft.y + borderHeig);
  this->DownRightBody = Point(DownRight.x - borderWide, DownRight.y - borderHeig);

  RHead = {UpLeft.x, UpLeft.y, (DownRight.x - UpLeft.x), (DownRight.y - UpLeft.y)};
  RBody = {UpLeftBody.x, UpLeftBody.y, DownRightBody.x - UpLeftBody.x, DownRightBody.y - UpLeftBody.y};
  headColor = Color(26, 48, 76, 255);
  bodyColor = Color(13, 72, 68, 255);
}

void TextBox::changeText(const std::string& tempStr) {
  inputStr = tempStr;
  vText.clear();
  TextWidth = 0;
  int x;
  if (tempStr != "")
    for (auto i : inputStr) {
      x = ((int) i) & 255;
      vText.push_back(x);
      TextWidth += allLetters->aLetters[x].w;
    }
}

void TextBox::clearText() { vText.clear(); }

void TextBox::render(Position pos) {
  headColor.fillRect(allLetters->pRender, RHead);
  bodyColor.fillRect(allLetters->pRender, RBody);
  int x;
  switch (pos) {
    case Position::Right  : x = DownRightBody.x - TextWidth; break;
    case Position::Left   : x = UpLeftBody.x; break;
    case Position::Center : x = (DownRightBody.x - UpLeftBody.x - TextWidth) / 2 + UpLeftBody.x; break;
  }

  int y = UpLeftBody.y;
  for (auto i = vText.begin(); i != vText.end(); ++i) {
    if (*i != 13) {
      allLetters->render(*i, x, y);
      x += allLetters->aLetters[*i].w;
    } else {
      x = UpLeftBody.x;
      y += allLetters->height;
    }
  }
}

bool TextBox::isMouseOn(Point mouse) {
  return mouse.x >= UpLeft.x && mouse.x <= DownRight.x && mouse.y >= UpLeft.y && mouse.y <= DownRight.y;
}

OneOptionChoise::OneOptionChoise(Letters* allLetters)
    : allLetters(allLetters) {
  bodyColor = Color(200, 50, 75, 255);
}

OneOptionChoise::~OneOptionChoise() {
  for (auto it : vTextBox) delete it;
}

void OneOptionChoise::add(Point pt) {
  TextBox* tb = new TextBox(allLetters, pt, Point(allLetters->height, 36), 4, 4, "");
  vTextBox.push_back(tb);
}

void OneOptionChoise::render() {
  for (auto a : vTextBox) a->render(Position::Center);
  if (activeOption != -1) {
    bodyColor.setColor(allLetters->pRender);
    SDL_RenderFillRect(allLetters->pRender, &(vTextBox[activeOption]->RBody));
  }
}

void OneOptionChoise::tryToChose(Point mouse) {
  for (size_t i = 0; i < vTextBox.size(); ++i) {
    if (vTextBox[i]->isMouseOn(mouse)) {
      activeOption = i;
      for (auto tb : vTextBox) tb->changeText("");
      vTextBox[i]->changeText("•");
    }
  }
}

void OneOptionChoise::clearChoise() {
  for (auto tb : vTextBox) tb->changeText("");
  activeOption = -1;
}

Switcher::Switcher(SDL_Renderer* pRender, Point UpLeft, Point Shift, int borderWide, int borderHeig)
    : pRender(pRender)
    , isOn(false)
    , UpLeft(UpLeft) {
  this->DownRight = Point(UpLeft.x + Shift.x, UpLeft.y + Shift.y);
  this->UpLeftBody = Point(UpLeft.x + borderWide, UpLeft.y + borderHeig);
  this->DownRightBody = Point(DownRight.x - borderWide, DownRight.y - borderHeig);

  RHead = {UpLeft.x, UpLeft.y, (DownRight.x - UpLeft.x), (DownRight.y - UpLeft.y)};
  RBody = {UpLeftBody.x, UpLeftBody.y, DownRightBody.x - UpLeftBody.x, DownRightBody.y - UpLeftBody.y};
  headColor = Color(26, 48, 76, 255);
  bodyColorON = Color(200, 50, 75, 255);
  bodyColorOFF = Color(13, 72, 68, 255);
}

void Switcher::render() {
  headColor.setColor(pRender);
  SDL_RenderFillRect(pRender, &RHead);
  if (isOn)
    bodyColorON.setColor(pRender);
  else
    bodyColorOFF.setColor(pRender);
  SDL_RenderFillRect(pRender, &RBody);
}

void Switcher::change() { isOn = ! isOn; }

bool Switcher::isMouseOn(Point mouse) {
  return mouse.x >= UpLeft.x && mouse.x <= DownRight.x && mouse.y >= UpLeft.y && mouse.y <= DownRight.y;
}
