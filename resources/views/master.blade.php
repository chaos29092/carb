<!doctype html>
<html lang="{{config('app.locale')}}">
<head>
    <script>
        function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') c = c.substring(1);
                if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
            }
            return "";
        }

        function setCookie(c_name, value, expiredays) {
            var exdate = new Date()
            exdate.setDate(exdate.getDate() + expiredays)
            document.cookie = c_name + "=" + escape(value) +
                ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString()) + ";path=/"
        }

        function uuidv4() {
            return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
                var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
                return v.toString(16);
            });
        }

        clientId = getCookie('clientId');
        if (!clientId) {
            clientId = uuidv4();
        }
        setCookie('clientId', clientId, 730);
        dataLayer = [{
            'clientId': clientId
        }];
    </script>


    {{--@if(isset($related_products))--}}
    {{--<script>--}}
    {{--product_name = '{{$product->name}}';--}}
    {{--product_id = '{{$product->product_code}}';--}}
    {{--product_price = '{{$product->price}}';--}}
    {{--product_category = '{{$product->product_category_id}}';--}}
    {{--</script>--}}
    {{--@elseif(isset($products))--}}
    {{--<script>--}}
    {{--product_name = 'Category '+'{{$product_category->name}}';--}}
    {{--product_id = '{{$product_category->slug}}';--}}
    {{--product_price = '{{$products->avg('price')}}';--}}
    {{--product_category = '{{$product_category->name}}';--}}
    {{--</script>--}}
    {{--@elseif(isset($featured_products))--}}
    {{--<script>--}}
    {{--product_name = 'All';--}}
    {{--product_id = 'All';--}}
    {{--product_price = '{{$avg_price}}';--}}
    {{--product_category = 'All';--}}
    {{--</script>--}}
    {{--@else--}}
    {{--<script>--}}
    {{--product_name = 'All';--}}
    {{--product_id = 'All';--}}
    {{--product_price = '{{$avg_price}}';--}}
    {{--product_category = 'All';--}}
    {{--</script>--}}
    {{--@endif--}}
    {{--<!-- Google Tag Manager -->--}}
    {{--<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':--}}
    {{--new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],--}}
    {{--j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=--}}
    {{--'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);--}}
    {{--})(window,document,'script','dataLayer','GTM-P7L2WXC');</script>--}}
    {{--<!-- End Google Tag Manager -->--}}

    @yield('dataLayer_push')
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>@yield('seo_title') - {{title_case(setting('site.title'))}}</title>
    <meta name="description" content="@yield('meta_description')">
    <meta name="keywords" content="@yield('meta_keywords')">

    <meta http-equiv="Content-Language" content="{{config('app.locale')}}">
    <link rel="shortcut icon" href="{{Voyager::image(setting('site.favicon'))}}">

    <link rel="stylesheet" type="text/css" href="/css/stylesheet.css" media="all">
    <link rel="stylesheet" type="text/css" href="/css/site.css" media="screen">

    <script src="/js/site.js" type="text/javascript"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
</head>
<body>
<header>
    <div class="area widgets">
        <div class="grid-container">
            <div class="grid-25 tablet-grid-25 mobile-grid-75 logo-container grid-parent">
                <a class="logo" href="" style="background-image:url('{{Voyager::image(setting('site.logo'))}}'),linear-gradient(transparent, transparent)"><span>{{title_case(setting('site.title'))}}</span></a>
                <span class="logo-spacer"></span>
            </div>
            <div class="grid-75 tablet-grid-75 hide-on-mobile">
                <div class="widget search">
                    <a href="search/" class="glyphicons glyphicons-search"><span>{{__('main.search')}}</span></a>
                </div>
                <div class="widget language">
                    <ul>
                        <li class="label"><span><i class="glyphicons glyphicons-arrow-right"></i>English</span></li>
                        <li class="current"><a href=""><i class="glyphicons glyphicons-arrow-right"></i>English</a></li>
                        <li><a href="/"><i class="glyphicons glyphicons-arrow-right"></i>中文</a></li>
                        {{--<li><a href="https://www.carbolite-gero.de/"><i class="glyphicons glyphicons-arrow-right"></i>Deutsch</a></li>--}}
                    </ul>
                </div>
            </div>
            <div class="hide-on-desktop hide-on-tablet mobile-grid-25 grid-parent mobile-nav-button-container">
                <a class="mobile-nav-button">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
            </div>
        </div>
    </div>

    <div class="area nav-top hide-on-mobile">
        <div class="grid-container">
            <nav class="grid-75 push-25 tablet-grid-75 tablet-push-25 grid-parent">
                <ul>
                    <li><a href="/">{{__('main.home')}}</a></li>
                    <li><a href="/products">{{__('main.products')}}</a></li>
                    <li><a href="/applications">{{__('main.applications')}}</a></li>
                    <li><a href="/contact-service">{{__('main.contact_service')}}</a></li>
                    <li><a href="/news">{{__('main.news')}}</a></li>
                    <li><a href="/company">{{__('main.company')}}</a></li>
                    {{--<li><a href="downloads/">Downloads</a></li>--}}
                </ul>
            </nav>
        </div>
    </div>


</header>

@yield('content')


<footer>
    <div class="area nav-bottom">
        <div class="grid-container">
            <!-- First row -->
            <nav class="grid-20 tablet-grid-20 mobile-grid-50">
                {!! setting('index.footer_left_content') !!}
                <ul></ul>
                &nbsp;
            </nav>
            <nav class="grid-20 tablet-grid-20 mobile-grid-50">
                <ul>
                    <li><a href="contact-service/">Contact & Service</a></li>
                    <li><a href="contact-service/contact-form/">Contact Form</a></li>
                    <li><a href="contact-service/service-spare-parts/">Service & Spare Parts</a></li>
                    <li><a href="contact-service/online-warranty/">Online Warranty</a></li>
                </ul>
                &nbsp;
            </nav>
            <nav class="grid-20 tablet-grid-20 mobile-grid-50">
                <ul>
                    <li><a href="products/">Products</a></li>
                    <li><a href="products/ovens/">Ovens</a></li>
                    <li><a href="products/chamber-furnaces/">Chamber Furnaces</a></li>
                    <li><a href="products/tube-furnace-range/">Tube Furnaces</a></li>
                    <li><a href="products/vacuum-furnace/">Vacuum Furnaces</a></li>
                    <li><a href="products/application-specific-furnaces/">Application Specific Furnaces</a></li>
                    <li><a href="products/custom-furnaces-ovens/">Custom Designs</a></li>
                </ul>
                &nbsp;
            </nav>
            <nav class="grid-20 tablet-grid-20 mobile-grid-50">
                <ul>
                    <li><a href="applications/">Applications</a></li>
                    <li><a href="applications/heating-applications/">Heating Applications</a></li>
                    <li><a href="applications/industries/">Industries</a></li>
                </ul>
                &nbsp;
            </nav>
            <nav class="grid-20 tablet-grid-20 mobile-grid-50">
                <ul>
                    <li><a href="downloads/">Downloads</a></li>
                    <li><a href="downloads/operating-manuals/">Operating Manuals</a></li>
                    <li><a href="downloads/brochures/">Brochures</a></li>
                    <li><a href="downloads/application-reports/">Application Reports</a></li>
                    <li><a href="downloads/videos/">Videos</a></li>
                    <li><a href="downloads/miscellaneous/">Miscellaneous</a></li>
                </ul>
                &nbsp;
            </nav>
        </div>
        <div class="grid-container">
            <!-- Second row -->
            <div class="grid-20 tablet-grid-20 mobile-grid-50">
                <p><a href="http://www.verder-scientific.com/"><img src="/images/assets/footer-vs.png"></a></p>
                &nbsp;
            </div>
            <div class="grid-20 tablet-grid-20 mobile-grid-50">

                &nbsp;
            </div>
            <div class="grid-20 tablet-grid-20 mobile-grid-50">
                {{--<div class="content">--}}
                {{--<a href="https://advancedweb.verder-scientific.com/carbolite/login"--}}
                {{--class="btn inverted glyphicons glyphicons-globe btn-tiny" target="_blank">AdvancedWeb</a>--}}
                {{--</div>--}}
                {{--&nbsp;--}}
            </div>
            <div class="grid-20 tablet-grid-20 mobile-grid-50">
                <a href="https://www.youtube.com/channel/UCEIQnwMBVqsAEQ1xjsqkdHA" class="social youtube"
                   target="_blank">YouTube</a>
                &nbsp;
            </div>
            <div class="grid-20 tablet-grid-20 mobile-grid-50">
                <a href="https://www.linkedin.com/company/carbolite" class="social linkedin"
                   target="_blank">LinkedIn</a>
                &nbsp;
            </div>
        </div>
    </div>

    <div class="area footer">
        <div class="grid-container">
            <nav class="grid-20 tablet-grid-20 mobile-grid-33">
                <ul>
                    <li><a href="siteservice/imprint/">Imprint</a></li>
                </ul>
            </nav>
            <nav class="grid-20 tablet-grid-20 mobile-grid-33">
                <ul>
                    <li><a href="siteservice/privacy-policy/">Privacy Policy</a></li>
                </ul>
            </nav>
            <nav class="grid-20 tablet-grid-20 mobile-grid-33">
                <ul>
                    <li><a href="siteservice/terms-conditions/">Terms & Conditions</a></li>
                </ul>
            </nav>
            <nav class="grid-20 tablet-grid-20 mobile-grid-100">
                <ul>
                    <li><a href="siteservice/sitemap/">Sitemap</a></li>
                </ul>
            </nav>
            <div class="grid-20 tablet-grid-20 mobile-grid-100">
                <p>
                    <small>&copy; 2018 Carbolite Gero Ltd.</small>
                </p>
            </div>
        </div>
    </div>
</footer>


<div id="newsletterTeaser">
    <div class="content">
        <a class="close-teaser btn btn-notext btn-tiny glyphicons glyphicons-remove" href="/#"></a>
        <div class="content">
            <h2>Newsletter Registration</h2>
            <p>Exclusive information about events, applications and product innovations!</p>
            <a href="news/newsletter/subscribe/" class="btn btn-block btn-center">Sign Up</a>
        </div>
    </div>
</div>
<div id="vs-search-background"></div>
<div id="vs-search">
    <div id="vs-search-box">
        <form method="post" action="/search">
            <input type="text" name="search" value="" title="Please enter your search term..."
                   placeholder="Please enter your search term..."
                   autocomplete="off">
            <button type="submit" class="glyphicons glyphicons-search"><span>search</span></button>
        </form>
    </div>
    <div id="vs-search-progressbar"><span></span></div>
    <ul id="vs-search-results" data-ll-more="See more results..."></ul>
</div>
</body>
</html>