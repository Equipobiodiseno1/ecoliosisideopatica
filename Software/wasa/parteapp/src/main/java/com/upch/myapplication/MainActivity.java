package com.upch.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {//Aqui es para cuando se abra la app muestre el layout principal
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void avanzaratemp (View view){
        Intent i= new Intent(this, Temporizador.class);//este le otorga la accion al boton
        startActivity(i);
    }
    public void avanzaracalendario (View view){//Este  avanzara al calendario
        Intent i= new Intent(this, Calendario.class);
        startActivity(i);
    }
}