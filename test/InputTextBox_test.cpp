#include "decay.h"
#include "MockRender.h"

class InputTextBoxTestF : public ::testing::Test
{
protected:
  InputTextBoxTestF(){
    EXPECT_CALL(*render, getValue())
        .WillOnce(testing::Return(render->m_pRender.get()));
    pFont1 = std::make_shared<Font>(render);
  }
  const Point p1{0x10, 0x20};
  const Point p2{0x70, 0x80};
  const Point p3{0x14, 0x24};
  const Point p4{0x6c, 0x7c};
//  Window win = {"title", Point{}, 10, 10, SDL_WINDOW_MINIMIZED};
//  std::shared_ptr<Renderer> render = std::make_shared<Renderer>(win.getValue(), uint32_t{});
  std::shared_ptr<MockRenderer> render = std::make_shared<MockRenderer>();
  std::shared_ptr<IFont> pFont1;
};


TEST_F(InputTextBoxTestF, Constructor){
  const int i0{0};
  BaseTextBox btb{pFont1, p1, p2, p3, p4};

  Point Shift{p2 - p1};
  const int bord = 0x04;
  btb.setHeadColor({26, 48, 76, 255}); // base color TextBox
  btb.setBodyColor({13, 72, 68, 255}); //base color TextBox
  btb.setPos(Position::Left);

  const auto expectedItb = std::make_tuple(Decay::toTuple(btb),
                                           Decay::toTuple(p3));
  ///////////////////////////////////////////////
  InputTextBox itb1(pFont1, p1, p2, p3, p4);
  InputTextBox itb2(pFont1, p1, Shift, bord, bord);
  InputTextBox itb3(pFont1, p1, Shift, bord);
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(itb1), expectedItb);
  expect_for_each_in_tuple(Decay::toTuple(itb1), expectedItb);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(itb1)), Decay::toTuple(btb), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(itb2), expectedItb);
  expect_for_each_in_tuple(Decay::toTuple(itb2), expectedItb);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(itb2)), Decay::toTuple(btb), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(itb3), expectedItb);
  expect_for_each_in_tuple(Decay::toTuple(itb3), expectedItb);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(itb3)), Decay::toTuple(btb), CLASS_NAME_AND_LINE(BaseTextBox));

}

#if 1
TEST_F(InputTextBoxTestF, getters){
  InputTextBox itb1(pFont1, p1, p2, p3, p4);
  ///////////////////////////////////////////////
  EXPECT_EQ(0, 1);
}
#endif

TEST_F(InputTextBoxTestF, clearText){
  const std::string inputStr = "Test";
  InputTextBox itb1(pFont1, p1, p2, p3, p4);
  InputTextBox itb2 = itb1;
  itb1.changeText(inputStr);
  ///////////////////////////////////////////////
  itb1.clearText();
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(itb1), Decay::toTuple(itb2));
}



TEST_F(InputTextBoxTestF, alignment){
  const std::string inputStr = "Test";
  InputTextBox itb1(pFont1, p1, p2, p3, p4);
  itb1.changeText(inputStr);
  int textWidth = pFont1->calculate(inputStr);
  ///////////////////////////////////////////////
  itb1.setPos(Position::Left);
  /////////////////
  EXPECT_EQ(itb1.alignment(), p3.x);

  itb1.setPos(Position::Right);
  /////////////////
  EXPECT_EQ(itb1.alignment(), p4.x - textWidth);

  itb1.setPos(Position::Center);
  /////////////////
  EXPECT_EQ(itb1.alignment(), p3.x + (p4.x - p3.x - textWidth) / 2);
}


TEST_F(InputTextBoxTestF, addLetter){
  InputTextBox itb1(pFont1, p1, p2, p3, p4);
  InputTextBox expectedItb1 = itb1;
  expectedItb1.changeText("T");

  InputTextBox itb2(expectedItb1);
  InputTextBox expectedItb2 = expectedItb1;
  expectedItb2.changeText("Te");

  InputTextBox itb3(expectedItb2);
  InputTextBox expectedItb3 = expectedItb2;
  expectedItb3.changeText("Tes");

  InputTextBox itb4 = expectedItb3;
  InputTextBox expectedItb4 = expectedItb3;
  expectedItb4.changeText("Test");

  ///////////////////////////////////////////////
  itb1.addLetter('T');
  itb2.addLetter('e');
  itb3.addLetter('s');
  itb4.addLetter('t');
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(itb1), Decay::toTuple(expectedItb1));
  expect_for_each_in_tuple(Decay::toTuple(itb1), Decay::toTuple(expectedItb1), CLASS_NAME_AND_LINE(InputTextBox));
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(itb1)), Decay::toTuple(static_cast<BaseTextBox>(expectedItb1)), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(itb2), Decay::toTuple(expectedItb2));
  expect_for_each_in_tuple(Decay::toTuple(itb2), Decay::toTuple(expectedItb2), CLASS_NAME_AND_LINE(InputTextBox));
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(itb2)), Decay::toTuple(static_cast<BaseTextBox>(expectedItb2)), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(itb3), Decay::toTuple(expectedItb3));
  expect_for_each_in_tuple(Decay::toTuple(itb3), Decay::toTuple(expectedItb3), CLASS_NAME_AND_LINE(InputTextBox));
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(itb3)), Decay::toTuple(static_cast<BaseTextBox>(expectedItb3)), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(itb4), Decay::toTuple(expectedItb4));
  expect_for_each_in_tuple(Decay::toTuple(itb4), Decay::toTuple(expectedItb4), CLASS_NAME_AND_LINE(InputTextBox));
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(itb4)), Decay::toTuple(static_cast<BaseTextBox>(expectedItb4)), CLASS_NAME_AND_LINE(BaseTextBox));
}


