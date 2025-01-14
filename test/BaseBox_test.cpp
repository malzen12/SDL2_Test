#include "decay.h"

TEST(BaseBoxTest, Constructor){
  Point p1{0x10, 0x20};
  Point p2{0x70, 0x80};
  Point p3{0x14, 0x24};
  Point p4{0x6c, 0x7c};
  Point Offset{0, 0};
  Rectangle RectBody{p3.x, p3.y, p4.x - p3.x, p4.y - p3.y};
  Rectangle RectHead{p1.x, p1.y, p2.x - p1.x, p2.y - p1.y};
  Point Shift{p2 - p1};
  const int bord = 0x04;

  const auto expectedBb = std::make_tuple(
                            Decay::toTuple(RectHead),
                            Decay::toTuple(RectBody),
                            Decay::toTuple(p1),
                            Decay::toTuple(p2),
                            Decay::toTuple(p3),
                            Decay::toTuple(p4),
                            Decay::toTuple(Offset)
                            );
  ///////////////////////////////////////////////
  BaseBox bb1(p1, p2, p3, p4);
  BaseBox bb2(p1, Shift, bord, bord);
  BaseBox bb3(p1, Shift, bord);
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(bb1), expectedBb);
  expect_for_each_in_tuple(Decay::toTuple(bb1), expectedBb);
  EXPECT_EQ(Decay::toTuple(bb2), expectedBb);
  expect_for_each_in_tuple(Decay::toTuple(bb1), expectedBb);
  EXPECT_EQ(Decay::toTuple(bb3), expectedBb);
  expect_for_each_in_tuple(Decay::toTuple(bb3), expectedBb);

}

class BaseBoxTestF : public ::testing::Test
{
protected:
  Point p1{0x10, 0x20};
  Point p2{0x70, 0x80};
  Point p3{0x14, 0x24};
  Point p4{0x6c, 0x7c};
  BaseBox bb1{p1, p2, p3, p4};
};


TEST_F(BaseBoxTestF, isOnMouse){
  Point center{p1 + p2 + p3 + p4};
  center /= 4;
  Point shiftX{0x50, 0};
  Point shiftY{0, 0x50};

  BaseBox bb2(p1, p2, p3, p4);
  Point shiftXY{0x100, 0x100};
  bb2.m_Offset = shiftXY;

  ///////////////////////////////////////////////
  Point mouseOut1 = center - shiftX - shiftY;
  Point mouseOut2 = center - shiftY;
  Point mouseOut3 = center + shiftX - shiftY;
  Point mouseOut4 = center - shiftX;
  Point mouseOut6 = center + shiftX;
  Point mouseOut7 = center - shiftX + shiftY;
  Point mouseOut8 = center - shiftY;
  Point mouseOut9 = center + shiftX + shiftY;
  ///////////////////////////////////////////////
  EXPECT_FALSE(bb1.isOnMouse(mouseOut1));
  EXPECT_FALSE(bb1.isOnMouse(mouseOut2));
  EXPECT_FALSE(bb1.isOnMouse(mouseOut3));
  EXPECT_FALSE(bb1.isOnMouse(mouseOut4));
  EXPECT_FALSE(bb1.isOnMouse(mouseOut6));
  EXPECT_FALSE(bb1.isOnMouse(mouseOut7));
  EXPECT_FALSE(bb1.isOnMouse(mouseOut8));
  EXPECT_FALSE(bb1.isOnMouse(mouseOut9));
  EXPECT_FALSE(bb1.isOnMouse(p1));
  EXPECT_FALSE(bb1.isOnMouse(p2));
  EXPECT_TRUE(bb1.isOnMouse(p3));
  EXPECT_TRUE(bb1.isOnMouse(p4));
  EXPECT_TRUE(bb1.isOnMouse(center));

  EXPECT_FALSE(bb2.isOnMouse(mouseOut1 + shiftXY));
  EXPECT_FALSE(bb2.isOnMouse(mouseOut2 + shiftXY));
  EXPECT_FALSE(bb2.isOnMouse(mouseOut3 + shiftXY));
  EXPECT_FALSE(bb2.isOnMouse(mouseOut4 + shiftXY));
  EXPECT_FALSE(bb2.isOnMouse(mouseOut6 + shiftXY));
  EXPECT_FALSE(bb2.isOnMouse(mouseOut7 + shiftXY));
  EXPECT_FALSE(bb2.isOnMouse(mouseOut8 + shiftXY));
  EXPECT_FALSE(bb2.isOnMouse(mouseOut9 + shiftXY));
  EXPECT_FALSE(bb2.isOnMouse(p1 + shiftXY));
  EXPECT_FALSE(bb2.isOnMouse(p2 + shiftXY));
  EXPECT_TRUE(bb2.isOnMouse(p3 + shiftXY));
  EXPECT_TRUE(bb2.isOnMouse(p4 + shiftXY));
  EXPECT_TRUE(bb2.isOnMouse(center + shiftXY));

}

TEST_F(BaseBoxTestF, getters){
  const Rectangle expectedRectBody{p3.x, p3.y, p4.x - p3.x, p4.y - p3.y};
  const Point expectedUpLeft{p1};
  const Point expectedDownRight{p2};
  ///////////////////////////////////////////////

  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(bb1.getRectBody()), Decay::toTuple(expectedRectBody));
  EXPECT_EQ(Decay::toTuple(bb1.getUpLeftPoint()), Decay::toTuple(expectedUpLeft));
  EXPECT_EQ(Decay::toTuple(bb1.getDownRightPoint()), Decay::toTuple(expectedDownRight));


}

