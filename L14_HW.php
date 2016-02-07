<?php

Class Point {
    public $x1;
    public $y1;

    public function display(){
        echo "x1=".$this->x1."</br>";
        echo "y1=".$this->y1."</br>";
    }
}
$p = new Point();
$p->x1=1;
$p->y1=1;
$p->display();

Class Line extends Point{
    public $x2;
    public $y2;

    public function display(){
        parent::display();
        echo "x2=".$this->x2."</br>";
        echo "y2=".$this->y2."</br>";
    }
}

$l = new Line();
$l->x1=2;
$l->y1=3;
$l->x2=4;
$l->y2=6;

$l->display();

Class Triangle extends Line{
    public $x3;
    public $y3;

    public function display(){
        parent::display();
        echo "x3=".$this->x3."</br>";
        echo "y3=".$this->y3."</br>";
    }
}

$tr = new Triangle();
$tr ->x3=4;
$tr ->y3=4;

$tr->display();
