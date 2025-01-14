#include "EventReader.h"
#include "Letters.h"
#include "RendererWraper.h"
#include "WindowWraper.h"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

int to_int(const std::string& s);

struct SomeInt {
  int value;
  int right;
};

std::vector<SomeInt> division(const int decInt, const int otputbase) {
  std::vector<SomeInt> vSI;
  std::string decString = std::to_string(decInt);
  const int intLenght = decString.size();
  vSI.push_back({decInt, intLenght});
  std::vector<int> v;
  v.reserve(intLenght);
  for (auto i : decString) v.push_back(i - '0');

  int tempInt = v[0];
  int rightBorder = 1;
  int rest = tempInt % otputbase;

  while (rightBorder != intLenght) {
    while (tempInt / otputbase == 0 && rightBorder != intLenght) {
      tempInt = tempInt * 10 + v[rightBorder];
      ++rightBorder;
    }

    vSI.push_back({tempInt, rightBorder});
    rest = tempInt % otputbase;
    vSI.push_back({tempInt - rest, rightBorder});
    tempInt = rest;
  }
  vSI.push_back({rest, rightBorder});

  return vSI;
}

std::vector<std::vector<int>> createVV(const std::vector<SomeInt>& vSI) {
  std::vector<int> v(vSI[0].right, -1);
  std::vector<std::vector<int>> vv(vSI.size(), v);
  for (auto i = 0; i < vSI.size(); ++i) {
    int x = vSI[i].value;
    if (x != 0)
      for (auto j = vSI[i].right; j > 0 && x > 0; --j) {
        vv[i][j - 1] = x % 10;
        x /= 10;
      }
    else
      vv[i][vSI[i].right - 1] = 0;
  }
  return vv;
}

int to_int(const std::string& s) {
  int res = 0;
  const int multbase = 10;
  for (const auto& c : s) res = res * multbase + c - '0';
  return res;
}

Point const renderDel(const std::vector<std::vector<int>>& vv, const Point startPoint, Letters* allLetters,
                      const int bord) {
  Point tempPoint = startPoint;
  const Point shift(26, allLetters->height);

  const int vvlength = vv[0].size() * shift.x + 2 * bord;
  const int vvheght = vv.size() * shift.y + 2 * bord;
  TextBox background{
      allLetters, startPoint, Point{vvlength, vvheght},
        bord, bord, ""
  };
  background.render();
  Color lineColor{26, 48, 76, 255};
  Color answerColor{32, 255, 16, 100};
  tempPoint.y = startPoint.y + bord;
  for (auto i : vv) {
    tempPoint.x = startPoint.x + bord;
    for (auto j : i) {
      std::string tempStr = "";
      if (j != -1) { tempStr = std::to_string(j); }
      TextBox TTB(allLetters, tempPoint, shift, 0, 0, tempStr);
      TTB.render(Position::Center);
      tempPoint.x += shift.x;
    }
    tempPoint.y += allLetters->height;
  }
  std::cout << "EXIT" << std::endl;

  Point endPoint(std::move(tempPoint));
  tempPoint = startPoint;

  answerColor.fillRect(allLetters->pRender,
                       Point{startPoint.x + bord, startPoint.y + vvheght - (shift.y + bord)},
                       Point{vvlength - 2 * bord, shift.y});
  for (auto h = 2 * allLetters->height + bord - 1; h < vvheght - bord - 1; h += 2 * allLetters->height) {
    //        lineColor.drawLine(allLetters->pRender,Point{startPoint.x, startPoint.y + h}, Point{vvlength,
    //        startPoint.y + h});
    lineColor.fillRect(allLetters->pRender, Point{startPoint.x, startPoint.y + h}, Point{vvlength, 2});
  }

  return endPoint;
}

bool SDLInit() {
  bool ok = true;

  if (SDL_Init(SDL_INIT_VIDEO) != 0) {
    std::cout << "Can't init: " << SDL_GetError() << std::endl;
    ok = false;
  }

  int flags = IMG_INIT_JPG | IMG_INIT_PNG;
  if (! (IMG_Init(flags) & flags)) {
    std::cout << "Can't init image: " << IMG_GetError() << std::endl;
    ok = false;
  }
  return ok;
}

void SDLQuit() {
  SDL_Quit();
  IMG_Quit();
}

int main(int argc, char* argv[]) {
  if (! SDLInit()) return 0;
  WindowWraper pWindow("Converter", 0, 24, 1920, 1016, SDL_WINDOW_SHOWN);
  RendererWraper pRender(pWindow.get_value(), -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
  SDL_Color mainColor{16, 28, 56, 255};
  pRender.full_fill(mainColor);
  pRender.present();
  pRender.set_blendMode(SDL_BLENDMODE_BLEND);

  Letters allLetters(pRender.get_value());
  std::vector<InputTextBox*> vTextBoxs;
  const int bord = 4;
  Point startPoint(20, 40);
  InputTextBox inputIntBox(&allLetters, startPoint, Point(150 + bord * 2, 28 + bord * 2), bord, bord);
  TextBox textInputIntBox(&allLetters,
                          Point(startPoint.x,
                                startPoint.y - (inputIntBox.DownRight.y - inputIntBox.UpLeft.y - bord)),
                          Point(150 + bord * 2, 28 + bord * 2), bord, bord, "Input");
  startPoint = Point(inputIntBox.DownRight.x - bord, inputIntBox.UpLeft.y + 20);
  InputTextBox inputbaseBox(&allLetters, startPoint, Point(60 + bord * 2, 28 + bord * 2), bord, bord);
  startPoint = Point(inputbaseBox.DownRight.x + 10, inputIntBox.UpLeft.y);
  TextBox equalTextBox(&allLetters, Point(startPoint.x, startPoint.y + bord), 0, 0, " = ");
  startPoint = Point(equalTextBox.DownRight.x + 10, inputIntBox.UpLeft.y);
  TextBox outputIntBox(&allLetters, startPoint, Point(150 + bord * 2, 28 + bord * 2), bord, bord, "");
  TextBox textOutputIntBox(&allLetters,
                           Point(startPoint.x,
                                 startPoint.y - (outputIntBox.DownRight.y - outputIntBox.UpLeft.y - bord)),
                           Point(150 + bord * 2, 28 + bord * 2), bord, bord, "Output");
  startPoint = Point(outputIntBox.DownRight.x - bord, outputIntBox.UpLeft.y + 20);
  InputTextBox outputbaseBox(&allLetters, startPoint, Point(60 + bord * 2, 28 + bord * 2), bord, bord);

  vTextBoxs.push_back(&inputIntBox);
  vTextBoxs.push_back(&inputbaseBox);
  vTextBoxs.push_back(&outputbaseBox);

  bool isOnTextBox = false;
  Button bStart(&allLetters, Point(20, 120), 3, 3, " Start ");
  Button bClear(&allLetters, Point(bStart.DownRight.x, bStart.UpLeft.y), 3, 3, " Clear ");

  EventReader eventReader{};
  Point mouse = eventReader.mouse.coordinates;
  InputTextBox* pActiveTextBox = nullptr;

  Point startDelPoint(20, 160);
  TextBox DelScope{
      &allLetters, startDelPoint, Point{1000, 500},
        bord, bord, ""
  };
  DelScope.render(Position::Center);
  Point endDelPoint = startDelPoint;

  {
    struct Poligon {
      Color col;
      std::vector<Point> p;
      Poligon() = default;

      void add(Point pt) { p.push_back(pt); }

      void toValid() {
        for (auto i = 1; i < p.size(); ++i) {
          int j = i;
          while (j > 0 && p[j].x <= p[j - 1].x) {
            if (p[j].x == p[j - 1].x)
              if (p[j].y < p[j - 1].y)
                std::swap(p[j], p[j - 1]);
              else
                std::swap(p[j], p[j - 1]);
            --j;
          }
        }
      }

      void render(SDL_Renderer* pRender) {
        for (auto i = 0; i < p.size() - 1; ++i) col.drawLine(pRender, p[i], p[i + 1]);
        if (p.size() > 0) col.drawLine(pRender, p[p.size() - 1], p[0]);
      }

      void print() {
        for (auto i : p) i.print();
      }
    };

    Point star{150, 800};
    Point p1{100, 30}, p2{10, 30}, p3{120, 20}, p4{32, 14}, p5{64, 54}, p6{43, 43}, p7{42, 65}, p8{100, 20};
    Color bl{50, 150, 200, 150};

    Poligon hyi;
    hyi.add(p1 + star);
    hyi.add(p2 + star);
    hyi.add(p3 + star);
    hyi.add(p4 + star);
    hyi.add(p5 + star);
    hyi.add(p6 + star);
    hyi.add(p7 + star);
    hyi.add(p8 + star);
    hyi.col = bl;
    hyi.print();

    hyi.toValid();
    hyi.render(pRender.get_value());
    hyi.print();
  }

  while (eventReader.readEvents()) {
    mouse = eventReader.mouse.coordinates;
    if (bStart.isMouseOn(mouse) && eventReader.mouse.isPressed) {
      eventReader.mouse.isPressed = false;
      std::cout << "Start" << std::endl;

      startDelPoint = Point{20, 160};
      std::string inputInt;
      int inputbase;
      int decInt = 0;
      std::string otputInt = "";
      int otputbase;

      inputInt = inputIntBox.TextToString();
      inputbase = inputbaseBox.TextToInt();
      otputbase = outputbaseBox.TextToInt();

      transform(inputInt.begin(), inputInt.end(), inputInt.begin(), ::toupper);

      int tempBase = 1;
      for (auto i = 0; i < inputInt.size(); ++i) {
        if (inputInt[inputInt.size() - 1 - i] >= '0' && inputInt[inputInt.size() - 1 - i] <= '9')
          decInt += tempBase * (inputInt[inputInt.size() - 1 - i] - '0');
        else
          decInt += tempBase * (inputInt[inputInt.size() - 1 - i] - 'A' + 10);
        tempBase *= inputbase;
      }

      while (decInt >= otputbase) {
        if (decInt % otputbase < 10)
          otputInt += std::to_string(decInt % otputbase);
        else
          otputInt += (decInt % otputbase - 10 + 'A');

        endDelPoint = renderDel(createVV(division(decInt, otputbase)), startDelPoint, &allLetters, bord);
        startDelPoint.x = endDelPoint.x;

        decInt /= otputbase;
      }
      renderDel(createVV(division(decInt, otputbase)), Point{endDelPoint.x, startDelPoint.y}, &allLetters,
                bord);
      if (decInt < 10)
        otputInt += std::to_string(decInt);
      else
        otputInt += (decInt - 10 + 'A');

      reverse(otputInt.begin(), otputInt.end());
      outputIntBox.changeText(otputInt);
    }
    if (bClear.isMouseOn(mouse) && eventReader.mouse.isPressed) {
      inputbaseBox.clearText();
      inputIntBox.clearText();
      outputbaseBox.clearText();
      outputIntBox.clearText();

      DelScope.render(Position::Center);
    }

    if (eventReader.mouse.isPressed) {
      isOnTextBox = false;
      for (auto i : vTextBoxs) {
        if (i->isMouseOn(mouse)) {
          pActiveTextBox = i;
          isOnTextBox = true;
          break;
        }
      }
      if (! isOnTextBox) pActiveTextBox = nullptr;
      eventReader.mouse.isPressed = false;
    }

    if (eventReader.keyboard.isTextInputEvent) {
      if (isOnTextBox)
        if (eventReader.keyboard.lastInputChar != std::string::npos)
          pActiveTextBox->addLetter(eventReader.keyboard.lastInputChar);
        else
          eventReader.keyboard.lastInputChar = std::string::npos;
      eventReader.keyboard.isTextInputEvent = false;
    }

    inputbaseBox.render(Position::Center);
    inputIntBox.render(Position::Center);
    textInputIntBox.render(Position::Center);
    equalTextBox.render(Position::Center);
    outputbaseBox.render(Position::Center);
    outputIntBox.render(Position::Center);
    textOutputIntBox.render(Position::Center);

    bStart.render(Position::Center);
    bClear.render(Position::Center);

    pRender.present();
  }
  SDLQuit();
  return 0;
}
