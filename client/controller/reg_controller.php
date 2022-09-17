<?php
    $hname = 'localhost';
    $uname = 'root';
    $pass = '';
    $db = 'dors-website';
    $con = mysqli_connect($hname,$uname,$pass,$db);

    
    $full_name = $POST['full_name'];
    $date_of_birth = $POST['date_of_birth'];
    $email_add = $POST['email_add'];
    $mobile_number = $POST['mobile_number'];
    $address = $POST['address'];
    $password = $POST['password'];
    $confirm_password = $POST['confirm_password'];
    $imageSrc = $_FILES['avatar']['name'];
    $path = "images/client".basename($imageSrc);

    if(isset($_POST["submit"])){
        if(isset($full_name, 
                $date_of_birth,
                $email_add, 
                $mobile_number,
                $address,
                $password,
                $confirm_password,
                $imageSrc)){

            
        }
    }



?>