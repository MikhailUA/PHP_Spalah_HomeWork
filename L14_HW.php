<?php

Class Point {
    protected $x1;
    protected $y1;

    public function setX1($x1)
    {
        $this->x1 = settype ($x1,"integer");
    }
    public function getX1()
    {
        return $this->x1;
    }
    public function setY1($y1)
    {
        $this->y1 = settype ($y1,"integer");
    }
    public function getY1()
    {
        return $this->y1;
    }

    public function display(){
        echo "x1=".$this->x1."</br>";
        echo "y1=".$this->y1."</br>";
    }
}
$p = new Point();
$p->setX1(1);
$p->setY1(1);
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
$l->setX1(2);
$l->setY1(3);
$l->x2=4;
$l->y2=6;

$l->display();

