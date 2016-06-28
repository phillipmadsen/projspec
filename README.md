my useful links doc




https://www.youtube.com/watch?v=atlrmyhrCzk&index=10&list=PLl0rlrKS77MpgHg17oW4AvLGUXt8ntVDy





http://solutionoptimist.com/2013/12/28/awesome-github-tricks/


public function edit($id)
    {
        $story = Story::find($id);
        $categories = Category::lists('name','id');
        return view('stories.edit')->with('story', $story)->with('categories', $categories);
    }



{{ Form::select('users', Fully\Models\User::where('user_id', '=', 'article->id')->lists('name', 'id')), $users, array('class' => 'form-control') }}




{{ Form::select('categories', Category::where('article_id', '=', 'story->id')->lists('name', 'id')), $categories, array('class' => 'form-control') }}
{{ Form::select('categories', \App\Category::where('story_id', '=', 'story->id')->lists('name', 'id')), $categories, array('class' => 'form-control') }}


https://laracasts.com/@michalis


@if($product->variations)
<div class="tab-content clearfix" id="tabs-2">
 <table class="table table-striped table-bordered">
        <tbody>
        @foreach($product->variations as $variation)
            <tr>
                <td>{!! $variation->attribute_name !!}</td>
                <td>{!! $variation->product_attribute_value !!}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
@endif

<ul class="iconlist ">
@if($product->features)
    @foreach($product->features as $feature)
        <li>
        @if($feature->useicon == true)
        {!! $feature->icon !!}
        @endif
        {!! $feature->feature_name !!}
        </li>
    @endforeach
@endif
</ul>