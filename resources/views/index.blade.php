@extends('layout.home')

@section('content')
    <div>
        @if ($categoryWithTheMostPost)
            <div class="bg-secondary d-inline-block p-4 text-light">
                <h5>Category with the most song</h5>
                <p>Category: {{ $categoryWithTheMostPost->category_name }}</p>
                <p>Count: {{ $categoryWithTheMostPost->song_count }}</p>
            </div>
        @endif
        
        @if ($categoryWithTheMostPost)
            <div class="bg-secondary d-inline-block p-4 text-light mt-4">
                <h5>Author with the most song</h5>
                @foreach ($authorWithTheMostPost as $author)
                    <p>Author: {{ $author->author_name }}</p>
                    <p>Count: {{ $author->song_count }}</p>
                @endforeach
            </div>
        @endif
    </div>
    <div class="row mt-4">
        @foreach ($songs as $song)
            <div class="col-md-2 mb-3">
                <div class="card" style="width: 18rem; height: 40rem;">
                    <img src="{{ $song->image }}" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title"><a href="{{ url('/songs/' . $song->song_id) }}">{{ $song->title }}</a></h5>
                        <p class="fw-bold">Category: {{ $song->category->category_name }}</p>
                        <p class="fw-bold">Author: {{ $song->author->author_name }}</p>
                        <p class="fw-bold">Date: {{ $song->date }}</p>
                        <p class="card-text">{{ $song->summary }}</p>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection
