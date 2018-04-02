<?php

function debug($variable){
    echo '<li>' . print_r($variable, true) . '</li>';
}

function token($length) {
    $strcontent = "0123456789azertyuiopqsdfghjklmwxcvbnAZERTYUIOPQSDFGHJKLMWXCVBN";
    return substr(str_shuffle(str_repeat($strcontent, $length)), 0, $length);
}

