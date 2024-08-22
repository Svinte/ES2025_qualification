@extends('layouts.app')

@section('title', 'Dashboard')

@section('content')
    <h1>Admin dashboard</h1>

    <div>
        <h2>Incoming orders</h2>
        <section id="order-list">
            @foreach($orders as $order)
                <section>
                    <a href="/admin/order/{{ $order->id }}">
                        <p>Order: <b>{{ $order->id }}</b></p>
                        <p>Status: <b>{{ $order->status }}</b></p>
                        @foreach($order->items as $item)
                            <section class="item">
                                <img src="/images/products/{{ $item->product?->path }}" alt="" class="item__product">
                                <img src="/images/design_symbols/{{ $item->symbol?->path }}" alt="" class="item__symbol">
                            </section>
                        @endforeach
                    </a>
                </section>
            @endforeach
        </section>
    </div>

    <div>
        <h2>Products</h2>
        <section id="product-list">

        </section>
    </div>

    <div>
        <h2>Design symbols</h2>
        <section id="design-symbols-list">

        </section>
    </div>
@endsection