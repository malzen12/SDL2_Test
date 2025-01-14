#include "decay.h"
#include "MockRender.h"

class ColorBoxTestF : public ::testing::Test
{
protected:
  const Point p1{0x10, 0x20};
  const Point p2{0x70, 0x80};
  const Point p3{0x14, 0x24};
  const Point p4{0x6c, 0x7c};
//  Window win = {"title", Point{}, 10, 10, SDL_WINDOW_MINIMIZED};
//  std::shared_ptr<Renderer> render = std::make_shared<Renderer>(win.getValue(), uint32_t{});;
  std::shared_ptr<MockRenderer> render = std::make_shared<MockRenderer>();
};


TEST_F(ColorBoxTestF, Constructor){
  BaseBox bb{p1, p2, p3, p4};

  Point Shift{p2 - p1};
  const int bord = 0x04;
  Color HeadColor{26, 48, 76, 255};
  Color BodyColor{13, 72, 68, 255};
  const auto expectedCb = std::make_tuple(Decay::toTuple(bb),
                                          Decay::toTuple(HeadColor),
                                          Decay::toTuple(BodyColor));
  ///////////////////////////////////////////////
  ColorBox cb1(p1, p2, p3, p4);
  ColorBox cb2(p1, Shift, bord, bord);
  ColorBox cb3(p1, Shift, bord);
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(cb1), expectedCb);
  expect_for_each_in_tuple(Decay::toTuple(cb1), expectedCb);
  EXPECT_EQ(Decay::toTuple(cb2), expectedCb);
  expect_for_each_in_tuple(Decay::toTuple(cb2), expectedCb);
  EXPECT_EQ(Decay::toTuple(cb3), expectedCb);
  expect_for_each_in_tuple(Decay::toTuple(cb3), expectedCb);
}

TEST_F(ColorBoxTestF, setters){
  ColorBox cb1(p1, p2, p3, p4);
  ///////////////////////////////////////////////
  auto predHeadColor = cb1.m_HeadColor;
  auto nextHeadColor = Color{0x55, 0x55, 0x55, 0x55};
  cb1.setHeadColor(nextHeadColor);
  /////////////////
  if(Decay::toTuple(predHeadColor) == Decay::toTuple(nextHeadColor))
    EXPECT_NE(Decay::toTuple(cb1.m_HeadColor), Decay::toTuple(predHeadColor));
  EXPECT_EQ(Decay::toTuple(cb1.m_HeadColor), Decay::toTuple(nextHeadColor));

  auto predBodyColor = cb1.m_BodyColor;
  auto nextBodyColor = Color{0x66, 0x66, 0x66, 0x66};
  cb1.setBodyColor(nextBodyColor);
  /////////////////
  if(Decay::toTuple(predBodyColor) == Decay::toTuple(nextBodyColor))
    EXPECT_NE(Decay::toTuple(cb1.m_BodyColor), Decay::toTuple(predBodyColor));
  EXPECT_EQ(Decay::toTuple(cb1.m_BodyColor), Decay::toTuple(nextBodyColor));
}
