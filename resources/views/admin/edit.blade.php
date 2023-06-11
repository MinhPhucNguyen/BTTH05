@extends('layout.home')

@section('content')
<div class="container mt-4">
    <div class="card">
        <div class="card-header">
            <h4>Edit Song</h4>
        </div>
        <div class="card-body">
            <form method="POST" action="{{route('update', $song->song_id)}}"  enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label for="">Title</label>
                    <input type="text" name="title" class="form-control" value="{{$song->title}}">
                </div>
                <div class="form-group">
                    <label for="">Name</label>
                    <input type="text" name="song_name" class="form-control" value="{{$song->song_name}}">
                </div>
                <div class="form-group">
                    <label for="">Category</label>
                    <select name="category" class="form-control">
                        @foreach ($categories as $category)
                            <option value="{{$category->category_id}}" {{$category->category_id == $song->category_id ? 'selected' : ''}}>{{$category->category_name}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="">Summary</label>
                    <textarea name="summary" class="form-control" cols="30" rows="3">{{$song->summary}}</textarea>
                </div>
                <div class="form-group">
                    <label for="">Content</label>
                    <textarea name="content" class="form-control" cols="30" rows="3">{{$song->content}}</textarea>
                </div>
                <div class="form-group">
                    <label for="">Author</label>

                    <select name="author" class="form-control">
                        @foreach ($authors as $author)
                            <option value="{{$author->author_id}}" {{$author->author_id == $song->author_id ? 'selected' : ''}} >{{$author->author_name}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="">Date</label>
                    <input type="datetime-local" name="date" class="form-control"  value="{{$song->date}}">
                </div>
                <div class="form-group">
                    <label for="">Image</label>
                    <input type="file" name="image" class="form-control">
                </div>
                <button type="submit" class="btn btn-success mt-4">Save changes</button>
            </form>
        </div>
    </div>
</div>

@endsection
