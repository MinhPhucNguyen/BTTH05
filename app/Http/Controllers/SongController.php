<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\Category;
use App\Models\Song;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Termwind\Components\Element;

class SongController extends Controller
{
    public function index()
    {
        //Query Builder
        // $categoryWithTheMostPost = DB::table('categories')
        //     ->join('songs', 'categories.category_id','=','songs.category_id')
        //     ->select('categories.category_id','categories.category_name', DB::raw('count(songs.song_id) as song_count'))
        //     ->groupBy('categories.category_id', 'categories.category_name')
        //     ->orderByDesc('categories.category_id')
        //     ->first();
        //Eloquent ORM
        $categoryWithTheMostPost = Category::withCount('song')->orderByDesc('song_count')->first();

        //Query Bulder
        // $authorWithTheMostPost = DB::table('authors')
        //     ->join('songs', 'authors.author_id', '=', 'songs.author_id')
        //     ->select('authors.author_id', 'authors.author_name', DB::raw('count(songs.song_id) as song_count'))
        //     ->groupBy('authors.author_id', 'authors.author_name')
        //     ->orderByDesc('song_count')
        //     ->limit(2)
        //     ->get();
        //Eloquent ORM
        $authorWithTheMostPost = Author::join('songs', 'authors.author_id', '=', 'songs.author_id')
            ->select('authors.author_id', 'authors.author_name', DB::raw('count(songs.song_id) as song_count'))
            ->groupBy('authors.author_id', 'authors.author_name')
            ->orderByDesc('song_count')
            ->limit(2)
            ->get();

        //Raw Data
        // $songs = DB::select('select * from songs');

        // Query Builder
        // $songs = DB::table('songs')->get();

        //Eloquent ORM
        $songs = Song::with('category', 'author')->get();
        return view('index', compact('songs', 'categoryWithTheMostPost', 'authorWithTheMostPost'));
    }

    public function create()
    {
        //Raw Data
        // $authors = DB::select('select * from authors');
        // $categories = DB::select('select * from categories');

        // Query Builder
        // $authors = DB::table('authors')->get();
        // $categories = DB::table('categories')->get();

        //Eloquent ORM
        $authors = Author::all();
        $categories = Category::all();
        return view('create',  compact('authors', 'categories'));
    }

    public function show($id)
    {
        //Raw Data
        // $song = DB::select('select * from songs where song_id = ?', [1]);

        // Query Builder
        // $song = DB::table('songs')->where('song_id', $id)->get();

        // Eloquent ORM
        $song = Song::find($id);
        return view('show', compact('song'));
    }

    public function search(Request $request)
    {
        $categoryWithTheMostPost = null;
        $authorWithTheMostPost = null;
        $searchValue = $request->input("search");
        $searchTerms = ['anh', 'em', 'yeu', 'thuong'];

        $songs = Song::where(function ($query) use ($searchTerms) {
            foreach ($searchTerms as $term) {
                $query->orWhere('title', 'like', '%' . $term . '%');
            }
        })->get();

        if ($searchValue != "") {
            $categoryId = Category::where('category_name', 'like', '%' . $searchValue . '%')->value('category_id');
            $authorId = Author::where('author_name', 'like', '%' . $searchValue . '%')->value('author_id');

            $songs = Song::where('category_id', '=', $categoryId)
                ->orWhere('author_id', '=', $authorId)
                ->orWhere('title', 'like', $searchValue . '%')
                ->orWhere('song_id', '=', $searchValue)
                ->get();
            if ($songs->isEmpty()) {
                return view('error.error');
            }
        } else {
            $songs = Song::all();
        }
        return view('index', compact('songs', 'categoryWithTheMostPost', 'authorWithTheMostPost'));
    }
}
