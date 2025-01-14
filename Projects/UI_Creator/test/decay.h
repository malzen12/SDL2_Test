#pragma once
#include <tuple>

#include "gtest/gtest.h"
#include "gmock/gmock.h"

#define private public
#define protected public

#include "Universal.h"
#include "BaseBox.h"
#include "BaseTextBox.h"
#include "TextBox.h"
#include "Button.h"
#include "InputTextBox.h"
#include "Switcher.h"
#include "ColorBox.h"
#include "OneOptionChoise.h"


#undef private
#undef protected

#define CLASS_NAME(name) #name
#define CLASS_NAME_AND_LINE(name) #name + (" " + (std::to_string(__LINE__)))


template<std::size_t I = 0, typename... Tp>
inline typename std::enable_if<I == sizeof...(Tp), void>::type
  expectTuple(std::tuple<Tp...> &, std::tuple<Tp...> &, const std::string &str = {}) // Unused arguments are given no names.
  { }
template<std::size_t I = 0,  typename... Tp>
inline typename std::enable_if<I < sizeof...(Tp), void>::type
  expectTuple(std::tuple<Tp...>& t1, std::tuple<Tp...> & t2, const std::string &str = {})
  {
    EXPECT_EQ(std::get<I>(t1), std::get<I>(t2))
        << "I=" << I << "\ttypename " << typeid(std::get<I>(t1)).name()
        << "\n" << str << "\n";
    expectTuple<I + 1, Tp...>(t1, t2, str);
  }
template <class T>
void expect_for_each_in_tuple(T t1, T t2, const std::string& str = {} ){
  expectTuple(t1, t2, str);
}


struct Decay{
  static auto toTuple(const Point& p){
    return std::make_tuple(p.x, p.y);
  }

  static auto toTuple(const Rectangle& p){
    return std::make_tuple(p.x, p.y, p.w, p.h);
  }

  static auto toTuple(const Color& p){
    return std::make_tuple(p.r, p.g, p.b, p.a);
  }

  static auto toTuple(const BaseBox& p){
    return std::make_tuple(Decay::toTuple(p.m_RectHead),
                           Decay::toTuple(p.m_RectBody),
                           Decay::toTuple(p.m_UpLeft),
                           Decay::toTuple(p.m_DownRight),
                           Decay::toTuple(p.m_UpLeftBody),
                           Decay::toTuple(p.m_DownRightBody),
                           Decay::toTuple(p.m_Offset));
  };

  static auto toTuple(const ColorBox& p){
    return std::make_tuple(Decay::toTuple(static_cast<BaseBox>(p)),
                           Decay::toTuple(p.m_HeadColor),
                           Decay::toTuple(p.m_BodyColor));
  };

  static auto toTuple(const BaseTextBox& p){
    return std::make_tuple(Decay::toTuple(static_cast<BaseBox>(p)),
                           p.m_vText,
                           p.m_lines,
                           p.m_pFont,
                           p.m_TextWidth,
                           p.m_maxTextWidth,
                           p.m_maxTextHeight,
                           p.m_Pos,
                           Decay::toTuple(p.m_HeadColor),
                           Decay::toTuple(p.m_BodyColor));
  };

  static auto toTuple(const Font::arrRect& p){
    std::vector<decltype(Decay::toTuple(p.front()))> v;
    v.reserve(p.size());
    std::for_each(p.begin(), p.end(),[&v](auto& rect){v.push_back(Decay::toTuple(rect));});
    return v;
  };

  static auto toTuple(const Font& p){
    return std::make_tuple(p.m_pRender,
                           Decay::toTuple(p.m_aLetters),
                           p.m_letterMaxWidth,
                           p.m_letterHeight);
  };

  static auto toTuple(const TextBox& p){
    return std::make_tuple(Decay::toTuple(static_cast<BaseTextBox>(p)),
                           p.m_InputStr);
  };

  static auto toTuple(const Button& p){
    return std::make_tuple(Decay::toTuple(static_cast<BaseTextBox>(p)),
                           p.m_InputStr,
                           p.m_func.target_type().name());
  };

  static auto toTuple(const InputTextBox& p){
    return std::make_tuple(Decay::toTuple(static_cast<BaseTextBox>(p)),
                           Decay::toTuple(p.m_currentPoint));
  };

  static auto toTuple(const Switcher& p){
    return std::make_tuple(Decay::toTuple(static_cast<BaseBox>(p)),
                           p.m_pFont,
                           p.m_isOn,
                           Decay::toTuple(p.m_HeadColor),
                           Decay::toTuple(p.m_BodyColorON),
                           Decay::toTuple(p.m_BodyColorOFF));
  };

  static auto toTuple(const OneOptionChoise& p){
    return std::make_tuple(Decay::toTuple(static_cast<BaseBox>(p)),
                           p.m_vTextBox,
                           p.m_pFont,
                           Decay::toTuple(p.m_BodyColor),
                           p.m_activeOption);
  };
};



