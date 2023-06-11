<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Song extends Model
{
    use HasFactory;

    protected $table = "songs";
    protected $primaryKey = 'song_id';
    public $timestamps = false;

    protected $fillable = [
        'song_id',
        'title',
        'song_name', 'summary', 'category_id','content', 'author_id' ,'date', 'image',
    ];

    public function category(){
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function author(){
        return $this->belongsTo(Author::class, 'author_id');
    }
}