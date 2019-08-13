<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ServicePhoto extends Model
{
    protected $table = 'service_photo';

    protected $primarykey = 'id';
    protected $fillable = [
        'id','serviceID', 'photo'
    ];
}