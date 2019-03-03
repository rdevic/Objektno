#include <iostream>
#include <math.h>
using namespace std;

class Rectangle;
class Point {
protected:
    double x, y;
public:
    // pretpostavljeni konstruktor
    Point();
    // preoptereceni konstruktor
    Point(double, double);
    //getter-i
    double getx() const; //+
    double gety() const; //+

    //setter-i
    void setx(double); //+
    void sety(double); //+
    // printaj tocku
    void print() const; //+
    // je li pravokutnik unutar tocke
   bool isInside(Rectangle r) const;

   void rotate(double);
   void translate( Point) ;
};

////////////////////////////////////////////////////
///////////////////P O I N T////////////////////////
////////////////////////////////////////////////////
Point::Point() {x=0,y=0;}
Point::Point(double a, double b) {
    x = a;
    y = b;
}
double Point::getx() const {return x;}
double Point::gety() const {return y;}
void Point::setx(double x) {this-> x=x;}
void Point::sety(double y) {this-> y=y;}
void Point::print() const {
    cout << "x: " << x << ",y: " << y << endl;
}
void Point::translate(const Point P)  {
    x += P.getx();
    y += P.gety();
}
void Point::rotate(double k) {
    x=x*cos(k) - y*sin(k);
    y=x*sin(k) + y*cos(k);
}
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////

class Rectangle {
protected:
    Point A, B, C;
public:
    // preoptereceni konstruktor
    Rectangle(Point A, Point B, Point C); //+
    Point getA() const; //+
    Point getB() const; //+
    Point getC() const; //+
    Point getD() const; //+
    // povrsina
    double area() const; //+
    // opseg
    double perimeter() const; //+
    // translatiraj za tocku
    void translate(Point); //+
    // rotiraj oko ishodista za kut tipa double u radijanima
    void rotate(double);
    // ispisi
    void print() const; //+
};
/////////////////////////////////////////////////////
//////////////////R E C T A N G L E//////////////////
/////////////////////////////////////////////////////
Point Rectangle::getA() const { return A;}
Point Rectangle::getB() const { return B;}
Point Rectangle::getC() const { return C;}
Point Rectangle::getD() const {
    return Point(C.getx()-B.getx()+A.getx() ,C.gety()-B.gety()+A.gety() );
}
Rectangle::Rectangle(Point A1, Point B1, Point C1) {
    A=A1;
    B=B1;
    C=C1;

}

void Rectangle::print() const {
    cout << "A: ";
    A.print();
    cout << "B: ";
    B.print();
    cout << "C: ";
    C.print();
    cout << "D: ";
    Point D = getD();
    D.print();
}


double udaljenostTocaka(const Point A,const Point B){
    return sqrt(pow(A.getx()-B.getx(), 2)+pow(A.gety()-B.gety(), 2));

}
void Rectangle::translate(Point P) {
    A.translate(P);
    B.translate(P);
    C.translate(P);
}
double Rectangle::area() const {
    return udaljenostTocaka(A,B)*udaljenostTocaka(B,C);
}
double Rectangle::perimeter() const {
    return (udaljenostTocaka(A,B)+udaljenostTocaka(B,C))*2;
}

double povrsinaTrokut(const Point A,const  Point B,const  Point C){
    double a= udaljenostTocaka(A,B);
    double b= udaljenostTocaka(B,C);
    double c= udaljenostTocaka(C,A);
    double s= (a+b+c)/2;
    return sqrt(s * (s - a) * (s - b) * (s - c));
}
void Rectangle::rotate(double k) {
    A.rotate(k);
    B.rotate(k);
    C.rotate(k);
}




bool Point::isInside(Rectangle r) const {
    Point T(*this);
    Point A = r.getA();
    Point B = r.getB();
    Point C = r.getC();
    Point D = r.getD();

    double s1,s2,s3,s4;
    s1 = povrsinaTrokut(A, B, T);
    s2 = povrsinaTrokut(B, C, T);
    s3 = povrsinaTrokut(C, D, T);
    s4 = povrsinaTrokut(D, A, T);
    double sum = s1 + s2 + s3 + s4;
    double p = r.area();

    return  sum == p;
}


int main()
{
    Point A(3,1);
    Point B(1,1);
    Point C(1,2);
    Point X(2,1.5);
    Point Y(2,3);

    Rectangle P (A,B,C);
    cout <<"Pravokutnik P: " <<endl;
    P.print();
    cout << "Povrsina Pravokutnika P: " << P.area()  << endl;
    cout << "Opseg Pravokutnika P: " << P.perimeter() << endl;
    cout << "X unutar P: "<<X.isInside(P) << endl;
    cout << "Rotacija Pravokutnika za pi: " <<endl;
    P.rotate(M_PI);
    P.print();
    cout << "Translacija za Pravokutnika P za (2,3) " << endl;
    P.translate(Y);
    P.print();
    cout << "X unutar P nakon translacije:" << X.isInside(P) <<endl;
    return 0;
}
/*


*/