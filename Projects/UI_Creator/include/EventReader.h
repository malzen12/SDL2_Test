#pragma once
#define SDL_MAIN_HANDLED

#include <fstream>
#include <map>
#include <unordered_map>
#include "SDL.h"
#include "Universal.h"

struct EventMouse{
  EventMouse();

  bool isPressed;
  bool isWheeled;
  Point coordinates;
  int32_t wheel;
};

struct EventKeyboard{
  EventKeyboard();

  bool isKeyPressed;
  bool isRussianNow;
  size_t lastInputChar;
  int lastPressedKey;

  bool isPressedLShift;
  bool isPressedRShift;
  bool isCapsON;
  bool isTextInputEvent;
};

struct EventWindow{
  EventWindow();

  bool isShown;
  bool isExposed;
  bool isMoved;
  bool isSizeChanged;
  bool isMinimized;
  bool isMaximazed;
  bool isRestored;
  bool isInWindow;
  bool isFocusInWindow;
  bool isHasRequestToClose;

  int32_t data1;
  int32_t data2;
  void print();

};

struct EventReader{
  EventReader();
  ~EventReader();

  void readEvents();
private:
  inline void readWindow(uint32_t id, Uint8 event);
  inline void keyDown(SDL_KeyboardEvent &key);
  inline void keyUp(SDL_KeyboardEvent &key);
public:

  EventMouse mouse;
  EventKeyboard keyboard;
  std::unordered_map<int, EventWindow> window;
  bool isQuit;
  bool isDoSometing;
  std::unordered_map<int, int> mKeys;
};



