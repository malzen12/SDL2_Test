#include "Button.h"
#include "EventReader.h"
#include "InputTextBox.h"
#include "MultipleOptionChoise.h"
#include "OneOptionChoise.h"
#include <algorithm>
#include <chrono>
#include <fstream>
#include <iostream>
#include <list>
#include <memory>
#include <string>
#include <vector>

#define TO_STRING(x) #x


#define sd(line) line
#define UNIQUE_VAR_NAME(line)(x##line)
#define LOG_DURATION(message) LogDuration UNIQUE_VAR_NAME(__LINE__)(message);
#define LOG_DURATION_START(message) {LogDuration UNIQUE_VAR_NAME(__LINE__)(message);
#define LOG_DURATION_END }


class SDLinit{
public:
  static SDLinit* instance(){
    static SDLinit instans;
    return &instans;
  }
  bool isInit(){return init;}

  //SDLinit(const SDLinit &) = delete;
  SDLinit & operator = (const SDLinit &) = delete;

private:
  SDLinit(){
    init = true;
    std::cout << "SDL_Init" << std::endl;
    if (SDL_Init(SDL_INIT_VIDEO) != 0){
      std::cout << "Can't init: " << SDL_GetError() << std::endl;
      init = false;
    }

    int flags = IMG_INIT_JPG | IMG_INIT_PNG;
    if (!(IMG_Init(flags) & flags)){
      std::cout << "Can't init image: " << IMG_GetError() << std::endl;
      init = false;
    }
  }
  ~SDLinit(){
    std::cout << "SDL_Quit!" << std::endl;
    SDL_Quit();
    IMG_Quit();
    //init = false;
  }

private:
  bool init;

};



class LogDuration{
public:
  LogDuration(const std::string name):m_name(name),
    m_start(std::chrono::system_clock::now())
  {}
  ~LogDuration(){
    auto now2 = std::chrono::system_clock::now();
    auto dnow = now2 - m_start;
    std::cerr << m_name
              << ' '
              << std::chrono::duration_cast<std::chrono::milliseconds>(dnow).count()
              << "_ms"
              << std::endl;
  }
private:
  const std::string m_name;
  std::chrono::system_clock::time_point m_start;

};



int main(int argc, char *argv[]){
  SDLinit* init = SDLinit::instance();
  if(!init->isInit())
    return 0;

  uint32_t win_flags = SDL_WINDOW_SHOWN | SDL_WINDOW_RESIZABLE;
  Window pMainWindow = {"UI Creator", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 800, 600, win_flags};

  uint32_t render_flags = SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC;
  auto pMainRenderer = std::make_shared<Renderer>(pMainWindow.getValue(), render_flags);

  Color mainColor = {16, 28, 56, 255};

  LOG_DURATION_START("Render start position")
  pMainRenderer->setBlendMode(SDL_BLENDMODE_BLEND);
  pMainRenderer->fullFill(mainColor);
  pMainRenderer->present();
  LOG_DURATION_END

  const std::array<const std::string, 21> aFlags{
    "FULLSCREEN",
    "FULLSCREEN_DESKTOP",
    "OPENGL",
    "VULKAN",
    "SHOWN",
    "HIDDEN",
    "BORDERLESS",
    "RESIZABLE",
    "MINIMIZED",
    "MAXIMIZED",
    "INPUT_GRABBED",
    "INPUT_FOCUS",
    "MOUSE_FOCUS",
    "FOREIGN",
    "ALLOW_HIGHDPI",
    "MOUSE_CAPTURE",
    "ALWAYS_ON_TOP",
    "SKIP_TASKBAR",
    "UTILITY",
    "TOOLTIP",
    "POPUP_MENU"
  };

  const std::map<const std::string, SDL_WindowFlags> enam_window_flag{
    {"FULLSCREEN", SDL_WINDOW_FULLSCREEN},
    {"FULLSCREEN_DESKTOP", SDL_WINDOW_FULLSCREEN_DESKTOP},
    {"OPENGL", SDL_WINDOW_OPENGL},
    {"VULKAN", SDL_WINDOW_VULKAN},
    {"SHOWN", SDL_WINDOW_SHOWN},
    {"HIDDEN", SDL_WINDOW_HIDDEN},
    {"BORDERLESS", SDL_WINDOW_BORDERLESS},
    {"RESIZABLE", SDL_WINDOW_RESIZABLE},
    {"MINIMIZED", SDL_WINDOW_MINIMIZED},
    {"MAXIMIZED", SDL_WINDOW_MAXIMIZED},
    {"INPUT_GRABBED", SDL_WINDOW_INPUT_GRABBED},
    {"INPUT_FOCUS", SDL_WINDOW_INPUT_FOCUS},
    {"MOUSE_FOCUS", SDL_WINDOW_MOUSE_FOCUS},
    {"FOREIGN", SDL_WINDOW_FOREIGN},
    {"ALLOW_HIGHDPI", SDL_WINDOW_ALLOW_HIGHDPI},
    {"MOUSE_CAPTURE", SDL_WINDOW_MOUSE_CAPTURE},
    {"ALWAYS_ON_TOP", SDL_WINDOW_ALWAYS_ON_TOP},
    {"SKIP_TASKBAR", SDL_WINDOW_SKIP_TASKBAR},
    {"UTILITY", SDL_WINDOW_UTILITY},
    {"TOOLTIP", SDL_WINDOW_TOOLTIP},
    {"POPUP_MENU", SDL_WINDOW_POPUP_MENU}

  };

  std::shared_ptr<Font> pFont = std::make_shared<Font>(pMainRenderer);

  const int32_t BORD = 4;
  const Point startPoint{20, 20};

  std::vector<std::shared_ptr<IRenderable>> vRenderable;
  std::vector<std::shared_ptr<TextBox>> vScrollable;
  std::vector<std::shared_ptr<InputTextBox>> vInputTextBoxs;
  std::vector<std::shared_ptr<Button>> vButton;

  std::shared_ptr<Button> bCreateAll;
  {

    auto [width,_] = pMainWindow.getSize();
    auto margin = pFont->calculate("Create");
    Point temp_point{width - margin - BORD*2 - 20, 20};
    bCreateAll = std::make_shared<Button>(Button::CreateToFitString(pFont, temp_point, BORD, BORD, " Create "));

    vRenderable.push_back(bCreateAll);
    vButton.push_back(bCreateAll);
  }

  std::shared_ptr<TextBox> textInputNameBox, textInputXBox, textInputYBox, textInputWBox, textInputHBox;
  {
    Point tempPoint{startPoint};
    const Point shift1Point{150 + BORD*2, 28 + BORD*2};
    const Point shift2Point{75 + BORD*2, 28 + BORD*2};


    textInputNameBox = std::make_shared<TextBox>(pFont, tempPoint, shift1Point, BORD, BORD, "Input Name");
    tempPoint.x += shift1Point.x - BORD;
    textInputXBox = std::make_shared<TextBox>(pFont, tempPoint, shift2Point, BORD, BORD, "X");
    tempPoint.x += shift2Point.x - BORD;
    textInputYBox = std::make_shared<TextBox>(pFont, tempPoint, shift2Point, BORD, BORD, "Y");
    tempPoint.x += shift2Point.x - BORD;
    textInputWBox = std::make_shared<TextBox>(pFont, tempPoint, shift2Point, BORD, BORD, "W");
    tempPoint.x += shift2Point.x - BORD;
    textInputHBox = std::make_shared<TextBox>(pFont, tempPoint, shift2Point, BORD, BORD, "H");

    vRenderable.push_back(textInputNameBox);
    vRenderable.push_back(textInputXBox);
    vRenderable.push_back(textInputYBox);
    vRenderable.push_back(textInputWBox);
    vRenderable.push_back(textInputHBox);

    vScrollable.push_back(textInputNameBox);
    vScrollable.push_back(textInputXBox);
    vScrollable.push_back(textInputYBox);
    vScrollable.push_back(textInputWBox);
    vScrollable.push_back(textInputHBox);
  }

  std::shared_ptr<InputTextBox> inputNameBox, inputXBox, inputYBox, inputWBox, inputHBox;
  {
    Point temp_point{textInputNameBox->getUpLeftPoint() + Point{0, 28 + BORD}};
    const Point shift_point_1{150 + BORD*2, 28 + BORD*2};
    const Point shift_point_2{75 + BORD*2, 28 + BORD*2};

    inputNameBox = std::make_shared<InputTextBox>(pFont, temp_point, shift_point_1, BORD, BORD);
    temp_point.x += shift_point_1.x - BORD;

    inputXBox = std::make_shared<InputTextBox>(pFont, temp_point, shift_point_2, BORD, BORD);
    temp_point.x += shift_point_2.x - BORD;

    inputYBox = std::make_shared<InputTextBox>(pFont, temp_point, shift_point_2, BORD, BORD);
    temp_point.x += shift_point_2.x - BORD;

    inputWBox = std::make_shared<InputTextBox>(pFont, temp_point, shift_point_2, BORD, BORD);
    temp_point.x += shift_point_2.x - BORD;

    inputHBox = std::make_shared<InputTextBox>(pFont, temp_point, shift_point_2, BORD, BORD);

    vInputTextBoxs.push_back(inputNameBox);
    vInputTextBoxs.push_back(inputXBox);
    vInputTextBoxs.push_back(inputYBox);
    vInputTextBoxs.push_back(inputWBox);
    vInputTextBoxs.push_back(inputHBox);

    vRenderable.push_back(inputNameBox);
    vRenderable.push_back(inputXBox);
    vRenderable.push_back(inputYBox);
    vRenderable.push_back(inputWBox);
    vRenderable.push_back(inputHBox);
  }

  std::shared_ptr<TextBox> textMainColorBox;
  std::shared_ptr<TextBox> textInputRedColorBox, textInputGreenColorBox, textInputBlueColorBox, textInputAlfaColorBox;
  std::shared_ptr<InputTextBox>  inputRedColorBox, inputGreenColorBox, inputBlueColorBox, inputAlfaColorBox;
  std::shared_ptr<TextBox> mainColorBox;
  std::shared_ptr<Button> bTestColor, bClearColor;
  {
    Point tempPoint{inputNameBox->getUpLeftPoint() + Point{0, 2*28 + BORD}};
    const Point shift3Point{150 + BORD*2, 28 + BORD*2};
    const Point shift2Point{80 + BORD*2, 28 + BORD*2};
    const Point shift1Point{4 * shift2Point.x - 3 * BORD, shift2Point.y};


    textMainColorBox = std::make_shared<TextBox>(pFont, tempPoint, shift1Point, BORD, BORD, "Main Color");
    tempPoint.x += shift1Point.x - BORD;
    bTestColor = std::make_shared<Button>(Button::CreateToFitString(pFont, tempPoint, BORD, BORD, " Test Color "));
    bTestColor->setFunc([&pMainRenderer,&inputRedColorBox, &inputGreenColorBox, &inputBlueColorBox, &inputAlfaColorBox, &bTestColor, &textInputAlfaColorBox, &pFont, &vRenderable, &mainColorBox]{
      Color clearColor{255,255,255,255};
      Color mainColor{static_cast<Uint8>(inputRedColorBox->textToInt()),
                      static_cast<Uint8>(inputGreenColorBox->textToInt()),
                      static_cast<Uint8>(inputBlueColorBox->textToInt()),
                      static_cast<Uint8>(!inputAlfaColorBox->isEmpty() ? inputAlfaColorBox->textToInt() : 255)};
      std::cout << inputRedColorBox->textToInt() << " - red" << '\n';
      std::cout << inputGreenColorBox->textToInt() << " - green" << '\n';
      std::cout << inputBlueColorBox->textToInt() << " - blue" << '\n';
      std::cout << inputAlfaColorBox->textToInt() << " - alfad" << std::endl;

      Point xy{bTestColor->getUpLeftPoint().x + BORD, textInputAlfaColorBox->getUpLeftPoint().y + BORD};
      Point wh{bTestColor->getDownRightPoint().x - bTestColor->getUpLeftPoint().x, inputAlfaColorBox->getDownRightPoint().y - textInputAlfaColorBox->getUpLeftPoint().y};
      if(mainColorBox == nullptr){
        mainColorBox = std::make_shared<TextBox>(pFont, xy, wh, 0, 0, "");
        vRenderable.push_back(mainColorBox);
      }
      mainColorBox->setHeadColor(clearColor);
      mainColorBox->setBodyColor(mainColor);
      //            clearColor.fillRect(pRender, area);
      //            mainColor.fillRect(pRender, area);
    });
    tempPoint.x = bTestColor->getDownRightPoint().x - BORD;
    bClearColor = std::make_shared<Button>(Button::CreateToFitString(pFont, tempPoint, BORD, BORD, " Clear Color "));
    bClearColor->setFunc([&inputRedColorBox, &inputGreenColorBox, &inputBlueColorBox, &inputAlfaColorBox, &bTestColor, &textInputAlfaColorBox]{
      inputRedColorBox->clearText();
      inputGreenColorBox->clearText();
      inputBlueColorBox->clearText();
      inputAlfaColorBox->clearText();
      bTestColor->funcExe();
    });

    vRenderable.push_back(textMainColorBox);
    vRenderable.push_back(bTestColor);
    vRenderable.push_back(bClearColor);

    vButton.push_back(bTestColor);
    vButton.push_back(bClearColor);
  }

  //TextBox textInputRedColorBox, textInputGreenColorBox, textInputBlueColorBox, textInputAlfaColorBox;
  {
    Point tempPoint{textMainColorBox->getUpLeftPoint() + Point{0, 28 + BORD}};
    const Point shift1Point{150 + BORD*2, 28 + BORD*2};
    const Point shift2Point{80 + BORD*2, 28 + BORD*2};

    textInputRedColorBox = std::make_shared<TextBox>(pFont, tempPoint, shift2Point, BORD, BORD, "Red");
    tempPoint.x += shift2Point.x - BORD;
    textInputGreenColorBox = std::make_shared<TextBox>(pFont, tempPoint, shift2Point, BORD, BORD, "Green");
    tempPoint.x += shift2Point.x - BORD;
    textInputBlueColorBox = std::make_shared<TextBox>(pFont, tempPoint, shift2Point, BORD, BORD, "Blue");
    tempPoint.x += shift2Point.x - BORD;
    textInputAlfaColorBox = std::make_shared<TextBox>(pFont, tempPoint, shift2Point, BORD, BORD, "Alfa");

    vRenderable.push_back(textInputRedColorBox);
    vRenderable.push_back(textInputGreenColorBox);
    vRenderable.push_back(textInputBlueColorBox);
    vRenderable.push_back(textInputAlfaColorBox);

    vScrollable.push_back(textInputRedColorBox);
    vScrollable.push_back(textInputGreenColorBox);
    vScrollable.push_back(textInputBlueColorBox);
    vScrollable.push_back(textInputAlfaColorBox);
  }

  //InputTextBox InputRedColorBox, InputGreenColorBox, InputBlueColorBox, InputAlfaColorBox;
  {
    Point tempPoint{textInputRedColorBox->getUpLeftPoint() + Point{0, 28 + BORD}};
    const Point shift1Point{150 + BORD*2, 28 + BORD*2};
    const Point shift2Point{80 + BORD*2, 28 + BORD*2};

    inputRedColorBox = std::make_shared<InputTextBox>(pFont, tempPoint, shift2Point, BORD, BORD);
    tempPoint.x += shift2Point.x - BORD;

    inputGreenColorBox = std::make_shared<InputTextBox>(pFont, tempPoint, shift2Point, BORD, BORD);
    tempPoint.x += shift2Point.x - BORD;

    inputBlueColorBox = std::make_shared<InputTextBox>(pFont, tempPoint, shift2Point, BORD, BORD);
    tempPoint.x += shift2Point.x - BORD;

    inputAlfaColorBox = std::make_shared<InputTextBox>(pFont, tempPoint, shift2Point, BORD, BORD);

    vInputTextBoxs.push_back(inputRedColorBox);
    vInputTextBoxs.push_back(inputGreenColorBox);
    vInputTextBoxs.push_back(inputBlueColorBox);
    vInputTextBoxs.push_back(inputAlfaColorBox);

    vRenderable.push_back(inputRedColorBox);
    vRenderable.push_back(inputGreenColorBox);
    vRenderable.push_back(inputBlueColorBox);
    vRenderable.push_back(inputAlfaColorBox);
  }

  MultipleOptionChoise WindowFlag;
  std::shared_ptr<TextBox> textBoxWindowFlag;
  std::shared_ptr<Button> bWindowFlag, bClearWindowFlag;
  {
    Point tempPoint{inputRedColorBox->getUpLeftPoint() + Point{0, 28 + BORD}};

    bWindowFlag = std::make_shared<Button>(Button::CreateToFitString(pFont, tempPoint, BORD, BORD, " Window Flag "));
    tempPoint.x += bWindowFlag->getDownRightPoint().x - bWindowFlag->getUpLeftPoint().x - BORD;
    bClearWindowFlag = std::make_shared<Button>(Button::CreateToFitString(pFont, tempPoint, BORD, BORD, " Clear Window Flag "));

    bClearWindowFlag->setFunc([&textBoxWindowFlag,&WindowFlag]{
      for(auto &it : WindowFlag.getVTextBox())
        it.first->clearState();
      textBoxWindowFlag->clearText();
    });

    vRenderable.push_back(bWindowFlag);
    vRenderable.push_back(bClearWindowFlag);

    vButton.push_back(bWindowFlag);
    vButton.push_back(bClearWindowFlag);

  }
  //MultipleOptionChoise WindowFlag;
  //TextBox textBoxWindowFlag;
  {
    Point tempPoint{bWindowFlag->getUpLeftPoint() + Point{0, 28 + BORD}};
    const Point shift1Point{740, 2*28 + BORD*2};


    std::string tempStr = "";
    for(auto& it : WindowFlag.getVTextBox()){
      if(it.first->isOn()){
        tempStr += it.second->getInputStr() + " | ";
      }
    }
    textBoxWindowFlag = std::make_shared<TextBox>(pFont, tempPoint, shift1Point, BORD, BORD, "Input Name\nX");
    vRenderable.push_back(textBoxWindowFlag);
  }

  bool isOnTextBox = false;

  EventReader eventReader;
  Point& mouse = eventReader.mouse.coordinates;
  int mouse_wheel = eventReader.mouse.wheel;
  std::shared_ptr<InputTextBox> pActiveTextBox;

  bCreateAll->setFunc([&inputNameBox, &inputXBox, &inputYBox, &inputWBox, &inputHBox,
                            &WindowFlag, &enam_window_flag,
                            &inputRedColorBox, &inputGreenColorBox, &inputBlueColorBox, &inputAlfaColorBox,
                            &eventReader](){
    Window pWindow;
    Renderer pRender;
    {
      const std::string name = !inputNameBox->isEmpty() ? inputNameBox->textToString() : "nameless";
      const int x = !inputXBox->isEmpty() ? inputXBox->textToInt() : SDL_WINDOWPOS_UNDEFINED;
      const int y = !inputYBox->isEmpty() ? inputYBox->textToInt() : SDL_WINDOWPOS_UNDEFINED;
      const int w = !inputWBox->isEmpty() ? inputWBox->textToInt() : 800;
      const int h = !inputHBox->isEmpty() ? inputHBox->textToInt() : 600;
      uint32_t win_flags{};
      if(!WindowFlag.getVTextBox().empty()){
        for(const auto &it : WindowFlag.getVTextBox()){
          if(it.first->isOn()){

            auto s = it.second->getInputStr();
            win_flags |= enam_window_flag.at(s);
          }
        }
      }else{
        win_flags = SDL_WINDOW_SHOWN;
      }
      pWindow = Window{name.c_str(), x, y, w, h, win_flags};
      uint32_t render_flags{SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC};
      pRender = Renderer{pWindow.getValue(), render_flags};
    }
    //Point tempPoint{0, 0};
    Color clearColor{255,255,255,255};
    Color mainColor;
    {
      const Uint8 r = !inputRedColorBox->isEmpty() ? inputRedColorBox->textToInt() : 0;
      const Uint8 g = !inputGreenColorBox->isEmpty() ? inputGreenColorBox->textToInt() : 0;
      const Uint8 b = !inputBlueColorBox->isEmpty() ? inputBlueColorBox->textToInt() : 0;
      const Uint8 a = !inputAlfaColorBox->isEmpty() ? inputAlfaColorBox->textToInt() : 255;
      mainColor = Color{r, g, b, a};
    }
    pRender.setBlendMode(SDL_BLENDMODE_BLEND);
    pRender.fullFill(clearColor);
    pRender.fullFill(mainColor);
    pRender.present();
    uint32_t time;
    //EventReader eventReader;
    while(true){
      time = SDL_GetTicks();
      eventReader.readEvents();
      if(eventReader.window[pWindow.getId()].isHasRequestToClose){
        std::cout << "\ntry to close window id:" << pWindow.getId() << std::endl;
        break;
      }

      if(eventReader.isDoSometing){
        pRender.fullFill(clearColor);
        pRender.fullFill(mainColor);

        pRender.present();
      }else{
        SDL_Delay(1000/60 -(time - SDL_GetTicks()));
      }

    }
    eventReader.window[pWindow.getId()].isHasRequestToClose = false;
    if(pWindow.flagsIsOn(SDL_WINDOW_RESIZABLE)){
      auto [w,h] = pWindow.getSize();
      inputWBox->changeText(std::to_string(w));
      inputHBox->changeText(std::to_string(h));
    }

    {
      Color temp_color = pRender.getColor();
      inputRedColorBox->changeText(std::to_string(temp_color.r));
      inputGreenColorBox->changeText(std::to_string(temp_color.g));
      inputBlueColorBox->changeText(std::to_string(temp_color.b));
      inputAlfaColorBox->changeText(std::to_string(temp_color.a));
    }
    std::cout << "Kill window id:" << pWindow.getId() << std::endl;
  });

  bWindowFlag->setFunc([&pMainWindow, &eventReader,
                       &bWindowFlag, &WindowFlag, &textBoxWindowFlag,
                       &aFlags](){
    Window pWindow;
    std::shared_ptr<Renderer> pRender;
    {
      int tempx, tempy;
      SDL_GetWindowPosition(pMainWindow.getValue(), &tempx, &tempy);
      Point winPoint{tempx,tempy};

      uint32_t win_flags = SDL_WINDOW_SHOWN | SDL_WINDOW_BORDERLESS
                         | SDL_WINDOW_POPUP_MENU | SDL_WINDOW_SKIP_TASKBAR
                         | SDL_WINDOW_MOUSE_FOCUS ;
      pWindow = Window{"WindowFlag",
                winPoint + bWindowFlag->getUpLeftPoint(),
                0,0,
                win_flags};
      uint32_t render_flags =SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC;
      pRender = std::make_shared<Renderer>(pWindow.getValue(), render_flags);
    }
    auto pFont2 = std::make_shared<Font>(pRender);
    Point shift1{};
    {
      int max_w =0;
      for(auto &i : aFlags){
        max_w = std::max(max_w, pFont2->calculate(i));
      }
      shift1 += Point{max_w + 2*BORD, 28 + 2*BORD};
    }

    Color mainColor {16, 28, 56, 255};
    {
      const int window_w{shift1.x + pFont2->calculate("  ") + BORD + pFont2->calculate("  ")};
      const int temp{static_cast<int>(aFlags.size())*(28 + BORD) + BORD};
      int temp_y1, temp_y2;
      SDL_GetWindowPosition(pMainWindow.getValue(), NULL, &temp_y1);
      SDL_GetWindowPosition(pWindow.getValue(), NULL, &temp_y2);
      auto [_,temp_h] = pMainWindow.getSize();
          const int window_h = temp_y2 - temp_y1 < temp_h ? ((temp_h - (temp_y2 - temp_y1))/32)*32 +4 : temp;
          pWindow.setSize(window_w, window_h);
    }
    pRender->fullFill(mainColor);
    pRender->setBlendMode(SDL_BLENDMODE_BLEND);
    pRender->present();

    Point temp_point{};
    Point shift_point{shift1.x + pFont2->calculate("  ") + BORD,0};
    //        Point shift_point{};
    std::shared_ptr<MultipleOptionChoise> WindowFlagTemp = std::make_shared<MultipleOptionChoise>(pFont2, temp_point, shift_point);
    WindowFlagTemp->swapWithoutFont(WindowFlag);

    if(WindowFlagTemp->getVTextBox().empty()){
      for(auto &str : aFlags){
        WindowFlagTemp->add(temp_point, shift1, BORD, str);
        temp_point.y += shift1.y - BORD;
      }
    }

    int scroll_min = 0;
    int scroll_height;
    int scroll_max;
    Point scroll_offset{};
    int scroll_offset_min = 0;
    int scroll_offset_max;


    std::shared_ptr<TextBox> strangeScroll;
    std::shared_ptr<TextBox> strangeScrollBackground;
    {
      auto [_, temp_h] = pWindow.getSize();
          scroll_height = temp_h / 32;
          Point temp_point{WindowFlagTemp->getDownRightPoint().x, WindowFlagTemp->getUpLeftPoint().y};
      //          Point temp_point{};
      Point shift{pFont2->calculate("  "), static_cast<int>(temp_h * scroll_height / aFlags.size()) };
      strangeScroll = std::make_shared<TextBox>(pFont2, temp_point, shift, 1, 1,"");
      scroll_offset_max = temp_h - shift.y;
      strangeScroll->setHeadColor(Color{26, 48, 56, 255});
      strangeScroll->setBodyColor(Color{13, 82, 78, 255});
      shift.y = temp_h;
      strangeScrollBackground = std::make_shared<TextBox>(pFont2, temp_point, shift, 1, 1,"");
      strangeScrollBackground->setHeadColor(Color{26, 48, 56, 255});
      strangeScrollBackground->setBodyColor(Color{15, 102, 93, 255});
    }
    scroll_max = aFlags.size() - scroll_height;

    Point& mouse_coordinates = eventReader.mouse.coordinates;
    int32_t& mouse_wheel = eventReader.mouse.wheel;
    uint32_t time;
    int scroll = 0;
    while(true){
      LOG_DURATION_START("WIndow flag event reader")
      time = SDL_GetTicks();
      eventReader.readEvents();
      if (eventReader.mouse.isPressed){
        WindowFlagTemp->tryToChose(mouse_coordinates);
        eventReader.mouse.isPressed = false;
      }

      if(eventReader.mouse.isWheeled){
        scroll -= mouse_wheel;
        scroll = std::clamp(scroll, scroll_min, scroll_max);

        scroll_offset.y = scroll * ((scroll_offset_max - scroll_offset_min) / scroll_max);
        scroll_offset.y = std::clamp(scroll_offset.y, scroll_offset_min, scroll_offset_max);

        eventReader.mouse.isWheeled = false;
      }

      if(!eventReader.window[pWindow.getId()].isInWindow &&
         !eventReader.window[pWindow.getId()].isExposed){
        std::cout << "\ntry to close  window id:" << pWindow.getId() << std::endl;
        break;
      }

      if(eventReader.window[pWindow.getId()].isHasRequestToClose){
        std::cout << "\ntry to close window id:" << pWindow.getId() << std::endl;
        break;
      }
      LOG_DURATION_END
      if(eventReader.isDoSometing){
        pRender->fullFill(mainColor);

        WindowFlagTemp->render(scroll);
        strangeScrollBackground->render();
        strangeScroll->render(scroll_offset);

        pRender->present();
        eventReader.window[pWindow.getId()].isExposed = false;

      }else{
        SDL_Delay(1000/60 -(time - SDL_GetTicks()));
      }
    }
    WindowFlagTemp->swapWithoutFont(WindowFlag);
    std::cout << "Kill window id:" << pWindow.getId() << std::endl;
    eventReader.window[pWindow.getId()].isHasRequestToClose = false;



    {
      std::string tempStr{};
      for(const auto &it : WindowFlag.getVTextBox())
        if(it.first->isOn()){
          tempStr += it.second->getInputStr() + " | ";
        }
      textBoxWindowFlag->changeText(tempStr);
    }

//    for_each(WindowFlag.getVTextBox().begin(),WindowFlag.getVTextBox().end(),
//             [](auto &it){std::cout<<('+'*it.first->isOn())<<'-'<<it.second->getInputStr()<<'|';});
//    std::cout<<std::endl;
  });


  uint32_t time;
    {

      Point xy_{20,350};
      Point shift_{60,36};
      std::string str = "asdjh\ngasd";
      std::shared_ptr<TextBox> tb_ = std::make_shared<TextBox>(pFont, xy_, shift_, 4, 4, str);
      vRenderable.push_back(tb_);
    }

  while(true){
    if(eventReader.isQuit || eventReader.window[1].isHasRequestToClose)
      break;
    time = SDL_GetTicks();
    LOG_DURATION("main eventReader FULL")
    //LOG_DURATION_START("main eventReader")
    eventReader.readEvents();

    //mouse = eventReader.mouse.coordinates;
    if(eventReader.mouse.isPressed){
      LOG_DURATION("isPressed")
      for(auto &it : vButton){
        LOG_DURATION("isPressed " + it->getInputStr())
        if (it->isOnMouse(mouse)){
          it->funcExe();
        }
      }
      isOnTextBox = false;
      for(auto &it : vInputTextBoxs){
        if (it->isOnMouse(mouse)){
          pActiveTextBox = it;
          isOnTextBox = true;
          break;
        }
      }
      if (!isOnTextBox){
        pActiveTextBox = nullptr;
      }
      eventReader.mouse.isPressed = false;
    }
    if(eventReader.mouse.isWheeled){
      for(auto &it : vScrollable){
        if(it->isScrollable()){
          if(it->isOnMouse(mouse)){
            it->changeScroll(mouse_wheel);
          }
        }
      }
    eventReader.mouse.isWheeled = false;
    }
    if(eventReader.keyboard.isTextInputEvent){
      if(isOnTextBox){
        if(eventReader.keyboard.lastInputChar != std::string::npos)
          pActiveTextBox->addLetter(eventReader.keyboard.lastInputChar);
      }else{
        eventReader.keyboard.lastInputChar = std::string::npos;
      }
      eventReader.keyboard.isTextInputEvent = false;
    }

    //LOG_DURATION_END
    if(eventReader.isDoSometing){
      LOG_DURATION("isRenderALL")
      pMainRenderer->fullFill(mainColor);
      for_each(vRenderable.begin(), vRenderable.end(),[](auto &it){it->render();});

      pMainRenderer->present();
    }else{
      SDL_Delay(1000/60 -(time - SDL_GetTicks()));
    }
  }
  return 0;
}
