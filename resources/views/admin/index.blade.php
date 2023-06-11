@extends('layout.admin')

@section('content')
    <div class="container">
        @if (session()->has('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <i class="fa-sharp fa-solid fa-circle-check"></i>
                <strong>{{ session('success') }}</strong>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"
                    style="padding: 1.05rem 1rem"></button>
            </div>
        @endif
        <a href="{{ route('create') }}" class="btn btn-success float-end mb-4">Add New Song</a>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Song Name</th>
                    <th>Category</th>
                    <th>Author</th>
                    <th>Date</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($songs as $song)
                    <tr>
                        <td>{{ $song->song_id }}</td>
                        <td>{{ $song->title }}</td>
                        <td>{{ $song->song_name }}</td>
                        <td>{{ $song->category->category_name }}</td>
                        <td>{{ $song->author->author_name }}</td>
                        <td>{{ $song->date }}</td>
                        <td class="d-flex flex-column">
                            <a href="{{route('show', $song->song_id)}}" class="btn btn-warning text-light mb-2">View</a>
                            <a href="{{route('edit', $song->song_id)}}" class="btn btn-primary mb-2">Edit</a>
                            <form action="{{route('delete', $song->song_id)}}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                 <button type="submit" class="btn btn-danger mb-2">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
