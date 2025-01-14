#pragma once

#include "Universal.h"
#include <map>

struct Mouse {
  bool isPressed;
  Point coordinates;

  Mouse();
};

struct Keyboard {
  bool isKeyPressed;
  bool isRussianNow;
  size_t lastInputChar;
  int lastPressedKey;

  bool isPressedLShift;
  bool isPressedRShift;
  bool isCapsON;
  bool isTextInputEvent;

  Keyboard();
};

struct EventReader {
  Mouse mouse;
  Keyboard keyboard;

  EventReader();

  bool readEvents();

  std::map<int, int> mKeys;
};
