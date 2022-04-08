<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Customer extends Authenticatable
{
    use HasFactory, SoftDeletes;
    protected $fillable = ['name','phone','email','address','country_id','area_id','profile_picture','thub_picture','username','password','status','save_by','updated_by'];
}
