<?php
    session_start();
    $connect = mysqli_connect("localhost", "root", "", "nfq_task");
    // Check connection
    if ($connect->connect_error) {
        die("Connection failed: " . $connect->connect_error);
    } 
    
    if($_GET){
        if($_GET["action"] == "delete"){
            $delid=$_GET["id"];
            $query =("DELETE FROM `orders` WHERE id = '$delid'");
            $result = mysqli_query($connect,$query);
            header("Location: orders_list.php");
            die();
        }
    }
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Gentlemen's watches</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <br/>
        <br/>
        <div class="container" style="width: 1200px;">
            <h3 align="center"><a href="index.php">Gentlemen's Watches Shopping Cart</a></h3><br/>
            <div class="row justify-content-md-center">
                <div class="col-md-offset-4 col-md-2" style="padding-left: 40px;">
                    <a href="index.php" class="btn btn-success">Make an Order</a>
                </div>
                <div class="col-md-4">
                    <a href="orders_list.php" class="btn btn-success">Go to Orders List</a>
                </div>
            </div>
            <h3>Orders List</h3>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tr>
                        <th width="3%">ID</th>
                        <th width="22.5%">Customer Name</th>
                        <th width="22.5%">Email</th>
                        <th width="10%">City</th>
                        <th width="10%">Address</th>
                        <th width="10%">Postal Code</th>
                        <th width="7%">Total</th>
                        <th width="15%">Created at</th>
                    </tr>
                    <?php
                    $query = "select * from orders order by id asc";
                    $result = mysqli_query($connect, $query);
                    if (mysqli_num_rows($result) > 0) {
                    // output data of each row
                        while($row = mysqli_fetch_array($result)) {
                        ?>
                    <tr>
                        <td><?php echo $row["id"]; ?></td>
                        <td><?php echo $row["customer_name"]; ?></td>
                        <td><?php echo $row["email"]; ?></td>
                        <td><?php echo $row["city"]; ?></td>
                        <td><?php echo $row["address"]; ?></td>
                        <td><?php echo $row["postal_code"]; ?></td>
                        <td><?php echo $row["total"]; ?></td>
                        <td><?php echo $row["created_at"]; ?></td>
                        <td><a href="orders_list.php?action=delete&id=<?php echo $row["id"];?>"><span class="text-danger">Remove</span></a></td>
                    </tr>   
                    <?php
                        }
                    } else {
                        echo "0 results";
                    }
                    ?>
                </table>
            </div>
        </div>
        <br/>
        <br/>
    </body>
</html>