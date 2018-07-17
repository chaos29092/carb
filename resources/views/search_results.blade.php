@extends('master')

@section('seo_title',"Search | ".$search_words)
@section('meta_description',"Search | ".$search_words)

@section('content')
    <div class="area content bg-white fullwidth id-2471761">
        <div class="content grid-100"></div>
        <div class="grid-container grid-parent">
            <nav class="breadcrumbs grid-75 push-25 tablet-grid-75 tablet-push-25 mobile-grid-100">
                <ul>
                    <li><a href="/">{{__('main.home')}}</a></li>
                </ul>
            </nav>
        </div>
    </div>

    <div class="area content bg-white">
        <div class="grid-container">
            <div class="content-column grid-75 push-25 tablet-grid-75 tablet-push-25 mobile-grid-100 grid-parent">
                <h1>{{__('main.search')}}</h1>
                <div class="csc-default">
                    <div class="search">
                        <form class="form search" method="GET" action="/search/results">
                            <h3>{{__('main.search_for')}}:</h3>
                            <table>
                                <tr>
                                    <td colspan="2">
                                        <input type="search" autocomplete="off" name="search" value="{{$search_words}}">
                                        <input type="submit" value="search">
                                    </td>
                                </tr>
                            </table>
                        </form>
                        @foreach($products as $product)
                            @php
                                $product_category = $product_categories->where('id',$product->product_category_id)->first();
                                $product_category_parent = $product_categories->where('id',$product_category->parent_id)->first();
                            @endphp
                        <table class="SearchResult">
                            <tr>
                                <td valign="top"><p>{{$loop->iteration}}.</p></td>
                                <td>
                                    <p><strong><a href="/products/{{$product_category_parent->slug}}/{{$product_category->slug}}/{{$product->slug}}"><b>{{title_case($product->name)}} - {{title_case($product_category->name)}}</a></strong></p>
                                    <p><small>{{strip_tags($product->excerpt)}}</small></p>
                                </td>
                            </tr>
                        </table>
                        @endforeach

                        <p>
                            @if($products->previousPageUrl())
                                <a href="{{$products->previousPageUrl().'&search='.$search_words}}">{{__('main.previous_page')}} |</a>
                            @endif
                            {{__('main.page')}} {{$products->currentPage()}}
                            @if($products->nextPageUrl())
                                | <a href="{{$products->nextPageUrl().'&search='.$search_words}}">{{__('main.next_page')}}</a>
                            @endif
                        </p>

                    </div>
                </div>
            </div>
            <div class="sidebar-column grid-25 pull-75 tablet-grid-25 tablet-pull-75 grid-parent">
                <div class="tagcloud-container content"></div>
            </div>
        </div>
    </div>
@endsection