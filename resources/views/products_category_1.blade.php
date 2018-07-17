@extends('master')

@section('seo_title')
    @if(!$product_category->seo_title)
        {{title_case($product_category->name)}}
    @else
        {{title_case($product_category->seo_title)}}
    @endif
@endsection
@section('meta_description')
    @if(!$product_category->meta_description)
        {{$product_category->excerpt}}
    @else
        {{$product_category->meta_description}}
    @endif
@endsection
@section('meta_keywords',$product_category->meta_keywords)

@section('content')
    <div class="area content bg-white fullwidth">
        <div class="grid-container grid-parent">
            <nav class="breadcrumbs grid-75 push-25 tablet-grid-75 tablet-push-25 mobile-grid-100">
                <ul>
                    <li><a href="/">Home</a></li>
                    <li><a href="/products">Products</a></li>
                    <li><a href="/products/{{$product_category->slug}}">{{$product_category->name}}</a></li>
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
                        @foreach($product_categories->where('parent_id',$product_category->id) as $product_category_2)
                            <li>
                                <a href="/products/{{$product_category->slug}}/{{$product_category_2->slug}}"><img
                                            src="{{Voyager::image($product_category_2->image)}}"><span>{{title_case($product_category_2->name)}}</span></a>
                            </li>
                        @endforeach
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="sidebar-column grid-25 pull-75 tablet-grid-25 tablet-pull-75 grid-parent">
                <nav class="nav">
                    <ul>
                        <li><a href="/products">Products</a>
                        @foreach($product_categories->where('parent_id',null) as $product_category_1)
                        <li @if(ends_with(url()->current(),$product_category_1->slug)) class="current" @endif><a href="/products/{{$product_category_1->slug}}">{{title_case($product_category_1->name)}}</a>
                            @if(ends_with(url()->current(),$product_category_1->slug))
                            <ul>
                                @foreach($product_categories->where('parent_id',$product_category_1->id) as $product_category_2)
                                <li><a href="/products/{{$product_category_1->slug}}/{{$product_category_2->slug}}">{{title_case($product_category_2->name)}}</a></li>
                                @endforeach
                            </ul>
                            @endif
                        </li>
                        @endforeach
                    </ul>
                </nav>
                <div class="tagcloud-container content"></div>
            </div>
        </div>
    </div>
@endsection