my useful links doc

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