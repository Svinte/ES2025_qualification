@extends('layouts.app')

@section('title', 'Store')

@section('content')
    <h1>Products</h1>
    @foreach($products as $product)
        <section class="item">
            <a href="/products/{{ $product->name }}">
                <h2>{{ $product->name }}</h2>
                <img src="/images/products/{{ $product->path }}" alt="" class="item__product">
            </a>
        </section>
    @endforeach
@endsection