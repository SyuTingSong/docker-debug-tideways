<?php
ini_set('display_errors', 'on');
class A {
    public $a;
    public $b = 123;
    public function __sleep() {
        return ['b'];
    }
}
$a = new A();
$a->a = $a;
$buffer = swoole_serialize::pack($a);
echo strlen($buffer), "\n";

