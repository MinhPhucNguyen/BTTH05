<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $table = "categories";
    protected $primaryKey = 'category_id';
    public $timestamps = false;

    protected $fillable = [
        'category_id',
        'category_name',
    ];

    public function song(){
        return $this->hasMany(Song::class, 'category_id');
    }
}
