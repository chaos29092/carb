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
                    <li><a href="/">{{__('main.home')}}</a></li>
                    <li><a href="/contact-service">{{__('main.contact_service')}}</a></li>
                </ul>
            </nav>
        </div>
    </div>

    <div class="area content bg-white">
        <div class="grid-container">
            <div class="content-column grid-75 push-25 tablet-grid-75 tablet-push-25 mobile-grid-100 grid-parent">
                <h1>{{title_case($page->name)}}</h1>
                <div class="csc-default csc-space-after-20">
                    {!! $page->body !!}
                </div>
                <div class="csc-default">
                    <div class="csc-header csc-header-n4"><h1>{{__('main.contact_form')}}</h1></div>
                    <div class="csc-mailform3448">
                        <form action="/contact_submit" enctype="multipart/form-data" method="post">
                            {{csrf_field()}}
                            <input type="hidden" name="url" value="{{url()->current()}}">
                            <script>
                                document.write('<input type="hidden" name="clientId" value=\"',clientId,'">');
                            </script>
                            <ol>
                                <li class="csc-form-2 csc-form-element csc-form-element-header">
                                    <h2>{{__('main.request')}}</h2></li>
                                <li class="csc-form-3 csc-form-element csc-form-element-textblock">
                                    <i>{{__('main.specify_temperature')}}</i></li>
                                <li class="csc-form-4 csc-form-element csc-form-element-textarea">
                                    <label for="field-4">{{__('main.your_request')}}*</label>
                                    <textarea cols="40" id="field-4" name="message" rows="5"
                                              value=""></textarea>
                                </li>
                                <li class="csc-form-5 csc-form-element csc-form-element-header">
                                    <h2>{{__('main.contact_data')}}</h2>
                                </li>

                                <li class="csc-form-37 csc-form-element csc-form-element-textline">
                                    <label for="field-37">{{__('main.name')}}*</label>
                                    <input id="field-37" name="name" type="text">
                                </li>
                                <li class="csc-form-286 csc-form-element csc-form-element-textline">
                                    <label for="field-286">E-mail*</label>
                                    <input id="field-286" name="email" type="text">
                                </li>
                                <li class="csc-form-287 csc-form-element csc-form-element-textline">
                                    <label for="field-287">Phone*</label>
                                    <input id="field-287" name="phone" type="text">
                                </li>
                                <li class="csc-form-301 csc-form-element csc-form-element-textblock"><br></li>

                                <li class="csc-form-305 csc-form-element csc-form-element-submit">
                                    <input id="field-305" name="tx_form[formtype_mail]" type="submit" value="Submit">
                                </li>
                                {{--<li class="csc-form-306 csc-form-element csc-form-element-textblock"><sub>By sending--}}
                                {{--this form you agree that the entered data may be processed for the purpose of--}}
                                {{--your inquiry by Carbolite Gero or its affiliated sales partners and stored until--}}
                                {{--you revoke your consent. You may revoke your consent at any time. Details on how--}}
                                {{--we process user data are available in our <a--}}
                                {{--href="http://www.carbolite-gero.com/siteservice/privacy-policy/"--}}
                                {{--target="_blank" class="internal-link-new-window"--}}
                                {{--alt="Opens internal link in new window">privacy policy</a>.</sub></li>--}}
                            </ol>
                        </form>
                    </div>
                </div>
                <div class="csc-default">
                    <div>
                        <div class="rform rform-comment">
                            <div class="rform rform-inputrow">*{{__('main.mandatory_fields')}}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sidebar-column grid-25 pull-75 tablet-grid-25 tablet-pull-75 grid-parent">
                <nav class="nav">
                    <ul>
                        <li class="current"><a href="/contact-service">{{__('main.contact_service')}}</a></li>
                        {{--<li><a href="contact-service/contact-form/">Contact Form</a></li>--}}
                    </ul>
                </nav>
                <div class="tagcloud-container content"></div>
            </div>
        </div>
    </div>
@endsection