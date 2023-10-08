<?php 
    require_once __DIR__ . '/vendor/autoload.php';

    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $message = $_POST['message'];

    use Mpdf\Mpdf;

    $mpdf = new Mpdf();

    $data = '';

    $data .= '<h1>Detalhes da sua Fatura </h1>';

    $data .= '<strong>Primeiro nome: </strong>' . $fname . '<br />';
    $data .= '<strong>Apelido: </strong>' . $lname . '<br />';
    $data .= '<strong>Email: </strong>' . $email . '<br />';
    $data .= '<strong>Telemóvel: </strong>' . $phone . '<br />';
    $data .= '<strong>Produtos: </strong>' . $message . '<br />';
    if($message){
        $data .= '<br / <strong> Message </strong> <br />' .$message;
    }
    $mpdf->WriteHTML($data);
    $mpdf->Output('myfile.pdf', 'D');
?>