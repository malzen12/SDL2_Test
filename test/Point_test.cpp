#include "decay.h"

TEST(PointTest, Constructor){
  const int i0{0}, i1{1}, i2{5};

  const std::tuple expected1{i0, i0};
  const std::tuple expected2{i1, i0};
  const std::tuple expected3{i1, i2};
  const std::tuple expected4{i1, i2};
  const std::tuple expected5{i1, i0};
  ///////////////////////////////////////////////
  Point p1{};
  Point p2{i1};
  Point p3{i1, i2};
  Point p4{p3};
  Point p5_{p2}; Point p5{std::move(p5_)};
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(p1), expected1);
  EXPECT_EQ(Decay::toTuple(p2), expected2);
  EXPECT_EQ(Decay::toTuple(p3), expected3);
  EXPECT_EQ(Decay::toTuple(p4), expected4);
  EXPECT_EQ(Decay::toTuple(p5), expected5);
  Decay::toTuple(p1);
}

TEST(PointTest, Operations){
  const int i1{23}, i2{-44};
  const int i3{14}, i4{31};
  const int imult{7};
  const int idiv{3};
  const Point p1{i1, i2};
  const Point p2{i3, i4};

  const Point sumExpected1{p1};
  const Point sumExpected2{i1 + i3, i2 + i4};
  const Point subExpected1{-i1, -i2};
  const Point subExpected2{i1 - i3, i2 - i4};
  const Point multExpected1{i1 * imult, i2 * imult};
  const Point multExpected2{i3 * imult, i4 * imult};
  const Point multExpected3{i3 * imult, i2 * imult};
  const Point multExpected4{i4 * imult, i1 * imult};
  const Point divExpected1{i1 / idiv, i2 / idiv};
  const Point divExpected2{i3 / idiv, i4 / idiv};
  const Point divExpected3{i3 / idiv, i2 / idiv};
  ///////////////////////////////////////////////
  Point sum1 = +p1;
  Point sum2 = p1 + p2;
  Point sub1 = -p1;
  Point sub2 = p1 - p2;
  Point mult1 = p1 * imult;
  Point mult2 = imult * p2;
  Point mult3 = imult * Point{i3, i2};
  Point mult4 = Point{i4, i1};
  mult4 *= imult;
  Point div1 = p1 / idiv;
  Point div2 = p2;
  div2 /= idiv;
  Point div3 = Point{i3, i2} / idiv;
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(sum1), Decay::toTuple(sumExpected1));
  EXPECT_EQ(Decay::toTuple(sum2), Decay::toTuple(sumExpected2));
  EXPECT_EQ(Decay::toTuple(sub1), Decay::toTuple(subExpected1));
  EXPECT_EQ(Decay::toTuple(sub2), Decay::toTuple(subExpected2));
  EXPECT_EQ(Decay::toTuple(mult1), Decay::toTuple(multExpected1));
  EXPECT_EQ(Decay::toTuple(mult2), Decay::toTuple(multExpected2));
  EXPECT_EQ(Decay::toTuple(mult3), Decay::toTuple(multExpected3));
  EXPECT_EQ(Decay::toTuple(mult4), Decay::toTuple(multExpected4));
  EXPECT_EQ(Decay::toTuple(div1), Decay::toTuple(divExpected1));
  EXPECT_EQ(Decay::toTuple(div2), Decay::toTuple(divExpected2));
  EXPECT_EQ(Decay::toTuple(div3), Decay::toTuple(divExpected3));
}
