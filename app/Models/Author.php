<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    use HasFactory;

    protected $table = "authors";
    protected $primaryKey = 'author_id';
    public $timestamps = false;
    protected $fillable = [
        'author_id',
        'author_name',
        'author_image',
    ];
    
    public function song(){
        return $this->hasMany(Song::class, 'author_id');
    }
}
