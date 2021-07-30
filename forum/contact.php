<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <style>
    .container {
        min-height: 85vh;
    }
    </style>
    <title>Welcome to iForum - Coding Forums</title>
</head>

<body>
    <?php include 'partials/_dbconnect.php';?>
    <?php include 'partials/_header.php';?>
    <?php
       $shawAlert = false;
       $method = $_SERVER['REQUEST_METHOD'];
       if($method == 'POST'){
           // insert thread into db
            $con_name = $_POST['name'];
            $con_email = $_POST['email'];
            $con_mass = $_POST['message'];
            $con_use_id = $_POST['user'];
            $sql = "INSERT INTO `contact_us` (`contact_name`, `contact_email`, `contact_message`, `contact_user_id`, `contact_time`) VALUES ('$con_name', '$con_email', '$con_mass', '$con_use_id', CURRENT_TIMESTAMP)"; 
            $result = mysqli_query($conn, $sql);
            $sql2 = "SELECT * FROM `users` WHERE `user_email`='$con_use_id'";
            $result2 = mysqli_query($conn, $sql2);
            $shawAlert = true;
            if($shawAlert){
                echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Success!</strong>Succrss!!!.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>';
            }
            else{
                echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Errot!</strong> There is a Problem.
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>';
            }
        }
       
    ?>
    <div class="container my-3" style="">
        <h1 class="text-center">Contact us</h1>
        <?php
        if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']==true){
            echo '
                <form action="'. $_SERVER["REQUEST_URI"]. '" method="post">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Email address</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter Your Name">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Email address</label>
                        <input type="text" class="form-control" id="email" name="email" placeholder="Enter Your Email">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Your Message</label>
                        <textarea class="form-control" id="message" name="message" rows="3"></textarea>
                    </div>
                    <input type="hidden" name="user" value="" >
                    <button class="btn btn-success w-100">Submit</button>
                </form>
            </div>';
        }
        else{
        echo '<div class="container">
        <p class="text-center m-5">You are not Login please login for post Threads</p>
        </div>';
        }
    ?>
        <?php include 'partials/_footer.php';?>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
        </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
            integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
        </script>
</body>

</html>