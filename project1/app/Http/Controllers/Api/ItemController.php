<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\ItemRequest;
use App\Models\Item;
use Illuminate\Http\Request;

class ItemController extends Controller
{
    public function data(Request $request)
    {
        $start = $request->get('start', 0);
        $limit = $request->get('length', 10);
        $query = Item::select('*')->with('updatedBy', 'itemType', 'itemHistories', 'orders');

        // build order
        $order = $request->get('order');
        $sortableColumns = [
            '1' => 'item_type_id',
            '2' => 'name',
            '3' => 'purchase',
            '4' => 'price',
            '5' => 'stock',
            '6' => 'discount',
            '7' => 'description',
            '8' => 'created_at',
            '9' => 'updated_at',
            '10' => 'updated_by'
        ];

        if (isset($sortableColumns[$order[0]['column']])) {
            if (isset($sortableColumns[$order[0]['column']])) {
                $query->orderBy($sortableColumns[$order[0]['column']], $order[0]['dir']);
            }
        } else {
            $query->orderBy('updated_at', 'desc');
        }

        $searchTerm = $request->get('search');
        if (empty($searchTerm['value']) === false) {
            $q = '%' . str_replace(' ', '%', trim($searchTerm['value'])) . '%';
            $query->where('name', 'like', $q);
        }

        // for get data total and last page,
        $paginate = $query->skip($start)
            ->paginate($limit)
            ->toArray();

        $paginateData['total'] = $paginate['total'];
        $paginateData['last_page'] = $paginate['last_page'];

        $paginateData['from'] = $start;
        $paginateData['to'] = $limit + ($start - 1);
        $paginateData['per_page'] = $limit;

        $paginateData['data'] = $query->skip($start)
            ->take($limit)
            ->get();

        return $this->responseSuccess($paginateData);
    }

    public function show(Request $request)
    {
        try {
            $item = Item::with('updatedBy', 'itemType', 'itemHistories', 'orders')->find($request->item);
            if ($item) {
                return $this->responseSuccess($item);
            }
            return $this->responseSuccess(['message' => 'Item not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }

    public function post(ItemRequest $request)
    {
        try {
            if ($request->id) {
                $message = 'Item has been updated';
            } else {
                $message = 'Item has been created';
            }

            $request->save($request->only(array_keys($request->rules())), $request->id);

            return $this->responseSuccess(['message' => $message]);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }

    public function destroy(Request $request)
    {
        try {
            $item = Item::find($request->item);
            if ($item) {
                $item->delete();
                return $this->responseSuccess(['message' => 'Item has been deleted']);
            }
            return $this->responseSuccess(['message' => 'Item not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }
}
