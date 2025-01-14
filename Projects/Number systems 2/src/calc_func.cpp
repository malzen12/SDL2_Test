#include "calc_func.h"
#include <iostream>

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

const Point renderDel(const std::vector<std::vector<int>>& vv, const Point startPoint, Letters* allLetters,
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
