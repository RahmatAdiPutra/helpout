<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Employee;
use App\Models\Item;
use App\Models\ItemHistory;
use App\Models\Order;
use App\Models\PaymentMethod;
use App\Models\Position;
use App\Models\ItemType;
use App\Models\Payment;
use App\Models\Permission;
use App\Models\Role;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class TestController extends Controller
{
    public function index(Request $request)
    {
        $data = [];

        $menuPermission = [
            'menu' => [
                'Position.',
                'Employee.',
                'Role.',
                'Permission.',
                'Customer.',
                'ItemType.',
                'Item.',
                'ItemHistory.',
                'Order.',
                'PaymentMethod.',
                'Payment.'
            ],
            'permission' => [
                '*',
                'Create',
                'Read',
                'Update',
                'Delete'
            ]
        ];

        Setting::set('checkPayment', 'Canceled');
        Setting::set('menuPermission', $menuPermission);

        return $this->seedTest();
        return $this->seed($request);
    }

    protected function seedTest()
    {
        $data = [];
        $faker = \Faker\Factory::create();
        $gender = $faker->randomElement(['Male', 'Female']);
        $positionId = Position::pluck('id');
        $discount = $faker->randomFloat(null,0,1);

        $data['faker']['gender'] = $gender;
        $data['faker']['creditCardType'] = $faker->creditCardType;
        $data['faker']['jobTitle'] = $faker->jobTitle;
        $data['faker']['positionId'] = $faker->randomElement($positionId);
        $data['faker']['discount'] = $faker->randomElement([0, $discount]);

        // $menuPermission = Setting::get('menuPermission');

        // foreach ($menuPermission['menu'] as $vMenu) {
        //     foreach ($menuPermission['permission'] as $vPermission) {
        //         $data[$vMenu][] = $vMenu.$vPermission;
        //     }
        // }

        return $data;
        return 'Insert data fake';
    }

    protected function seedRolePermission()
    {
        
        $faker = \Faker\Factory::create();
        $role = ['Admin', 'Operator', 'Cashier'];
        $menuPermission = Setting::get('menuPermission');

        foreach ($role as $r) {
            $employeeId = Employee::pluck('id');
            Role::create([
                'name' => $r,
                'updated_by' => $faker->randomElement($employeeId),
            ]);
        }

        foreach ($menuPermission['menu'] as $vMenu) {
            foreach ($menuPermission['permission'] as $vPermission) {
                $employeeId = Employee::pluck('id');
                Permission::create([
                    'name' => $vMenu.$vPermission,
                    'updated_by' => $faker->randomElement($employeeId),
                ]);
            }
        }

        $employees = Employee::pluck('id');
        $roles = Role::pluck('id');
        $permissions = Permission::pluck('id');

        foreach ($employees as $employeeId) {
            $syncRoles = [];
            $findEmployee = Employee::find($employeeId);
            $countRole = $faker->numberBetween(1, count($roles));
            for ($i = 0; $i < $countRole; $i++) {
                $syncRoles[] = [
                    'role_id' => $faker->randomElement($roles)
                ];
            }
            $findEmployee->roles()->sync($syncRoles);
        }

        foreach ($roles as $roleId) {
            $syncPermissions = [];
            $findRole = Role::find($roleId);
            $countPermission = $faker->numberBetween(1, count($permissions));
            for ($i = 0; $i < $countPermission; $i++) {
                $syncPermissions[] = [
                    'permission_id' => $faker->randomElement($permissions)
                ];
            }
            $findRole->permissions()->sync($syncPermissions);
        }
    }

    protected function seed(Request $request)
    {
        if ($request->seed) {
            try {
                if ($request->row) {
                    return $this->{'seed' . ucwords($request->seed)}($request->row);
                } else {
                    return $this->{'seed' . ucwords($request->seed)}();
                }
            } catch (\Exception $e) {
                return $this->responseSuccess(['message' => $e->getMessage()]);
            }
        }

        return $this->seedAll($request);
    }

    protected function seedAll(Request $request)
    {
        //test?seed=position&row=5
        //test?seed=employee&row=20
        //test?seed=paymentmethod&row=5
        //test?seed=customer&row=100
        //test?seed=itemtype&row=2
        //test?seed=item&row=100
        //test?seed=transaction&row=1
        
        $table = [
            'position' => 5,
            'employee' => 20,
            'paymentmethod' => 5,
            'customer' => 100,
            'itemtype' => 2,
            'item' => 50,
            'transaction' => 1,
        ];

        foreach ($table as $key => $value) {
            $request->seed = $key;
            $request->row = $value;
            $data[$key] = $this->seed($request);
        }

        return $data;  
    }
    
    protected function seedPosition($totalRow = 10)
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < $totalRow; $i++) {
            Position::create([
                'name' => $faker->jobTitle,
                'updated_by' => $faker->numberBetween(0, 10)
            ]);
        }

        return 'Seed faker position';
    }

    protected function seedEmployee($totalRow = 10)
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < $totalRow; $i++) {
            $positionId = Position::pluck('id');
            $gender = $faker->randomElement(['Male', 'Female']);
            Employee::create([
                'position_id' => $faker->randomElement($positionId),
                'id_card_number' => $faker->uuid,
                'name' => $faker->name($gender),
                'gender' => $gender,
                'birthday' => $faker->date('Y-m-d'),
                'religion' => $faker->randomElement(['Islam', 'Kristen', 'Hindu', 'Budha', 'Konghucu']),
                'city' => $faker->city,
                'address' => $faker->address,
                'phone_number' => $faker->phoneNumber,
                'email' => $faker->randomNumber.$faker->freeEmail,
                'password' => $faker->sha256,
                'status' => $faker->randomElement([0, 1])
            ]);
        }

        $role = Role::all();

        if (!count($role)) {
            $this->seedRolePermission();
        }

        return 'Seed faker employee';
    }

    protected function seedPaymentmethod($totalRow = 10)
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < $totalRow; $i++) {
            $employeeId = Employee::pluck('id');
            PaymentMethod::create([
                'name' => $faker->creditCardType,
                'updated_by' => $faker->randomElement($employeeId),
            ]);
        }

        return 'Seed faker payment method';
    }

    protected function seedCustomer($totalRow = 10)
    {
        $faker = \Faker\Factory::create();
        $gender = $faker->randomElement(['Male', 'Female']);

        for ($i = 0; $i < $totalRow; $i++) {
            $employeeId = Employee::pluck('id');
            $gender = $faker->randomElement(['Male', 'Female']);
            Customer::create([
                'id_card_number' => $faker->uuid,
                'name' => $faker->name($gender),
                'gender' => $gender,
                'birthday' => $faker->date('Y-m-d'),
                'religion' => $faker->randomElement(['Islam', 'Kristen', 'Hindu', 'Budha', 'Konghucu']),
                'city' => $faker->city,
                'address' => $faker->address,
                'phone_number' => $faker->phoneNumber,
                'email' => $faker->randomNumber.$faker->freeEmail,
                'password' => $faker->sha256,
                'status' => $faker->randomElement(['Basic', 'Premium']),
                'updated_by' => $faker->randomElement($employeeId)
            ]);
        }

        return 'Seed faker customer';
    }

    protected function seedItemtype($totalRow = 10)
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < $totalRow; $i++) {
            $employeeId = Employee::pluck('id');
            ItemType::create([
                'name' => $faker->randomElement(['Accessories', 'Clothing']),
                'updated_by' => $faker->randomElement($employeeId)
            ]);
        }

        return 'Seed faker item type';
    }

    protected function seedItem($totalRow = 10)
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < $totalRow; $i++) {
            $employeeId = Employee::pluck('id');
            $itemTypeId = ItemType::pluck('id');
            $discount = $faker->randomFloat(null, 0, 1);
            $item = Item::create([
                'item_type_id' => $faker->randomElement($itemTypeId),
                'name' => $faker->word,
                'price' => $faker->numberBetween(20000, 1000000),
                'stock' => $faker->numberBetween(0, 100),
                'discount' => $faker->randomElement([0, $discount]),
                'description' => $faker->text(50),
                'updated_by' => $faker->randomElement($employeeId)
            ]);
            ItemHistory::create([
                'item_id' => $item->id,
                'quantity' => $item->stock,
                'updated_by' => $item->updated_by
            ]);
        }

        return 'Seed faker item';
    }

    protected function seedTransaction($totalRow = 10)
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < $totalRow; $i++) {
            $items = [];
            $employeeId = Employee::pluck('id');
            $customerId = Customer::pluck('id');
            $paymentMethodId = PaymentMethod::pluck('id');
            $countItem = $faker->numberBetween(3, 5);

            $order = new Order();
            $order->customer_id = $faker->randomElement($customerId);
            $order->updated_by = $faker->randomElement($employeeId);
            $order->save();
            
            for ($j = 0; $j < $countItem; $j++) {
                $itemId = $faker->randomElement(Item::pluck('id'));
                $item = Item::find($itemId);
                if ($item->stock) {    
                    $quantity = $faker->numberBetween(1, $item->stock);
                    if (number_format($item->discount)) {
                        $amount = $item->price * $quantity * $item->discount;
                    } else {
                        $amount = $item->price * $quantity;
                    }
                    $items[] = [
                        'item_id' => $item->id,
                        'price' => $item->price,
                        'quantity' => $quantity,
                        'discount' => $item->discount,
                        'amount' => $amount,
                    ];
                    $stock = $item->stock - $quantity;
                    $item->stock = $stock;
                    $item->save();
                }
            }

            $order->items()->sync($items);

            $total = $order->items();

            $payment = new Payment();
            $payment->payment_method_id = $faker->randomElement($paymentMethodId);
            $payment->order_id = $order->id;
            $payment->card_number = $faker->creditCardNumber;
            $payment->due_date = Carbon::now()->addDay(1);
            $payment->total_amount = $total->sum('amount');
            $payment->status = $faker->randomElement(['Submitted', 'Completed', 'Canceled']);
            $payment->updated_by = $order->updated_by;
            $payment->save();

            $checkPayment = Setting::get('checkPayment');

            if ($payment->status == $checkPayment) {
                foreach ($order->items as $key => $value) {
                    $item = Item::find($value->pivot->item_id);
                    $item->stock = $item->stock + $value->pivot->quantity;
                    $item->save();
                }
            }
        }

        return 'Seed faker transaction';
    }
}
