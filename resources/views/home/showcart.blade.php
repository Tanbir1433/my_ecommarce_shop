<!DOCTYPE html>
<html>

<head>
    <!-- Basic -->

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="images/favicon.png" type="">
    <title>Famms - Fashion HTML Template</title>
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="home/css/bootstrap.css" />
    <!-- font awesome style -->
    <link href="home/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="home/css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="home/css/responsive.css" rel="stylesheet" />
    <style>
    .center {
        margin: auto;
        width: 65%;
        text-align: center;
        padding: 30px;
    }

    table,
    th,
    td {
        border: 1px solid;
    }

    .th_deg {
        font-size: 25px;
        padding: 5px;
        background: skyblue;
    }

    .img_deg {
        height: 100px;
        width: 100px;
    }

    .total_deg {
        font-size: 20px;
        padding: 40px;
    }
    </style>
</head>

<body>
    <div class="hero_area">
        <!-- hearder section start -->
        @include('home.header')
        <!-- header section end -->

        @if(session()->has('message'))

        <div class="alert alert-success">

            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
            {{session()->get('message')}}

        </div>

        @endif

        <div class="center">
            <table>
                <tr>
                    <th class="th_deg">Product Title</th>
                    <th class="th_deg">Product Quantity</th>
                    <th class="th_deg">Price</th>
                    <th class="th_deg">Image</th>
                    <th class="th_deg">Action</th>
                </tr>

                <?php $totalprice=0; ?>

                @foreach($cart as $cart)
                <tr>
                    <td>{{$cart->product_title}}</td>
                    <td>{{$cart->quantity}}</td>
                    <td>{{$cart->price}}</td>
                    <td><img class="img_deg" src="/product/{{$cart->image}}" alt=""></td>
                    <td><a class="btn btn-danger" onclick="return confirm('Are You Sure to Remove This Product!')"
                            href="{{url('remove_cart',$cart->id)}}">Delete</a></td>
                </tr>

                <?php $totalprice=$totalprice + $cart->price ?>

                @endforeach

            </table>

            <div>
                <h2 class="total_deg">Total Price : {{$totalprice}}</h2>
            </div>

            <div>
                <h1 style="font-size:30px; padding-bottom:15px">Proceed to Order</h1>
                <a href="{{url('cash_order')}}" class="btn btn-primary">Cash On Delivery</a>
                <a href="{{url('stripe',$totalprice)}}" class="btn btn-primary">Pay Using Card</a>

            </div>

        </div>

        <div class="cpy_">
            <p class="mx-auto"> <a href="https://html.design/"> Html Templates</a><br>

                Design By <a href="https://themewagon.com/" target="_blank">Tanbir Hossain</a>

            </p>
        </div>
        <!-- jQery -->
        <script src="home/js/jquery-3.4.1.min.js"></script>
        <!-- popper js -->
        <script src="home/js/popper.min.js"></script>
        <!-- bootstrap js -->
        <script src="home/js/bootstrap.js"></script>
        <!-- custom js -->
        <script src="home/js/custom.js"></script>
</body>

</html>