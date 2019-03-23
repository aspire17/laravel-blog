<?php
/**
 * 自定义函数
 */
if (! function_exists('p')) {
    /**
    * Dump the passed variables and end the script.
    *
    * @param  mixed
    * @return void
    */
    function p($args){
        echo '<pre>'.print_r($args,true).'</pre>';
    }
}