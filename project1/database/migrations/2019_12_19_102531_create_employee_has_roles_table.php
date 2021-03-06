<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmployeeHasRolesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_has_roles', function (Blueprint $table) {
            $table->unsignedBigInteger('employee_id');
			$table->unsignedBigInteger('role_id');

			$table->foreign('employee_id')->references('id')->on('employees')->onDelete('cascade')->onUpdate('cascade');
			$table->foreign('role_id')->references('id')->on('roles')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employee_has_roles');
    }
}
