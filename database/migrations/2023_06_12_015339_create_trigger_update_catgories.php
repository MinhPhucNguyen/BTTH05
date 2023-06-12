<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        $trigger = <<<EOT
        CREATE TRIGGER datetime_CategoryUpdate AFTER INSERT ON songs
        FOR EACH ROW
        BEGIN
            UPDATE categories SET song_quantity = (SELECT COUNT(*) FROM songs WHERE songs.category_id = categories.category_id);
        END;
        EOT;
        DB::unprepared($trigger);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        $trigger = 'DROP TRIGGER IF EXISTS datetime_CategoryUpdate';
        DB::unprepared($trigger);
    }
};
