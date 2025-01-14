#include "EventReader.h"

#include <iostream>
#include <iomanip>
#include <array>

std::array<const std::string, 19> aWindowEvents{
    "SDL_WINDOWEVENT_NONE",           /**< Never used */
    "SDL_WINDOWEVENT_SHOWN",          /**< Window has been shown */
    "SDL_WINDOWEVENT_HIDDEN",         /**< Window has been hidden */
    "SDL_WINDOWEVENT_EXPOSED",        /**< Window has been exposed and should be
                                         redrawn */
    "SDL_WINDOWEVENT_MOVED",          /**< Window has been moved to data1, data2
                                     */
    "SDL_WINDOWEVENT_RESIZED",        /**< Window has been resized to data1xdata2 */
    "SDL_WINDOWEVENT_SIZE_CHANGED",   /**< The window size has changed, either as
                                         a result of an API call or through the
                                         system or user changing the window size. */
    "SDL_WINDOWEVENT_MINIMIZED",      /**< Window has been minimized */
    "SDL_WINDOWEVENT_MAXIMIZED",      /**< Window has been maximized */
    "SDL_WINDOWEVENT_RESTORED",       /**< Window has been restored to normal size
                                         and position */
    "SDL_WINDOWEVENT_ENTER",          /**< Window has gained mouse focus */
    "SDL_WINDOWEVENT_LEAVE",          /**< Window has lost mouse focus */
    "SDL_WINDOWEVENT_FOCUS_GAINED",   /**< Window has gained keyboard focus */
    "SDL_WINDOWEVENT_FOCUS_LOST",     /**< Window has lost keyboard focus */
    "SDL_WINDOWEVENT_CLOSE",          /**< The window manager requests that the window be closed */
    "SDL_WINDOWEVENT_TAKE_FOCUS",     /**< Window is being offered a focus (should SetWindowInputFocus() on itself or a subwindow, or ignore) */
    "SDL_WINDOWEVENT_HIT_TEST",       /**< Window had a hit test that wasn't SDL_HITTEST_NORMAL. */
    "SDL_WINDOWEVENT_ICCPROF_CHANGED",/**< The ICC profile of the window's display has changed. */
    "SDL_WINDOWEVENT_DISPLAY_CHANGED" /**< Window has been moved to display data1. */
};
EventMouse::EventMouse()
  :isPressed(false),
    isWheeled(false),
    coordinates(Point{0,0})
{}

EventKeyboard::EventKeyboard(){
  isPressedLShift     = false;
  isPressedRShift     = false;
  isCapsON            = false;
  isTextInputEvent    = false;
  isKeyPressed        = false;
  isRussianNow        = false;

  lastInputChar       = 0;
  lastPressedKey      = 0;
}

EventWindow::EventWindow(){
  isShown             = false;
  isExposed           = false;
  isMoved             = false;
  isSizeChanged       = false;
  isMinimized         = false;
  isMaximazed         = false;
  isRestored          = false;
  isInWindow          = false;
  isFocusInWindow     = false;
  isHasRequestToClose = false;

  data1 = 0;
  data2 = 0;

}

void EventWindow::print(){
  std::cout << std::boolalpha
            << isShown << "\t" << "isShown" << "\n"
            << isExposed << "\t" << "isExposed" << "\n"
            << isMoved << "\t" << "isMoved" << "\n"
            << isSizeChanged << "\t" << "isSizeChanged" << "\n"
            << isMinimized << "\t" << "isMinimized" << "\n"
            << isMaximazed << "\t" << "isMaximazed" << "\n"
            << isRestored << "\t" << "isRestored" << "\n"
            << isInWindow << "\t" << "isInWindow" << "\n"
            << isFocusInWindow << "\t" << "isFocusInWindow" << "\n"
            << isHasRequestToClose << "\t" << "isHasRequestToClose" << "\n"
            << std::noboolalpha << std::endl;
}


EventReader::EventReader():isQuit(false){
  mKeys[102]  = 224;
  mKeys[44]   = 225;
  mKeys[100]  = 226;
  mKeys[117]  = 227;
  mKeys[108]  = 228;
  mKeys[116]  = 229;
  mKeys[59]   = 230;
  mKeys[112]  = 231;
  mKeys[98]   = 232;
  mKeys[113]  = 233;
  mKeys[114]  = 234;
  mKeys[107]  = 235;
  mKeys[118]  = 236;
  mKeys[121]  = 237;
  mKeys[106]  = 238;
  mKeys[103]  = 239;
  mKeys[104]  = 240;
  mKeys[99]   = 241;
  mKeys[110]  = 242;
  mKeys[101]  = 243;
  mKeys[97]   = 244;
  mKeys[91]   = 245;
  mKeys[119]  = 246;
  mKeys[120]  = 247;
  mKeys[105]  = 248;
  mKeys[111]  = 249;
  mKeys[93]   = 250;
  mKeys[115]  = 251;
  mKeys[109]  = 252;
  mKeys[39]   = 253;
  mKeys[46]   = 254;
  mKeys[122]  = 255;

  mKeys[96]   = 184;
}

EventReader::~EventReader() = default;

void EventReader::readEvents(){
  SDL_Event event;
  isDoSometing = false;
  while(SDL_PollEvent(&event) != 0){

    switch(event.type){
      case SDL_QUIT:
        std::cout<<"SDL_QUIT event type: "<< event.quit.type <<std::endl;
        isQuit = true;
        break;
      case SDL_WINDOWEVENT:{
        isDoSometing = true;
        auto event2 = event.window;
        const std::string name{"SDL_WINDOWEVENT"};
        std::cout << std::setw(24) << std::left << name
                  << "\twindowID:" << event2.windowID
                  << "\tevent:"<< int(event2.event)
                  << "\tdata1:" << event2.data1
                  << "\tdata2:" << event2.data2
                  << "\tevent:" << aWindowEvents[event2.event]
                  <<  std::endl;
        readWindow(event2.windowID, event2.event);
        break;
      }
      case SDL_SYSWMEVENT:{
        isDoSometing = true;
        auto event2 = event.syswm;
        std::cout << "SDL_SYSWMEVENT "
                  << std::endl;
        break;
      }
      case SDL_KEYDOWN:{
        isDoSometing = true;
        auto event2 = event.key;
        keyDown(event2);
        const std::string name{"SDL_KEYDOWN"};
        std::cout << std::setw(24) << std::left << name
                  << "\twindowID:" << event2.windowID
                  << "\tstate:" << int(event2.state)
                  << "\trepeat:" << int(event2.repeat)
                  << "\tkeysym_sym:" << event2.keysym.sym
                  << "\tkeysym_scancode:" << event2.keysym.scancode
                  <<  std::endl;
        break;
      }
      case SDL_KEYUP:{
        isDoSometing = true;
        auto event2 = event.key;
        keyUp(event2);
        const std::string name{"SDL_KEYUP"};
        std::cout << std::setw(24) << std::left << name
                  << "\twindowID:" << event2.windowID
                  << "\tstate:" << int(event2.state)
                  << "\trepeat:" << int(event2.repeat)
                  << "\tkeysym_sym:" << event2.keysym.sym
                  << "\tkeysym_scancode:" << event2.keysym.scancode
                  <<  std::endl;
        break;
      }
      case SDL_TEXTEDITING:{
        isDoSometing = true;
        auto event2 = event.edit;
        const std::string name{"SDL_TEXTEDITING"};
        std::cout << std::setw(24) << std::left << name
                  << "\twindowID:" << event2.windowID
                  << "\ttextp:" << event2.text
                  << "\ttext[0]:" << event2.text[0]
                  << "\ttext[1]:" << event2.text[1]
                  << "\ttext[start]:" << event2.text[event2.start]
                  << "\tstart:" << event2.start
                  << "\tlength:" << event2.length
                  <<  std::endl;
        break;
      }
      case SDL_TEXTINPUT:{
        isDoSometing = true;
        keyboard.isTextInputEvent = true;
        keyboard.lastInputChar = event.text.text[0];

        auto event2 = event.text;
        const std::string name{"SDL_TEXTINPUT"};
        std::cout << std::setw(24) << std::left << name
                  << "\twindowID:" << event2.windowID
                  << "\ttextp:" << event2.text
                  << "\ttext[0]:" << event2.text[0]
                  << "\ttext[1]:" << event2.text[1]
                  << "\ttextINT[0]:" << (unsigned(event2.text[0]) & 255)
                  << "\ttextINT[1]:" << (unsigned(event2.text[1]) & 255)
                  <<  std::endl;
        break;
      }
      case SDL_KEYMAPCHANGED:{
        isDoSometing = true;
        auto event2 = event.key;
        const std::string name{"SDL_KEYMAPCHANGED"};
        std::cout << std::setw(24) << std::left << name
                  << "\tsizeof:" << sizeof(event)
                  <<  std::endl;
        break;
      }
      case SDL_TEXTEDITING_EXT:{
        isDoSometing = true;
        auto event2 = event.editExt;
        const std::string name{"SDL_TEXTEDITING_EXT"};
        std::cout << std::setw(24) << std::left << name
                  << "\twindowID:" << event2.windowID
                  << "\ttextp:" << event2.text
                  << "\ttext[0]:" << event2.text[0]
                  << "\ttext[1]:" << event2.text[1]
                  << "\ttext[start]:" << event2.text[event2.start]
                  << "\tstart:" << event2.start
                  << "\tlength:" << event2.length
                  <<  std::endl;
        break;
      }
      case SDL_MOUSEMOTION:{
//        auto event2 = event.motion;
//        const std::string name{"SDL_MOUSEMOTION"};
//        std::cout << std::setw(24) << std::left << name
//                  << "\twindowID:" << event2.windowID
//                  << "\twhich:" << event2.which
//                  << "\tstate:" << event2.state
//                  << "\tx:" << event2.x
//                  << "\ty:" << event2.y
//                  << "\txrel:" << event2.xrel
//                  << "\tyrel:" << event2.yrel
//                  <<  std::endl;
        break;
      }
      case SDL_MOUSEBUTTONDOWN:{
        isDoSometing = true;
        mouse.isPressed = true;
        mouse.coordinates.x = event.motion.x;
        mouse.coordinates.y = event.motion.y;
//        auto event2 = event.button;
//        const std::string name{"SDL_MOUSEBUTTONDOWN"};
//        std::cout << std::setw(24) << std::left << name
//                  << "\twindowID:" << event2.windowID
//                  << "\twhich:" << event2.which
//                  << "\tbutton:" << int(event2.button)
//                  << "\tstate:" << int(event2.state)
//                  << "\tclicks:" << int(event2.clicks)
//                  << "\tx:" << event2.x
//                  << "\ty:" << event2.y
//                  <<  std::endl;
        break;
      }
      case SDL_MOUSEBUTTONUP:{
        isDoSometing = true;
        mouse.isPressed = false;
        mouse.coordinates.x = event.motion.x;
        mouse.coordinates.y = event.motion.y;
//        auto event2 = event.button;
//        const std::string name{"SDL_MOUSEBUTTONUP"};
//        std::cout << std::setw(24) << std::left << name
//                  << "\twindowID:" << event2.windowID
//                  << "\twhich:" << event2.which
//                  << "\tbutton:" << int(event2.button)
//                  << "\tstate:" << int(event2.state)
//                  << "\tclicks:" << int(event2.clicks)
//                  << "\tx:" << event2.x
//                  << "\ty:" << event2.y
//                  <<  std::endl;
        break;
      }
      case SDL_MOUSEWHEEL:{
        isDoSometing = true;

        mouse.isWheeled = true;
        mouse.wheel = event.wheel.y;
//        auto event2 = event.wheel;
//        const std::string name{"SDL_MOUSEWHEEL"};
//        std::cout << std::setw(24) << std::left << name
//                  << "\twindowID:" << event2.windowID
//                  << "\twhich:" << event2.which
//                  << "\tx:" << event2.x
//                  << "\ty:" << event2.y
//                  << "\tdirection:" << event2.direction
//                  << "\tpreciseX:" << event2.preciseX
//                  << "\tpreciseY:" << event2.preciseY
//                  <<  std::endl;
        break;
      }
      default:
        std::cout << std::hex << event.type << '\t'
                  << std::dec << event.type << " Some event "
                  << std::endl;
    }

  }
}

inline void EventReader::readWindow(uint32_t id, uint8_t event){
  switch (event) {
    case SDL_WINDOWEVENT_SHOWN:
      window[id].isShown = true;
      return;
    case SDL_WINDOWEVENT_HIDDEN:
      window[id].isShown = false;
      return;
    case SDL_WINDOWEVENT_EXPOSED:
      window[id].isExposed = true;
      return;
    case SDL_WINDOWEVENT_MOVED:
      window[id].isMoved = true;
      return;
    case SDL_WINDOWEVENT_RESIZED:
    case SDL_WINDOWEVENT_SIZE_CHANGED:
      window[id].isSizeChanged = true;
      return;
    case SDL_WINDOWEVENT_MINIMIZED:
      window[id].isMinimized = true;
      window[id].isShown = false;
      return;
    case SDL_WINDOWEVENT_MAXIMIZED:
      window[id].isMaximazed = true;
      return;
    case SDL_WINDOWEVENT_RESTORED:
      window[id].isRestored = true;
      return;
    case SDL_WINDOWEVENT_ENTER:
      window[id].isInWindow = true;
      return;
    case SDL_WINDOWEVENT_LEAVE:
      window[id].isInWindow = false;
      return;
    case SDL_WINDOWEVENT_FOCUS_GAINED:
      window[id].isFocusInWindow = true;
      return;
    case SDL_WINDOWEVENT_FOCUS_LOST:
      window[id].isFocusInWindow = false;
      return;
    case SDL_WINDOWEVENT_CLOSE:
      window[id].isHasRequestToClose = true;
      if(id == 1)
        std::for_each(window.begin(), window.end(), [](auto &it){it.second.isHasRequestToClose = true;});
      return;
    default: ;
  }
}

inline void EventReader::keyDown(SDL_KeyboardEvent &key){
  switch(key.keysym.sym){
    case SDLK_ESCAPE:
//      window[key.windowID].isHasRequestToClose = true;
      break;
    case SDLK_LSHIFT:
      keyboard.isPressedLShift = true;
      break;
    case SDLK_RSHIFT:
      keyboard.isPressedRShift = true;
      break;
    case SDLK_CAPSLOCK:
      keyboard.isCapsON = !keyboard.isCapsON;
      break;
    case SDLK_RETURN:
      keyboard.isTextInputEvent = true;
      keyboard.lastInputChar = SDLK_RETURN;
      break;
    case SDLK_BACKSPACE:
      keyboard.isTextInputEvent = true;
      keyboard.lastInputChar = SDLK_BACKSPACE;
      std::cout<<"\\b"<<std::endl;
      break;
  }
  keyboard.lastPressedKey = key.keysym.sym;
}

inline void EventReader::keyUp(SDL_KeyboardEvent &key){
  switch(key.keysym.sym){
    case SDLK_LSHIFT:
      keyboard.isPressedLShift = false;
      return;
    case SDLK_RSHIFT:
      keyboard.isPressedRShift = false;
      return;
  }
}

///* Clipboard events */
//SDL_CLIPBOARDUPDATE = 0x900, /**< The clipboard changed */

///* Drag and drop events */
//SDL_DROPFILE        = 0x1000, /**< The system requests a file open */
//SDL_DROPTEXT,                 /**< text/plain drag-and-drop event */
//SDL_DROPBEGIN,                /**< A new set of drops is beginning (NULL filename) */
//SDL_DROPCOMPLETE,             /**< Current set of drops is now complete (NULL filename) */


