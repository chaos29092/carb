<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\ProductTag;
use App\Models\Article;
use App\Models\Category;
use App\Models\Gallery;
use App\Models\GalleryCategory;
use App\Models\GalleryTag;
use App\Models\Page;
use App\Models\Tag;
use Carbon\Carbon;
use App;
use URL;
use Cache;

class HomeController extends Controller
{
    public function index()
    {
        $page = page_cache(1);

        return view('index',compact('page'));
    }

    public function products()
    {
        $page = page_cache(2);

        return view('products',compact('page'));
    }

    public function products_category_1($category_1_slug)
    {
        $product_category = ProductCategory::whereSlug($category_1_slug)->firstOrFail();

        return view('products_category_1',compact('product_category'));
    }

    public function products_category_2($category_1_slug,$category_2_slug)
    {
        $product_category = ProductCategory::whereSlug($category_2_slug)->firstOrFail();
        $products = Product::where('product_category_id',$product_category->id)->orderBy('order', 'desc')->select('name','excerpt','image','price','product_code','slug','order')->get();

        return view('products_category_2',compact('product_category','products'));
    }

    public function product($category_1_slug,$category_2_slug,$product_slug)
    {
        $product = product_cache($product_slug);
        $products = Product::where('product_category_id',$product->product_category_id)->select('name','price','product_code','slug','order')->get();

        return view('product',compact('product','products'));
    }

    public function product_models($category_1_slug,$category_2_slug,$product_slug)
    {
        $product = product_cache($product_slug);
        $products = Product::where('product_category_id',$product->product_category_id)->select('name','price','product_code','slug','order')->get();

        return view('product_models',compact('product','products'));
    }

    public function product_downloads($category_1_slug,$category_2_slug,$product_slug)
    {
        $product = product_cache($product_slug);
        $products = Product::where('product_category_id',$product->product_category_id)->select('name','price','product_code','slug','order')->get();

        return view('product_downloads',compact('product','products'));
    }

    public function contact_service()
    {
        $page = page_cache(3);
        return view('contact_service',compact('page'));
    }

    public function company()
    {
        $page = page_cache(4);
        return view('company',compact('page'));
    }

    public function news()
    {
        $page = page_cache(6);
        $news = Article::where('category_id',1)->where('published_at','<',Carbon::now())->select('name','category_id','excerpt','image','slug')->paginate(20);

        return view('news',compact('page','news'));
    }

    public function new($slug)
    {
        $new = article_cache($slug);

        return view('new',compact('new'));
    }

    public function applications()
    {
        $page = page_cache(7);
        $product_tags = ProductTag::all();
        $galleries = Gallery::select('name','gallery_category_id','slug')->get();
        $gallery_categories = GalleryCategory::all();

        return view('applications',compact('galleries','gallery_categories','page','product_tags'));
    }

    public function application_category($category_slug)
    {
        $gallery_categories = GalleryCategory::all();
        $gallery_category = $gallery_categories->where('slug',$category_slug)->first();
        $galleries = Gallery::where('gallery_category_id',$gallery_category->id)->select('name','gallery_category_id','slug')->get();

        return view('application_category',compact('galleries','gallery_categories','gallery_category'));
    }

    public function application($category_slug,$gallery_slug)
    {
        $gallery_categories = GalleryCategory::all();
        $gallery_category = $gallery_categories->where('slug',$category_slug)->first();
        $galleries = Gallery::where('gallery_category_id',$gallery_category->id)->get();
        $gallery = $galleries->where('slug',$gallery_slug)->first();

        return view('application',compact('galleries','gallery_categories','gallery_category','gallery'));
    }

    public function product_tags()
    {
        $gallery_categories = GalleryCategory::all();
        $product_tags = ProductTag::all();

        return view('product_tags',compact('product_tags','gallery_categories'));
    }

    public function product_tag($tag_slug)
    {
        $gallery_categories = GalleryCategory::all();
        $product_tags = ProductTag::all();
        $product_tag = $product_tags->where('slug',$tag_slug)->first();
        $products = $product_tag->products()->select('name','slug','price','product_category_id','image','excerpt','product_code')->orderBy('product_category_id')->get();

        return view('product_tag',compact('gallery_categories','product_tags','product_tag','products'));
    }

    public function cache_clear()
    {
        Cache::flush();

        return redirect(url()->previous());
    }

    public function sitemap()
    {
        $sitemap = App::make('sitemap');
        $sitemap->setCache('laravel.sitemap', 1440);

        if (!$sitemap->isCached()) {
            // add item to the sitemap (url, date, priority, freq)
            $sitemap->add(URL::to('/'), page_cache(1), '1.0', 'daily');
            $sitemap->add(URL::to('company'), page_cache(4)->updated_at, '0.9', 'monthly');
            $sitemap->add(URL::to('contact-service'), page_cache(3)->updated_at, '0.9', 'monthly');
            $sitemap->add(URL::to('news'), page_cache(6)->updated_at, '0.9', 'daily');

            $articles = Article::where('published_at','<',Carbon::now())->orderBy('published_at', 'desc')->select('name','slug','published_at','updated_at')->get();
            foreach ($articles as $article){
                $sitemap->add(URL::to('news/detail/'.$article->slug),$article->updated_at,'0.7','monthly');
            }

            $products = Product::all();
            $product_categories = ProductCategory::all();
            foreach ($products as $product){
                $product_category = $product_categories->where('id',$product->product_category_id)->first();
                $product_category_parent = $product_categories->where('id',$product_category->parent_id)->first();
                $sitemap->add(URL::to('products/'.$product_category_parent->slug.'/'.$product_category->slug.'/'.$product->slug),$product->updated_at,'0.9','weekly');
            }

            $galleries = Gallery::all();
            $gallery_categories = GalleryCategory::all();
            foreach ($galleries as $gallery){
                $gallery_category = $gallery_categories->where('id',$gallery->gallery_category_id)->first();
                $sitemap->add(URL::to('applications/'.$gallery_category->slug.'/'.$gallery->slug),$gallery->updated_at,'0.6','weekly');
            }
        }

        // show your sitemap (options: 'xml' (default), 'html', 'txt', 'ror-rss', 'ror-rdf')
        return $sitemap->render('xml');
    }

    public function search(Request $request)
    {
        $search_words = $request->input('search');
        $collection = collect();
        $products = Product::search($search_words,null,true)->select('name','slug','product_code','price','excerpt','product_category_id')->take(6)->get();
        $product_categories = ProductCategory::all();

        foreach ($products as $product){
            $product_category = $product_categories->where('id',$product->product_category_id)->first();
            $product_category_parent = $product_categories->where('id',$product_category->parent_id)->first();
            $collection->push(["name"=>$product->name,"snippet"=>strip_tags($product->excerpt),"url"=>'products/'.$product_category_parent->slug.'/'.$product_category->slug.'/'.$product->slug]);
        }

        return $collection;
    }

    public function search_results(Request $request)
    {
        $search_words = $request->input('search');
        $products = Product::search($search_words,null,true)->select('name','slug','product_code','price','excerpt','product_category_id')->paginate(1);

        return view('search_results',compact('search_words','products'));
    }
}
