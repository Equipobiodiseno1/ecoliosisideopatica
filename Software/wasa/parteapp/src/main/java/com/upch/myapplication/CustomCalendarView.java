package com.upch.myapplication;

import static com.upch.myapplication.DBStructure.EVENT;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.app.TimePickerDialog;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import android.os.Bundle;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Calendar;
import java.util.TimeZone;

public class CustomCalendarView extends LinearLayout {

    ImageButton NextButton,PreviouButton;
    TextView DiaActual;
    GridView gridView;

    private static final int MAX_CALENDAR_DAYS = 42;
    //esto es para llamar al herramienta calendario que usa el android studio
    Calendar calendar = Calendar.getInstance(Locale.ENGLISH);
    Context context;
    //Dando formato al calendario
    SimpleDateFormat dateFormat = new SimpleDateFormat("MMMM yyyy", Locale.ENGLISH);
    SimpleDateFormat monthFormat = new SimpleDateFormat("MMMM", Locale.ENGLISH);
    SimpleDateFormat yearFormat = new SimpleDateFormat("yyyy", Locale.ENGLISH);
    SimpleDateFormat eventDateFormate = new SimpleDateFormat("yyyy-MM-dd",Locale.ENGLISH);

    MyGridAdapter myGridAdapter;
    AlertDialog alertDialog;
    List<Date> dates = new ArrayList<>();
    List<Events> eventsList = new ArrayList<>();
//Aqui convoca al DbOpenhelper
    DBOpenHelper dbOpenHelper;

    public CustomCalendarView(Context context) {
        super(context);
    }
//Aqui se dará el atributos y caractericas de los botones
    public CustomCalendarView(final Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.context = context;

        /*Setup del calendario*/
        InitializeLayout();
        SetUpCalendar();
//Aqui se da la accion al boton
        PreviouButton.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                calendar.add(Calendar.MONTH, -1);//Esto mandara a retroceder al calendario
                SetUpCalendar();
                }
            });
//Otorga la accion al boton siguiente
        NextButton.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                calendar.add(Calendar.MONTH, 1);//Avanzará 1 mes al calendario
                SetUpCalendar();
            }
        });

//Aqui es cuando se presione en un de los dias se convoque y se le de la accion al menu que aparecerá
        gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent,View view,int position,long id){
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setCancelable(true);
                //Se procede a llamar a los iconos y botones que se encuentran en el layout
                final View addView = LayoutInflater.from(parent.getContext()).inflate(R.layout.add_newevent_layout,null);
                final EditText EventName = addView.findViewById(R.id.eventname);
                final TextView EventTime = addView.findViewById(R.id.eventtime);
                ImageButton SetTime = addView.findViewById(R.id.seteventtime);
                Button AddEvent = addView.findViewById(R.id.addevent);
                SetTime.setOnClickListener(new OnClickListener() {
                    //Aqui es para cuando se presione el boton se llamará a la otra ventana en la que puedes añadir tu registro
                    @Override
                    public void onClick(View v) {
                        Calendar calendar = Calendar.getInstance();
                        int hours = calendar.get(Calendar.HOUR_OF_DAY);
                        int minuts = calendar.get(Calendar.MINUTE);
                        TimePickerDialog timePickerDialog = new TimePickerDialog(addView.getContext(),R.style.Theme_Prueba2
                                , new TimePickerDialog.OnTimeSetListener() {

                            //este es para elegir la hora cuando se presiona el icono del tiempo
                            @Override
                            public void onTimeSet(TimePicker view, int hourOfDay, int minute) {
                                Calendar c =Calendar.getInstance();
                                c.set(Calendar.HOUR_OF_DAY,hourOfDay);
                                c.set(Calendar.MINUTE,minute);
                                c.setTimeZone(TimeZone.getDefault());
                                SimpleDateFormat hformate = new SimpleDateFormat( "K:mm a",Locale.ENGLISH);
                                String event_Time = hformate.format(c.getTime());
                                EventTime.setText(event_Time);



                            }
                        },hours,minuts,false);
                        timePickerDialog.show();
                    }
                });

                final String date = eventDateFormate.format(dates.get(position));
                final String month = monthFormat.format(dates.get(position));
                final String year = yearFormat.format(dates.get(position));

                //Este es el boton para añadir el Registro
                AddEvent.setOnClickListener(new OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        SaveEvent(EventName.getText().toString(),EventTime.getText().toString(),date,month,year);
                        SetUpCalendar();
                        alertDialog.dismiss();
                    }
                });

                builder.setView(addView);
                alertDialog =builder.create();
                alertDialog.show();

            }


        });



    }

    public CustomCalendarView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    //Aqui se dará el mensaje cuando se registre el tratamiento
    private void SaveEvent (String event,String time,String date,String month,String year){

        dbOpenHelper = new DBOpenHelper(context);
        SQLiteDatabase database = dbOpenHelper.getWritableDatabase();
        dbOpenHelper.SaveEvent(event,time,date,month,year,database);
        dbOpenHelper.close();
        Toast.makeText(context,"Tratamiento Guardado",Toast.LENGTH_SHORT).show();

    }

    //Aqui se organiza y se llama a la ventana cuando se presione el calendario
    private void InitializeLayout() {
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View view = inflater.inflate(R.layout.calendar_layout, this);
        NextButton = view.findViewById(R.id.nextBtn);
        PreviouButton = view.findViewById(R.id.previousBtn);
        DiaActual = view.findViewById(R.id.current_date);
        gridView = view.findViewById(R.id.gridview);
    }

    //Aqui se da la programacion para el calendario en sí
    private void SetUpCalendar() {
        String currentDate = dateFormat.format(calendar.getTime());
        DiaActual.setText(currentDate);
        dates.clear();
        Calendar monthCalendar = (Calendar) calendar.clone();
        monthCalendar.set(Calendar.DAY_OF_MONTH,1);
        int FirstDayofMonth =monthCalendar.get(Calendar.DAY_OF_WEEK) -1;
        monthCalendar.add(Calendar.DAY_OF_MONTH, -FirstDayofMonth);


        while (dates.size() < MAX_CALENDAR_DAYS){
            dates.add(monthCalendar.getTime());
            monthCalendar.add(Calendar.DAY_OF_MONTH,1);

        }

        myGridAdapter = new MyGridAdapter(context,dates,calendar,eventsList);
        gridView.setAdapter(myGridAdapter);

    }

//Aqui sucede el error que no me dejo avanzar por mas de 45 horas
    //Aqui deberia dar programacion para guargar el registro cuando el paciente presione el boton de guardar tratamiento
    private void CollectEventsPerMonth (String Month,String year) {
        eventsList.clear();
        dbOpenHelper= new DBOpenHelper(context);
        SQLiteDatabase database = dbOpenHelper.getReadableDatabase();
        Cursor cursor = dbOpenHelper.ReadEventsperMonth(Month,year,database);
        while (cursor.moveToNext()){
             String event = cursor.getString(cursor.getColumnIndex(EVENT));
             String time = cursor.getString(cursor.getColumnIndex(DBStructure.TIME));
             String date = cursor.getString(cursor.getColumnIndex(DBStructure.DATE));
             String month = cursor.getString(cursor.getColumnIndex(DBStructure.MONTH));
             String Year = cursor.getString(cursor.getColumnIndex(DBStructure.YEAR));

            Events events = new Events(event,time,date,month,Year);
            eventsList.add(events);

        }
        cursor.close();
        dbOpenHelper.close();
    }
}
