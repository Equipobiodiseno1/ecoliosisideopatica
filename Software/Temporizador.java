package com.upch.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class Temporizador extends AppCompatActivity {

    TextView textView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_temporizador);

        textView=findViewById(R.id.text_view);

        long duration = TimeUnit.MINUTES.toMillis(5);

        new CountDownTimer(duration, 1000) {
            @Override
            public void onTick(long l) {

                String sDuration = String.format(Locale.ENGLISH,"%02d : %02d"
                        ,TimeUnit.MILLISECONDS.toMinutes(l)
                        ,TimeUnit.MILLISECONDS.toSeconds(l) -
                        TimeUnit.MINUTES.toSeconds((TimeUnit.MILLISECONDS.toMinutes(l))));
                textView.setText(sDuration);

            }

            @Override
            public void onFinish() {
                textView.setVisibility(View.GONE);
                Toast.makeText(getApplicationContext()
                ,"Su tratamiento ha terminado",Toast.LENGTH_LONG).show();
            }
        }.start();
    }
}