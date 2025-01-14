#include "Universal.h"
#include <cmath>
#include <iostream>

Point::Point(int32_t x, int32_t y)
    :x(x), y(y){}

void Point::print() { std::cout << x << ' ' << y << std::endl; }

Triangle::Triangle(Point tp1, Point tp2, Point tp3 , Color tcol)
    :p1(tp1), p2(tp2), p3(tp3), col(tcol){
    toValid();
}

void Triangle::toValid(){
    if(p1.x == p2.x)
        if(p1.y > p2.y)
            std::swap(p1, p2);
    if(p1.x <= p2.x){
        if(p1.x == p3.x)
            if(p1.y > p3.y)
                std::swap(p1, p3);
        if(p1.x > p3.x)
            std::swap(p1, p3);
    }
    else{
        if(p2.x < p3.x)
            std::swap(p1, p2);
        else
            std::swap(p1, p3);
        if(p2.x == p3.x)
            if(p2.y > p3.y)
                std::swap(p2, p3);
    }
    if(p2.y > p3.y)
        std::swap(p2, p3);
    if(p2.y == p3.y)
        if(p2.x > p3.x)
            std::swap(p2, p3);
}

void Triangle::render(SDL_Renderer* pRender){
    col.drawLine(pRender, p1, p2);
    col.drawLine(pRender, p2, p3);
    col.drawLine(pRender, p3, p1);
}

void Triangle::print(){
    p1.print();
    p2.print();
    p3.print();
}

Color::Color()
    :red(0), green(0), blue(0), alpha(0xff){}

Color::Color(Uint8 red, Uint8 green, Uint8 blue, Uint8 alpha)
    :red(red), green(green), blue(blue), alpha(alpha){}

void Color::setColor(SDL_Renderer* pRender){
    SDL_SetRenderDrawColor(pRender, red, green, blue, alpha);
}

void Color::fillRect(SDL_Renderer* pRender, const SDL_Rect &Rct){
    setColor(pRender);
    SDL_RenderFillRect(pRender, &Rct);
}

void Color::fillRect(SDL_Renderer* pRender, const Point LeftUp, const Point Shift){
    SDL_Rect Rtemp{LeftUp.x, LeftUp.y, Shift.x, Shift.y};
    fillRect(pRender, Rtemp);
};

void Color::drawLine(SDL_Renderer* pRender, const Point First, const Point Second){
    setColor(pRender);
    SDL_RenderDrawLine(pRender, First.x, First.y, Second.x, Second.y);
}


void Color::DrawArrow(SDL_Renderer* pRender, const Point start, const Point endP , const int len){
    const double Pi = 3.1416;
    const double absx = endP.x - start.x;
    const double absy = endP.y - start.y;
    const double angle = atan(absx / absy);
    const double rangle = angle - Pi/6;
    const double langle = Pi/2 - angle - Pi/6;
    Point left{static_cast<int>(std::cos(langle) * len), static_cast<int>(std::sin(langle) * len)};
    Point right{static_cast<int>(std::sin(rangle) * len), static_cast<int>(std::cos(rangle) * len)};
    if(endP.y < start.y){
        left = -left;
        right = -right;
    }

    left = endP - left;
    right = endP - right;

    drawLine(pRender, start, endP);
    drawLine(pRender, endP, left);
    drawLine(pRender, endP, right);
}
