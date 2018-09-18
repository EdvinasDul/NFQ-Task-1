<!DOCTYPE html>
<?php
    session_start();
    $connect = mysqli_connect("localhost", "root", "", "nfq_task");
    if(isset($_POST["add_to_cart"]))
    {
        if(isset($_SESSION["shopping_cart"]))
        {
            $item_array_id = array_column($_SESSION["shopping_cart"], "item_id");
            if(!in_array($_GET["id"], $item_array_id))
            {
                $count = count($_SESSION["shopping_cart"]);
                $item_array = array (
                'item_id' => $_GET["id"],
                'item_name' => $_POST["hidden_name"],
                'item_price' => $_POST["hidden_price"],
                'item_quantity' => $_POST["quantity"]
                );
                $_SESSION["shopping_cart"][$count] = $item_array;
            }
            else
            {
                echo '<script>alert("Item Already Added")</script>';
                echo '<script>window.location="index.php"</script>';
            }
        }
        else
        {
            $item_array = array (
                'item_id' => $_GET["id"],
                'item_name' => $_POST["hidden_name"],
                'item_price' => $_POST["hidden_price"],
                'item_quantity' => $_POST["quantity"]
            );
            $_SESSION["shopping_cart"][0] = $item_array;
        }
    }
    
    if(isset($_GET["action"]))
    {
        if($_GET["action"] == "delete")
        {
            foreach($_SESSION["shopping_cart"] as $keys => $values)
            {
                if($values["item_id"] == $_GET["id"])
                {
                    unset($_SESSION["shopping_cart"][$keys]);
                    //echo '<script>alert("Item Removed")</script>';
                    echo '<script>window.location="index.php"</script>';
                }
            }
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
        <script>
            function formSubmit(){
                $.ajax({
                    type: 'POST',
                    url: 'place_order.php',
                    data: $('#formBox').serialize(),
                    success:function(response){$('#success').html(response);
                    }
                });
                var form=document.getElementById('formBox').reset();
                return false;
            }
        </script>
    </head>
    <body>
        <br/>
        <br/>
        <div class="container" style="width: 700px;">
            <h3 align="center"><a href="index.php">Gentlemen's Watches Shopping Cart</a></h3><br/>
            <div class="row justify-content-md-center">
                <div class="col-md-offset-3 col-md-3">
                    <a href="index.php" class="btn btn-success">Make an Order</a>
                </div>
                <div class="col-md-4">
                    <a href="orders_list.php" class="btn btn-success">Go to Orders List</a>
                </div>
            </div>
            <?php
            $query = "select * from products order by id asc";
            $result = mysqli_query($connect, $query);
            if(mysqli_num_rows($result) > 0)
                {
                while($row = mysqli_fetch_array($result))
                        {
                    ?>
            <div class="col-md-4" style="margin-top: 20px;">
                <form method="post" action="index.php?action=add&id=<?php echo $row["id"];?>">    
                    <div style="border:1px solid #333; background-color:#f1f1f1; border-radius:5px; padding:16px;" align="center">
                        <img src="<?php echo $row["image"];?>" class="img-responsive"/><br/>
                        <h4 class="text-info"><?php echo $row["name"];?></h4>
                        <h4 class="text-danger">$ <?php echo $row["price"]; ?></h4>
                        <input type="text" name="quantity" class="form-control" value="1"/>
                        <input type="hidden" name="hidden_name" value="<?php echo $row["name"]; ?>"/>
                        <input type="hidden" name="hidden_price" value="<?php echo $row["price"]; ?>"/>
                        <input type="submit" name="add_to_cart" style="margin-top:5px;" class="btn btn-success" value="Add to Cart"/>
                    </div>
                </form>
            </div>
            <?php
                }
            }
            ?>
            <div style="clear:both"></div>
            <br/>
            <h3>Order Details</h3>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tr>
                        <th width="40%">Item Name</th>
                        <th width="10%">Quantity</th>
                        <th width="20%">Price</th>
                        <th width="15%">Total</th>
                        <th width="5%">Action</th>
                    </tr>
                    <?php
                    if(!empty($_SESSION["shopping_cart"]))
                    {
                        $total = 0;
                        foreach($_SESSION["shopping_cart"] as $keys => $values)
                        {
                            ?>
                    <tr>
                        <td><?php echo $values["item_name"]; ?></td>
                        <td><?php echo $values["item_quantity"]; ?></td>
                        <td>€ <?php echo $values["item_price"]; ?></td>
                        <td><?php echo number_format($values["item_quantity"] * $values["item_price"], 2) ?></td>
                        <td><a href="index.php?action=delete&id=<?php echo $values["item_id"];?>"><span class="text-danger">Remove</span></a></td>
                    </tr>     
                    <?php
                            $total = $total + ($values["item_quantity"] * $values["item_price"]);
                        }
                        ?>
                    <tr>
                        <td style="font-weight: bold;" colspan="3" align="right">Total</td>
                        <td style="font-weight: bold;" align="right">€ <?php echo number_format($total, 2); ?></td>
                        <td></td>
                    </tr>
                    <?php
                    }
                    ?>
                </table>
            </div>
            <div style="clear:both"></div>
            <br/>
            <h3>Your Details and Shipping Address</h3>
            <form action="place_order.php" method="post" id="formBox" onsubmit="return formSubmit();">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <hr/>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" name="email" id="email" class="form-control" placeholder="name@email.com">
                                    
                                </div>
                                <div class="form-group">
                                    <label for="name">Full name</label>
                                    <input type="text" name="name" id="name" class="form-control" placeholder="Name Surname">
                                </div>
                                <div class="form-group">
                                    <br/>
                                    <button type="submit" class="btn btn-success btn-lg">Place your order</button>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <input type="text" name="address" id="address" class="form-control" placeholder="Street 1">
                                </div>
                                <div class="form-group">
                                    <label for="city">City</label>
                                    <input type="text" name="city" id="city" class="form-control" placeholder="City">
                                </div>
                                <div class="form-group">
                                    <label for="postal_code">Postal code</label>
                                    <input type="text" name="postal_code" id="postal_code" class="form-control" placeholder="LT-11111">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <hr/>
            </form>
        </div>
        <br/>
        <br/>
    </body>
</html>
