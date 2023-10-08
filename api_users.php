<?php 
$con = mysqli_connect("localhost", "root", "", "api_db");
$response = array();
if($con){
    $sql = "select * from users";
    $result = mysqli_query($con,$sql);
    if($result){
        header("Content-Type: JSON");
        $i=0;
        while($row = mysqli_fetch_assoc($result)){
            $response[$i]['id'] = $row ['id'];
            $response[$i]['username'] = $row ['username'];
            $response[$i]['password'] = $row ['password'];
            $i++;
        }
        echo json_encode($response,JSON_PRETTY_PRINT);
    }
}
else{
    echo "DataBase connection failed";
}
?>