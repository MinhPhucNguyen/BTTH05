<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\Category;
use App\Models\Song;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index()
    {

        $songs = Song::with('category', 'author')->orderByDesc('song_id')->get();
        return view('admin.index', compact('songs'));
    }

    public function create()
    {
        $categories = Category::all();
        $authors = Author::all();
        return view('admin.create', compact('categories', 'authors'));
    }

    public function store(Request $request)
    {
        $title = $request['title'];
        $song_name = $request['song_name'];
        $category = $request['category'];
        $summary = $request['summary'];
        $content = $request['content'];
        $author = $request['author'];
        $date = date('y-m-d H:i:s', strtotime($request['date']));
        $image = $request['image'];

        $song = new Song();
        $song->title = $title;
        $song->song_name = $song_name;
        $song->category_id = $category;
        $song->summary = $summary;
        $song->content = $content;
        $song->author_id = $author;
        $song->date = $date;
        $song->image = $image;

        $song->save();

        return redirect('/admin/songs')->with('success', 'Create successfully');
    }

    public function show($id)
    {
        $song = Song::find($id);
        return view('admin.show', compact('song'));
    }
    public function edit($id)
    {
        $categories = Category::all();
        $authors = Author::all();
        $song = Song::find($id);
        return view('admin.edit', compact('song', 'categories', 'authors'));
    }

    public function update(Request $request, $id){
        $song =  Song::find($id);

        $title = $request['title'];
        $song_name = $request['song_name'];
        $category = $request['category'];
        $summary = $request['summary'];
        $content = $request['content'];
        $author = $request['author'];
        $date = date('y-m-d H:i:s', strtotime($request['date']));
        $image = $request['image'];

        if($song){
            $song->title = $title;
            $song->song_name = $song_name;
            $song->category_id = $category;
            $song->summary = $summary;
            $song->content = $content;
            $song->author_id = $author;
            $song->date = $date;
            $song->image = $image;

            $song->update();
            return redirect('admin/songs')->with('success', "Song updated successfully");
        }
    }

    public function destroy($id){
        $song = Song::find($id);
        $song->delete();
        return redirect('admin/songs')->with('success', "Deleted successfully");
    }
}
