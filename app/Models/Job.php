<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use HasFactory;

    protected $fillable = [
        'name','controller_type','no_of_steps','overspeed_governer_voltage','brake_voltage','moter','encoder_type','no_of_entrance','resue','delivery_date','door_type','file','other_materials','additional_details'
    ];

    protected $casts = [
        'other_materials' => 'array'
    ];
}
