<?php 
$con = mysqli_connect("localhost", "root", "", "api_db");
$response = array();
if($con){
    $sql = "select * from jogos";
    $result = mysqli_query($con,$sql);
    if($result){
        header("Content-Type: JSON");
        $i=0;
        while($row = mysqli_fetch_assoc($result)){
            $response[$i]['id'] = $row ['id'];
            $response[$i]['nome'] = $row ['nome'];
            $response[$i]['preco'] = $row ['preco'];
            $response[$i]['descricao'] = $row ['descricao'];
            $response[$i]['imagens_jogos'] = $row ['imagens_jogos'];
            $i++;
        }
        echo json_encode($response,JSON_PRETTY_PRINT);
    }
}
else{
    echo "DataBase connection failed";
}
?>