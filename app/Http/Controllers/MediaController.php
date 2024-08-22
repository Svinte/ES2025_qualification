<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MediaController extends Controller
{
    public function image($folder, $path)
    {
        $storage_path = storage_path("images/{$folder}/$path") ?? false;

        if(storage_path())
        {
            return response()->download($storage_path);
        }

        return Response::json([
            'error' => 'Image not found',
        ], 404);
    }
}
