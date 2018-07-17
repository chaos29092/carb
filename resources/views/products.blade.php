@extends('master')

@section('seo_title')
    @if(!$page->seo_title)
        {{title_case($page->name)}}
    @else
        {{title_case($page->seo_title)}}
    @endif
@endsection
@section('meta_description')
    @if(!$page->meta_description)
        {{$page->excerpt}}
    @else
        {{$page->meta_description}}
    @endif
@endsection
@section('meta_keywords',$page->meta_keywords)

@section('content')
    <div class="area content bg-white fullwidth">
        <div class="content grid-100">
            <div class="csc-default">
                <div class="banner">
                    <div class="slideshow" data-speed="1600" data-interval="8000">
                        <div class="item"><img src="{{Voyager::image($page->image)}}"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid-container grid-parent">
            <nav class="breadcrumbs grid-75 push-25 tablet-grid-75 tablet-push-25 mobile-grid-100">
                <ul>
                    <li><a href="/">Home</a></li>
                    <li><a href="/products">Products</a></li>
                </ul>
            </nav>
        </div>
    </div>

    <div class="area content bg-white">
        <div class="grid-container">
            <div class="content-column grid-75 push-25 tablet-grid-75 tablet-push-25 mobile-grid-100 grid-parent">
                <h1>Carbolite Gero Furnaces and Ovens up to 3000 °C</h1>
                <div class="csc-default">
                    <ul class="toc font-small">
                        @foreach($product_categories->where('parent_id',null) as $product_category)
                            <li>
                                <a href="/products/{{$product_category->slug}}"><img
                                            src="{{Voyager::image($product_category->image)}}"><span>{{title_case($product_category->name)}}</span></a>
                                <ul>
                                    <li><strong>{{$product_category->sub_title}}</strong></li>
                                    @foreach($product_categories->where('parent_id',$product_category->id) as $product_category_1)
                                        <li><a href="/products/{{$product_category->slug}}/{{$product_category_1->slug}}">{{title_case($product_category_1->name)}}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                        @endforeach
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="sidebar-column grid-25 pull-75 tablet-grid-25 tablet-pull-75 grid-parent">
                <nav class="nav">
                    <ul>
                        <li class="current"><a href="/products">Products</a>
                        @foreach($product_categories->where('parent_id',null) as $product_category)
                        <li><a href="/products/{{$product_category->slug}}">{{title_case($product_category->name)}}</a>
                            <ul>
                                @foreach($product_categories->where('parent_id',$product_category->id) as $product_category_1)
                                <li><a href="/products/{{$product_category->slug}}/{{$product_category_1->slug}}">{{title_case($product_category_1->name)}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                        @endforeach
                    </ul>
                </nav>
                <div class="tagcloud-container content"></div>
            </div>
        </div>
    </div>
@endsection