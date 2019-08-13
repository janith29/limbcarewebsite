<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ServiceVideo extends Model
{
    protected $table = 'service_video';

    protected $primarykey = 'id';
    protected $fillable = [
        'id','serviceID', 'embed'
    ];
}