@extends('layout.admin')

@section('content')
    <div class="container mt-4">
        <div class="card">
            <div class="card-header">
                <h5>{{ $song->song_name }}</h5>
            </div>
            <div class="card-body">
                <p>Title: {{$song->title}}</p>
                <p>Author: {{$song->author->author_name}}</p>
                <p>Category: {{$song->category->category_name}}</p>
                <p>Content: {{$song->content}}</p>
                <p>Date: {{$song->date}}</p>
            </div>
        </div>
    </div>
@endsection
