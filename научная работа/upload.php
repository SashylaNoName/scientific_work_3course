<?php
require 'simplexlsx-master/src/SimpleXLSX.php';
use Shuchkin\SimpleXLSX;

// Проверка наличия загруженного файла и id_group
if (isset($_FILES['excel_file']) && $_FILES['excel_file']['error'] === UPLOAD_ERR_OK && isset($_POST['id_group'])) {
    // Временное имя загруженного файла
    $fileTmpPath = $_FILES['excel_file']['tmp_name'];
    
    // Путь к файлу Excel
    $xlsxFile = $fileTmpPath;

    // Соединение с базой данных
    $connect = mysqli_connect('localhost', 'root', '', 'scientific_work');

    // Проверка подключения
    if (!$connect) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Получение id_group из POST и экранирование
    $id_group = mysqli_real_escape_string($connect, $_POST['id_group']); 

    // Чтение данных из файла Excel
    if ($xlsx = SimpleXLSX::parse($xlsxFile)) {
        $rows = $xlsx->rows();

        // Пропустить первую строку (заголовки)
        array_shift($rows);

        // Подготовка SQL-запроса
        $stmt = mysqli_prepare($connect, 'INSERT INTO students (id_group, surmane, name, module1,kr1_module1, kr2_module1, kr3_module1, module2,kr1_module2, kr2_module2, kr3_module2, module3, kr1_module3, kr2_module3, kr3_module3, exam  ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)');

        foreach ($rows as $row) {
            // Убедитесь, что строка имеет нужное количество элементов
            if (is_array($row) && count($row) >= 15) {
                // Извлечение значений из строки
                $surname = isset($row[0]) ? $row[0] : null;
                $name = isset($row[1]) ? $row[1] : null;
                $module1 = isset($row[2]) ? $row[2] : null;
                $kr1_module1 = isset($row[3]) ? $row[3] : null;
                $kr2_module1 = isset($row[4]) ? $row[4] : null;
                $kr3_module1 = isset($row[5]) ? $row[5] : null;
                $module2 = isset($row[6]) ? $row[6] : null;
                $kr1_module2 = isset($row[7]) ? $row[7] : null;
                $kr2_module2 = isset($row[8]) ? $row[8] : null;
                $kr3_module2 = isset($row[9]) ? $row[9] : null;
                $module3 = isset($row[10]) ? $row[10] : null;
                $kr1_module3 = isset($row[11]) ? $row[11] : null;
                $kr2_module3 = isset($row[12]) ? $row[12] : null;
                $kr3_module3 = isset($row[13]) ? $row[13] : null;
                $exam = isset($row[14]) ? $row[14] : null;
                
               
               

                // Привязка параметров и выполнение запроса
                mysqli_stmt_bind_param($stmt, 'isssssssssssssss', $id_group, $surname, $name, $module1, $kr1_module1, $kr2_module1, $kr3_module1, $module2,$kr1_module2, $kr2_module2, $kr3_module2, $module3,$kr1_module3, $kr2_module3, $kr3_module3, $exam  );
                mysqli_stmt_execute($stmt);
            }
        }

        mysqli_stmt_close($stmt);
        mysqli_close($connect);

        echo "Data imported successfully!";
    } else {
        echo "Error reading the Excel file.";
    }
} else {
    echo "Error: " . $_FILES['excel_file']['error'] . " or missing id_group.";
}
?>
