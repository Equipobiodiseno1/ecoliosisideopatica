package com.upch.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void avanzaratemp (View view){
        Intent i= new Intent(this, Temporizador.class);
        startActivity(i);
    }
    public void avanzaracalendario (View view){
        Intent i= new Intent(this, Calendario.class);
        startActivity(i);
    }
}