<!DOCTYPE html>
<html lang="en">

<head>
    @include('admin.css')
    <style>
        .title_deg{
            text-align:center;
            font-size:40px;
            font-weight:bold;
            padding-bottom:30px;
        }
        .tabel_deg{
            margin:auto;
            width:100%;
            border:1px solid white;
            text-align:center;
        }
        .th_deg{
            font-size:20px;
            background:skyblue;
        }
    </style>
</head>

<body>
    <div class="container-scroller">
        <!-- partial:partials/_sidebar.html -->
        @include('admin.sidebar')
        <!-- partial end -->

        <!-- header -->
        @include('admin.header')
        <!-- header end -->
        <div class="main-panel">
            <div class="content-wrapper">
                <h1 class="title_deg">All Orders</h1>

                <div style="padding-left:400px; padding-bottom: 30px">
                    <form action="{{url('search')}}" method="GET">

                        @csrf
                    
                        <input type="text" style="color:black;" name="search" placeholder="search something">
                        <input type="submit" value="search" class="btn btn-outline-primary">
                    </form>
                </div>

                <table class="tabel_deg">

                    <tr class="th_deg">
                        <th>Name</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Product Title</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Payment Status</th>
                        <th>Delivery Status</th>
                        <th>Image</th>
                        <th>Delivered</th>

                        
                    </tr>

                    @forelse($order as $order)
                    <tr>
                        <td>{{$order->name}}</td>
                        <td>{{$order->email}}</td>
                        <td>{{$order->address}}</td>
                        <td>{{$order->phone}}</td>
                        <td>{{$order->product_title}}</td>
                        <td>{{$order->quantity}}</td>
                        <td>{{$order->price}}</td>
                        <td>{{$order->payment_status}}</td>
                        <td>{{$order->delivery_status}}</td>
                        <td>
                            <img style="height:100px; width:100px" src="/product/{{$order->image}}" alt="">
                        </td>
                        <td>

                            @if($order->delivery_status=='processing')
                            <a class="btn btn-primary" onclick="return confirm('Are You Sure This Product Is Delivered!')" href="{{url('delivered',$order->id)}}">Delivered</a>

                            @else
                            <p style="color:lightgreen;">Delivered</p>
                            @endif

                        </td>
                    </tr>

                    @empty
                    <tr>
                        <td colspan="16">
                            No Data Found
                        </td>
                    </tr>
                    @endforelse

                </table>
            </div>
        </div>

        <!-- container-scroller -->
        <!-- plugins:js -->
        @include('admin.script')
        <!-- End custom js for this page -->
</body>

</html>