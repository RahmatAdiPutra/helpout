<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\ItemHistoryRequest;
use App\Models\ItemHistory;
use Illuminate\Http\Request;

class ItemHistoryController extends Controller
{
    public function data(Request $request)
    {
        $start = $request->get('start', 0);
        $limit = $request->get('length', 10);
        $query = ItemHistory::select('*')->with('updatedBy', 'item');

        // build order
        $order = $request->get('order');
        $sortableColumns = [
            '1' => 'item_id',
            '2' => 'quantity',
            '3' => 'created_at',
            '4' => 'updated_at',
            '5' => 'updated_by'
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
            $query->where('item_id', 'like', $q);
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
            $itemHistory = ItemHistory::with('updatedBy', 'item')->find($request->itemHistory);
            if ($itemHistory) {
                return $this->responseSuccess($itemHistory);
            }
            return $this->responseSuccess(['message' => 'Item History not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }

        
    }

    public function post(ItemHistoryRequest $request)
    {
        try {
            if ($request->id) {
                $message = 'Item History has been updated';
            } else {
                $message = 'Item History has been created';
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
            $itemHistory = ItemHistory::find($request->itemHistory);
            if ($itemHistory) {
                $itemHistory->delete();
                return $this->responseSuccess(['message' => 'Item History has been deleted']);
            }
            return $this->responseSuccess(['message' => 'Item History not found']);
        } catch (\Exception $e) {
            return $this->responseSuccess(['message' => $e->getMessage()]);
        }
    }
}
