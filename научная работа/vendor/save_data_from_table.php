<?php
session_start();
require_once 'connect.php';
global $connect;
$i=0;
foreach ($_POST as $key => $value){
    $arr[$i]=$value;
    $id[$i]=substr($key, -1);
    $i++;
}
if (isset($arr)) {
    for ($i = 0; $i < count($arr); $i++) {
        $i = (int)$i;
        if (($i % 15) == 0) {
            $surname[$i] = $arr[$i];
        }
        if (($i % 15) == 1) {
            $name[$i] = $arr[$i];
        }
        if (($i % 15) == 2) {
            $module1[$i] = $arr[$i];
        }
        if (($i % 15) == 3) {
            $kr1_module1[$i] = $arr[$i];
        }
        if (($i % 15) == 4) {
            $kr2_module1[$i] = $arr[$i];
        }
        if (($i % 15) == 5) {
            $kr3_module1[$i] = $arr[$i];
        }
        if (($i % 15) == 6) {
            $module2[$i] = $arr[$i];
        }
        if (($i % 15) == 7) {
            $kr1_module2[$i] = $arr[$i];
        }
        if (($i % 15) == 8) {
            $kr2_module2[$i] = $arr[$i];
        }
        if (($i % 15) == 9) {
            $kr3_module2[$i] = $arr[$i];
        }
        if (($i % 15) == 10) {
            $module3[$i] = $arr[$i];
        }
        if (($i % 15) == 11) {
            $kr1_module3[$i] = $arr[$i];
        }
        if (($i % 15) == 12) {
            $kr2_module3[$i] = $arr[$i];
        }
        if (($i % 15) == 13) {
            $kr3_module3[$i] = $arr[$i];
        }
        if (($i % 15) == 14) {
            $exam[$i] = $arr[$i];
        }

    }
    $name = array_values($name);
    $surname = array_values($surname);
    $module1 = array_values($module1);
    $kr1_module1 = array_values($kr1_module1);
    $kr2_module1 = array_values($kr2_module1);
    $kr3_module1 = array_values($kr3_module1);
    $module2 = array_values($module2);
    $kr1_module2 = array_values($kr1_module2);
    $kr2_module2 = array_values($kr2_module2);
    $kr3_module2 = array_values($kr3_module2);
    $module3 = array_values($module3);
    $kr1_module3 = array_values($kr1_module3);
    $kr2_module3 = array_values($kr2_module3);
    $kr3_module3 = array_values($kr3_module3);
    $exam = array_values($exam);

    $id_group = $_SESSION['id_group'];

    $re2 = mysqli_query($connect, "SELECT `id` FROM students where`id_group`='$id_group' ORDER BY `surmane`");
    $number_student = mysqli_num_rows($re2);
    for ($i = 0; $i < $number_student; $i++) {
        $re3 = mysqli_fetch_assoc($re2);
        $id_student[$i] = $re3['id'];
        $update = mysqli_query($connect, "UPDATE `students` SET `name`='$name[$i]',`surmane`='$surname[$i]',`module1`='$module1[$i]',`kr1_module1`='$kr1_module1[$i]',`kr2_module1`='$kr2_module1[$i]',`kr3_module1`='$kr3_module1[$i]',`module2`='$module2[$i]',`kr1_module2`='$kr1_module2[$i]',`kr2_module2`='$kr2_module2[$i]',`kr3_module2`='$kr3_module2[$i]',`module3`='$module3[$i]',`kr1_module3`='$kr1_module3[$i]',`kr2_module3`='$kr2_module3[$i]',`kr3_module3`='$kr3_module3[$i]',`exam`='$exam[$i]' WHERE `id`='$id_student[$i]'");
        if ($update) {
            echo('update');
        }
    }
    if ((!$name[$number_student] == 0) or (!$surname[$number_student] == 0) or (!$module1[$number_student] == 0) or (!$module2[$number_student] == 0) or (!$module3[$number_student] == 0) or (!$exam[$number_student] == 0)) {
        // if ($name[$number_student] === 0) {
        //     $name[$number_student] = 'Введите имя';
        // }
        // if ($surname[$number_student] === 0) {
        //     $surname[$number_student] = 'Введите фамилию';
        // }
        echo($id_group);
        $insert = mysqli_query($connect, "INSERT INTO `students`( `name`, `surmane`, `id_group`, `module1`,`kr1_module1`,`kr2_module1`,`kr3_module1`, `module2`,`kr1_module2`,`kr2_module2`,`kr3_module2`, `module3`,`kr1_module3`,`kr2_module3`,`kr3_module3`, `exam`) VALUES ('$name[$number_student]','$surname[$number_student]','$id_group','$module1[$number_student]','$kr1_module1','$kr2_module1','$kr3_module1','$module2[$number_student]','$kr1_module2','$kr2_module2','$kr3_module2','$module3[$number_student]','$kr1_module3','$kr2_module3','$kr3_module3','$exam[$number_student]')");
        if ($insert) {
            $_SESSION['message']='Сохранено';
        }
    }
}
$url='Location:../groups.php'.'?'.'group_name='.$_SESSION['name_group'];
echo $_SESSION['name_group'];
header($url);


