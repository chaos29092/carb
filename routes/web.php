<?php

Route::get('/', 'HomeController@index');
Route::get('products','HomeController@products');
Route::get('products/{category_1_slug}','HomeController@products_category_1');
Route::get('products/{category_1_slug}/{category_2_slug}','HomeController@products_category_2');
Route::get('products/{category_1_slug}/{category_2_slug}/{product_slug}','HomeController@product');
Route::get('products/{category_1_slug}/{category_2_slug}/{product_slug}/models','HomeController@product_models');
//Route::get('products/{category_1_slug}/{category_2_slug}/{product_slug}/downloads','HomeController@product_downloads');

Route::get('contact-service', 'HomeController@contact_service');
Route::post('contact_submit', 'MailController@submit');
Route::get('submit_ok', 'MailController@submit_ok');
Route::get('company', 'HomeController@company');

Route::get('news', 'HomeController@news');
Route::get('news/newsletter', 'HomeController@newsletter');
Route::get('news/detail/{slug}', 'HomeController@new');

Route::get('applications', 'HomeController@applications');
Route::get('applications/{category_slug}', 'HomeController@application_category');
Route::get('applications/{category_slug}/{gallery_slug}', 'HomeController@application');

Route::get('product-tags/{tag_slug}','HomeController@product_tag');
Route::get('product-tags','HomeController@product_tags');

Route::get('sitemap.xml', 'HomeController@sitemap');
Route::get('cache_clear','HomeController@cache_clear');

Route::get('search/results', 'HomeController@search_results');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
