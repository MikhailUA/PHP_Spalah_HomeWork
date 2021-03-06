<?php

Class Point {
    protected $x1;
    protected $y1;

    public function setX1($x1)
    {
        settype($x1,"integer");
        $this->x1 = $x1;
    }
    public function getX1()
    {
        return $this->x1;
    }
    public function setY1($y1)
    {
        settype ($y1,"integer");
        $this->y1 = $y1;
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
$p->setX1(13);
$p->setY1(11);
$p->display();

Class Line extends Point{
    public $x2;
    public $y2;

    public function setX2($x2)
    {
        settype($x2,"integer");
        $this->x2 = $x2;
    }
    public function getX2()
    {
        return $this->x2;
    }
    public function setY2($y2)
    {
        settype ($y2,"integer");
        $this->y2 = $y2;
    }
    public function getY2()
    {
        return $this->y2;
    }

    public function display(){
        parent::display();
        echo "x2=".$this->x2."</br>";
        echo "y2=".$this->y2."</br>";
    }
}

$l = new Line();
$l->setX1(24);
$l->setY1(3);
$l->setX2(4);
$l->setY2(56);

$l->display();

Class Triangle extends Line {
    protected $x3;
    protected $y3;

    public function setX3($x3)
    {
        settype($x3,"integer");
        $this->x3 = $x3;
    }
    public function getX3()
    {
        return $this->x3;
    }
    public function setY3($y3)
    {
        settype ($y3,"integer");
        $this->y3 = $y3;
    }
    public function getY3()
    {
        return $this->y3;
    }

    public function display()
    {
        parent::display(); // TODO: Change the autogenerated stub
        echo "x3=".$this->x3."</br>";
        echo "y3=".$this->y3."</br>";
    }
}

$tr = new Triangle();
$tr->setX1(4);
$tr->setY1(6);
$tr->setX2(5);
$tr->setY2(7);
$tr->setX3(8);
$tr->setY3(0);

$tr->display();

Class Rectangle extends Triangle{
    public $x4;
    public $y4;

    public function setX4($x4)
    {
        settype($x4,"integer");
        $this->x4 = $x4;
    }
    public function getX4()
    {
        return $this->x4;
    }
    public function setY4($y4)
    {
        settype ($y4,"integer");
        $this->y4 = $y4;
    }
    public function getY4()
    {
        return $this->y4;
    }

    public function display()
    {
        parent::display(); // TODO: Change the autogenerated stub
        echo "x4=".$this->x4."</br>";
        echo "y4=".$this->y4."</br>";
    }
}

$rect = new Rectangle();
$rect->setX1(0);
$rect->setY1(0);
$rect->setX2(0);
$rect->setY2(5);
$rect->setX3(5);
$rect->setY3(5);
$rect->setX4(5);
$rect->setY4(0);

$rect->display();