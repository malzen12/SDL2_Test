#include "EventReader.h"

#include <iostream>

Keyboard::Keyboard(){
    isPressedLShift = false;
    isPressedRShift = false;
    isCapsON = false;
    isTextInputEvent = false;
    isKeyPressed = false;
    isRussianNow = true;

    lastInputChar = 0;
    lastPressedKey = 0;

}
Mouse::Mouse(){
    isPressed = false;
    coordinates = Point{0,0};
}

EventReader::EventReader():mouse(),keyboard(){
    mKeys[102] = 224;
    mKeys[44] = 225;
    mKeys[100] = 226;
    mKeys[117] = 227;
    mKeys[108] = 228;
    mKeys[116] = 229;
    mKeys[59] = 230;
    mKeys[112] = 231;
    mKeys[98] = 232;
    mKeys[113] = 233;
    mKeys[114] = 234;
    mKeys[107] = 235;
    mKeys[118] = 236;
    mKeys[121] = 237;
    mKeys[106] = 238;
    mKeys[103] = 239;
    mKeys[104] = 240;
    mKeys[99] = 241;
    mKeys[110] = 242;
    mKeys[101] = 243;
    mKeys[97] = 244;
    mKeys[91] = 245;
    mKeys[119] = 246;
    mKeys[120] = 247;
    mKeys[105] = 248;
    mKeys[111] = 249;
    mKeys[93] = 250;
    mKeys[115] = 251;
    mKeys[109] = 252;
    mKeys[39] = 253;
    mKeys[46] = 254;
    mKeys[122] = 255;

    mKeys[96] = 184;
}


bool EventReader::readEvents(){
    SDL_Event e;
    while(SDL_PollEvent(&e) != 0){
        switch(e.type){
            case SDL_QUIT:
                return false;
            case SDL_KEYUP:{
                switch(e.key.keysym.sym){
                    case SDLK_LSHIFT:{
                        keyboard.isPressedLShift = false;
                        break;
                    }
                    case SDLK_RSHIFT:{
                        keyboard.isPressedRShift = false;
                        break;
                    }
                }
                break;
            }
            case SDL_KEYDOWN:{
                switch(e.key.keysym.sym){
                    case SDLK_ESCAPE:{
                        return false;
                    }
                    case SDLK_LSHIFT:{
                        keyboard.isPressedLShift = true;
                        break;
                    }
                    case SDLK_RSHIFT:{
                        keyboard.isPressedRShift = true;
                        break;
                    }
                    case SDLK_CAPSLOCK:{
                        keyboard.isCapsON = !keyboard.isCapsON;
                        break;
                    }
                    case SDLK_RETURN:{
                        //cout<<"Enter"<<endl;
                        keyboard.isTextInputEvent = true;
                        keyboard.lastInputChar = SDLK_RETURN;
                        break;
                    }
                }
                keyboard.lastPressedKey = e.key.keysym.sym;
                //std::cout<<lastPressedKey<<std::endl;
//                mKeyDictionary[e.key.keysym.sym] = true;
                break;
            }
            case SDL_MOUSEMOTION:{
                mouse.coordinates.x = e.motion.x;
                mouse.coordinates.y = e.motion.y;
                break;
            }
            case SDL_MOUSEBUTTONDOWN:{
                mouse.isPressed = true;
                mouse.coordinates.x = e.motion.x;
                mouse.coordinates.y = e.motion.y;
                break;
            }
            case SDL_MOUSEBUTTONUP:{
                mouse.isPressed = false;
                mouse.coordinates.x = e.motion.x;
                mouse.coordinates.y = e.motion.y;
                break;
            }
            case SDL_TEXTEDITING:{

                break;
            }
            case SDL_TEXTINPUT:{
                if(keyboard.isRussianNow){
                    if(mKeys.find(keyboard.lastPressedKey) != mKeys.end()){
                        if(keyboard.lastPressedKey != 96){
                            keyboard.lastInputChar = mKeys[keyboard.lastPressedKey] - ((keyboard.isPressedLShift | keyboard.isPressedRShift) ^ keyboard.isCapsON) * 32;
                            std::cout<<mKeys[keyboard.lastPressedKey]<<"    "<<keyboard.lastPressedKey<<"    "<<keyboard.lastInputChar<<std::endl;
                        }
                        else{
                            keyboard.lastInputChar = mKeys[keyboard.lastPressedKey] - ((keyboard.isPressedLShift | keyboard.isPressedRShift) ^ keyboard.isCapsON) * 16;
                        }
                    }
                    else{
                        keyboard.lastInputChar = e.text.text[8];
                        std::cout<<keyboard.lastInputChar<<std::endl;
                    }
                }
                else{
                    keyboard.lastInputChar = e.text.text[8];
                    for(auto i:e.text.text)
                        std::cout<<i;
                    std::cout<<std::endl;
                }

                keyboard.isTextInputEvent = true;
                std::cout<<keyboard.lastInputChar<<std::endl;
                break;
            }
            case SDL_KEYMAPCHANGED:{
              std::cout << "Language is changed" << std::endl;
              keyboard.isRussianNow = ! keyboard.isRussianNow;
              break;
            }
        }
    }
    return true;
}


