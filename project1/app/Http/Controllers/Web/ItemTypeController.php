<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ItemTypeController extends Controller
{
    public function index()
    {
        return view('ui.item-type.index');
    }
}
