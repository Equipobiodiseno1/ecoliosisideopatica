package com.upch.myapplication;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import androidx.annotation.Nullable;

public class DBOpenHelper extends SQLiteOpenHelper {//el SQLite es la herramienta de Android studio que nos otorga para guardar la informacion

    private static final String CREATE_EVENTS_TABLE ="create table " + DBStructure.EVENT_TABLE_NAME+ "(ID INTEGER PRIMARY KEY AUTOINCREMENT,"
            +DBStructure.EVENT+"TEXT,"+DBStructure.TIME+"TEXT,"+DBStructure.DATE+"TEXT,"+DBStructure.MONTH+"TEXT,"+DBStructure.YEAR+"TEXT)";
    private static final String DROP_EVENTS_TABLE= "DROP TABLE IF EXISTS" + DBStructure.EVENT_TABLE_NAME;

//Aqui se dará contexto al DBOpenhelper es decir se da el nombre y version que se usará
    public DBOpenHelper(@Nullable Context context) {
        super(context, DBStructure.DB_NAME, null,DBStructure.DB_VERSION);
    }
//Este es para cuando se use el DBOpenhelper automaticamente se llame a SQLITEdatabase
    @Override
    public void onCreate(SQLiteDatabase db) {

        db.execSQL(CREATE_EVENTS_TABLE);
    }
    @Override
    public void onUpgrade(SQLiteDatabase db,int oldVersion,int newVersion) {
        db.execSQL(DROP_EVENTS_TABLE);
        onCreate(db);
    }

    //Aca es para que cada nombre del DBStructure se use para guardar la informacion
    public void SaveEvent (String event,String time,String date ,String month,String year,SQLiteDatabase database){
        ContentValues contentValues = new ContentValues();
        contentValues.put(DBStructure.EVENT,event);
        contentValues.put(DBStructure.TIME,time);
        contentValues.put(DBStructure.DATE,date);
        contentValues.put(DBStructure.MONTH,month);
        contentValues.put(DBStructure.YEAR,year);
        database.insert(DBStructure.EVENT_TABLE_NAME,null,contentValues);
    }

    public Cursor ReadEvents(String date,SQLiteDatabase database){
        String [] Projections = {DBStructure.EVENT,DBStructure.TIME,DBStructure.DATE,DBStructure.MONTH,DBStructure.YEAR};
        String Selection = DBStructure.DATE +"=?";
        String [] SelectionArgs = {date} ;
        return database.query(DBStructure.EVENT_TABLE_NAME,Projections,Selection,SelectionArgs,null,null,null);
    }

    //Este es para mostrar lo registrado una vez el paciente haya guardado el tratamiento
    public Cursor ReadEventsperMonth(String month,String year,SQLiteDatabase database){
        String [] Projections = {DBStructure.EVENT,DBStructure.TIME,DBStructure.DATE,DBStructure.MONTH,DBStructure.YEAR};
        String Selection = DBStructure.MONTH +"=? and "+DBStructure.YEAR+"=?";
        String [] SelectionArgs = {month,year} ;
        return database.query(DBStructure.EVENT_TABLE_NAME,Projections,Selection,SelectionArgs,null,null,null);
    }
}
