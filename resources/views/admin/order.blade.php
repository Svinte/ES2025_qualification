@extends('layouts.app')

@section('title', "Order: {$order->id}")

@section('content')
    <section>
        <h1>Order</h1>
        <p>ID: <b>{{ $order->id }}</b></p>
        <p>Status: <b>{{ $order->status }}</b></p>
        
        <h2>Customer</h2>
        <p>Name: <b>{{ $order->customer->first_name }} {{ $order->customer->last_name }}</b></p>
        <p>Email: <b>{{ $order->customer->email }}</b></p>
    </section>
    
    <form action="">
        <h2>Edit order:</h2>
        <select name="" id=""></select>
    </form>
@endsection