<?php 

$name = $_POST['name'];
$affiliation = $_POST['affiliation'];
$email = $_POST['email'];
$type = $_POST['type'];
$dinner = $_POST['dinner'];
$comments = $_POST['comments'];

$to = $email;
$from = "From: COMSOC-2006 <ulleAAAillc.uva.nl>";
$bcc = "Bcc: COMSOC-2006 <ulleAAAillc.uva.nl>";
$subject = "[COMSOC-2006] Registration: ".$name;
$body = "Dear ".$name.",\n\n".
        "Thank you very much for registering for COMSOC-2006.\n".
        "We have received the following data from you:\n\n".
        "Name: ".$name."\n".
        "Affiliation: ".$affiliation."\n".
        "Email: ".$email."\n".
        "Type: ".$type."\n".
        "Dinner: ".$dinner."\n".
        "Comments: ".$comments."\n\n".
        "Should any of the above be incorrect, please let us know by replying to this email.\n".
        "We are looking forward to welcoming you in Amsterdam this December.\n\n".
        "Best wishes,\n\nUlle Endriss\n(for the COMSOC-2006 organisers)\n\n".
        "COMSOC-2006: http://www.illc.uva.nl/~ulle/COMSOC-2006/\n";

if (mail($to, $subject, $body, $from, $bcc)) 
{ 
  // echo("<p>Email sent successfully ...</p>");
  if (is_writable('registration/database.csv'))
  {
    $file = fopen('registration/database.csv','a');
    $date = date('d-m-Y');
    $data = '"'.$name.'", "'.$affiliation.'", '.$email.', '.$type.', '.$dinner.', "'.$comments.'", '.$date;
    fwrite($file,"$data\n");
    fclose($file);
    // echo("<p>Database updated successfully ...</p>");
    header('Location: http://staff.science.uva.nl/~ulle/COMSOC-2006/thanks.html');
  } else {
    echo("<p>Something went wrong (database). Please try again. 
          If this problem persists, then please register for COMSOC-2006 
          by sending an email to Ulle Endriss (ulle@illc.uva.nl) with 
          the information from the registration form.</p>");
  }
} else {
  echo("<p>Something went wrong (email). Please try again. 
        If this problem persists, then please register for COMSOC-2006 
        by sending an email to Ulle Endriss (ulle@illc.uva.nl) with 
        the information from the registration form.</p>");
}

?>