<?php
use PHPMailer\PHPMailer\PHPMailer;
require 'vendor/autoload.php';
$mail = new PHPMailer;
$mail->isSMTP();
$mail->SMTPDebug = 0;
$mail->Host = 'smtp.office365.com';
$mail->Port = 587;
$mail->SMTPAuth = true;
$mail->Username = 'username@nbgs.org';
$mail->Password = 'password';
$mail->setFrom('fromusername@nbgs.org', 'Admin');
$mail->addReplyTo('replytousername@nbgs.org', 'admin');
$mail->addAddress($_POST['sendto']);
$mail->Subject = 'OSHA Quiz results for'.$_POST['FirstName'].' '.$_POST['LastName'];
$mail->msgHTML($_POST['FirstName'].' '.$_POST['LastName'].': '.$_POST['score'].'% '.$_POST['TraineeID']);
$mail->AltBody = 'This is a plain text message body';
if (!$mail->send()) {
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'Message sent!';
}
?>
