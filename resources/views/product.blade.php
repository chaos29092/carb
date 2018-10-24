@extends('master')

@section('seo_title')
    @if(!$product->seo_title)
        {{title_case($product->name)}}
    @else
        {{title_case($product->seo_title)}}
    @endif
@endsection
@section('meta_description')
    @if(!$product->meta_description)
        {{$product->excerpt}}
    @else
        {{$product->meta_description}}
    @endif
@endsection
@section('meta_keywords',$product->meta_keywords)

@section('content')
    <?php
            $the_product_category = $product_categories->where('id',$product->product_category_id)->first();
            $product_category_parent = $product_categories->where('id',$the_product_category->parent_id)->first();
    ?>
    <div class="area content bg-white fullwidth">
        <div class="grid-container grid-parent">
            <nav class="breadcrumbs grid-75 push-25 tablet-grid-75 tablet-push-25 mobile-grid-100">
                <ul>
                    <li><a href="/">{{__('main.home')}}</a></li>
                    <li><a href="/products">{{__('main.products')}}</a></li>
                    <li><a href="/products/{{$product_category_parent->slug}}">{{title_case($product_category_parent->name)}}</a></li>
                    <li><a href="/products/{{$product_category_parent->slug}}/{{$the_product_category->slug}}">{{title_case($the_product_category->name)}}</a></li>
                    <li><a href="/products/{{$product_category_parent->slug}}/{{$the_product_category->slug}}/{{$product->slug}}">{{title_case($product->name)}}</a></li>
                </ul>
            </nav>
        </div>
    </div>

    <div class="area content bg-white">
        <div class="grid-container">
            <div class="content-column grid-75 push-25 tablet-grid-75 tablet-push-25 mobile-grid-100 grid-parent">
                <div class="csc-default">
                    <h1 class="first">{{title_case($product->name)}}</h1>

                    <ul class="tabs">
                        <li class="current"><a href="/products/{{$the_product_category->slug}}/{{$product_category_parent->slug}}/{{$product->slug}}">{{__('main.features_options')}}</a></li>
                        <li><a href="/products/{{$the_product_category->slug}}/{{$product_category_parent->slug}}/{{$product->slug}}/models">{{__('main.technical_details')}}</a></li>
                    </ul>

                    <div class="product_details grid-parent tab-content">
                        <div class="grid-parent grid-66 tablet-grid-66 mobile-grid-100">
                            <div class="grid-50 tablet-grid-50 mobile-grid-100 grid-parent">
                                <a href="/contact-service?product={{$product->name}}"
                                   class="btn btn-block glyphicons glyphicons-message-empty">{{__('main.contact_us')}}</a>
                            </div>
                            <div class="grid-50 tablet-grid-50 mobile-grid-100 grid-parent pdf_form_container">
                                <a href="/contact-service/contact-form?product={{$product->name}}"
                                        class="btn btn-block glyphicons glyphicons-message-empty">{{__('main.request_a_quote')}}</a>
                            </div>
                        </div>

                        <div class="side">
                            <div class="mediaContainer">
                                <div class="media">
                                    @if($product->images)
                                        @foreach(json_decode($product->images) as $product_image)
                                            <a class="image zoom"
                                               href="{{Voyager::image($product_image)}}"
                                               data-id="{{Voyager::image($product_image)}}"
                                               title="{{$product->name}}" rel="product_images"
                                               data-zoom-content="&lt;picture class=&quot;zoomed&quot;&gt;&lt;source media=&quot;(min-width: 1200px)&quot; srcset=&quot;{{Voyager::image($product_image)}}&quot;&gt;&lt;img src=&quot;{{Voyager::image($product_image)}}&quot; srcset=&quot;{{Voyager::image($product_image)}}&quot;&gt;&lt;/picture&gt;">
                                                <picture>
                                                    <img src="{{Voyager::image($product_image)}}" data-id="{{Voyager::image($product_image)}}">
                                                </picture>
                                            </a>
                                        @endforeach
                                    @endif
                                    <div class="zoomIcon"></div>
                                </div>
                                <div class="thumbnails image">
                                    @if($product->images)
                                        @foreach(json_decode($product->images) as $product_image)
                                            <picture>
                                                <img src="{{Voyager::image($product_image)}}"
                                                     data-id="{{Voyager::image($product_image)}}"
                                                     alt="{{$product->name}}">
                                            </picture>
                                        @endforeach
                                    @endif
                                </div>
                                {{--<div class="thumbnails video">--}}
                                {{--<picture ><source media="(min-width: 1200px)" srcset="https://www.carbolite-gero.com/imgdb/-110x-max/sl/1cdd0d5b1e299d59a577bcc304b90a50.jpg 1x, https://www.carbolite-gero.com/imgdb/-220x-max/sl/1cdd0d5b1e299d59a577bcc304b90a50.jpg 2x, https://www.carbolite-gero.com/imgdb/-330x-max/sl/1cdd0d5b1e299d59a577bcc304b90a50.jpg 3x"><img src="https://www.carbolite-gero.com/imgdb/-88x-max/sl/1cdd0d5b1e299d59a577bcc304b90a50.jpg" data-id="/products/ovens/industrial-ovens/lgp-large-general-purpose-ovens/function-features/video_details/1/file_id/596619f9-e95c-4f52-93bb-7e948ac9dd60/lang/38" class="zoom video" srcset="https://www.carbolite-gero.com/imgdb/-88x-max/sl/1cdd0d5b1e299d59a577bcc304b90a50.jpg 1x, https://www.carbolite-gero.com/imgdb/-176x-max/sl/1cdd0d5b1e299d59a577bcc304b90a50.jpg 2x, https://www.carbolite-gero.com/imgdb/-264x-max/sl/1cdd0d5b1e299d59a577bcc304b90a50.jpg 3x"></picture>--}}
                                {{--</div>--}}
                            </div>
                        </div>

                        {!! $product->body !!}

                    </div>
                    <div class="tab-loading"></div>
                </div>
            </div>
            <div class="sidebar-column grid-25 pull-75 tablet-grid-25 tablet-pull-75 grid-parent">
                <nav class="nav">
                    <ul>
                        <li><a href="/products">Products</a>
                        @foreach($product_categories->where('parent_id',null) as $product_category_1)
                            <li @if(str_contains(url()->current(),$product_category_1->slug)) class="active" @endif><a href="/products/{{$product_category_1->slug}}">{{title_case($product_category_1->name)}}</a>
                                @if(str_contains(url()->current(),$product_category_1->slug))
                                    <ul>
                                        @foreach($product_categories->where('parent_id',$product_category_1->id) as $product_category_2)
                                            <li @if(str_contains(url()->current(),$product_category_2->slug)) class="active" @endif><a href="/products/{{$product_category_1->slug}}/{{$product_category_2->slug}}">{{title_case($product_category_2->name)}}</a>
                                                @if(str_contains(url()->current(),$product_category_2->slug))
                                                    <ul>
                                                        @foreach($products as $product)
                                                        <li @if(ends_with(url()->current(),$product->slug)) class="active" @endif>
                                                            <a href="/products/{{$the_product_category->slug}}/{{$product_category_parent->slug}}/{{$product->slug}}">{{title_case($product->name)}}</a></li>
                                                        @endforeach
                                                    </ul>
                                                @endif
                                            </li>
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