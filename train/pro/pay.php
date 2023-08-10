<?php
  require_once 'session.php';
  require_once '../constants.php';
  if (!isset($_SESSION['amount'], $_SESSION['email'])) {
    @session_destroy();
    header("Location: ../");
    exit;
  }



  $amount = $_SESSION['amount'];
  $email = $_SESSION['email'];
  
  // Process the payment
  // Here, you can perform any necessary logic or database updates to mark the payment as successful
  
  // Redirect to a success page
  header("Location: individual.php?page=pay&success=1");
  exit;
  ?>
 
  
  
  
  
  
  
  