<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEventTicket extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('event_ticket', function (Blueprint $table) {
            $table->id()->unique();
            $table->string('nombre_evento');
            $table->string('precio');
            $table->integer('cantidad');
            $table->string('categoria');
            $table->string('imagen');
            $table->string('descripcion');
            $table->string('lugar');
            $table->date('fecha');
            $table->time('hora');
            $table->string('tipo');
            $table->string('publico');
            $table->timestamp('failed_at')->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('event_ticket');
    }
}
