package com.upch.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import android.os.Bundle;
import android.widget.TextView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Calendar;

public class Calendario extends AppCompatActivity {
//es para convocar al Custom calendar view
    CustomCalendarView customCalendarView;

    @Override
    protected void onCreate (Bundle savedInstanceState){//Aqui es para al momento de entrar a esta seccion se mostrara el Custom calendar view
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calendario);

        customCalendarView = (CustomCalendarView)findViewById(R.id.custom_calendar_view);
    }

}