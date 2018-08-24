package com.gcorso.myapplication.Explore;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;

import com.gcorso.myapplication.ChatActivity;
import com.gcorso.myapplication.Objects.Course;
import com.gcorso.myapplication.ProfileActivity;
import com.gcorso.myapplication.R;
import com.gcorso.myapplication.Tools.ToolsActivity;

import java.util.List;

public class HomeActivity extends AppCompatActivity {

    CoursesListAdapter coursesListAdapter;
    LessonsLDH lessonsLDH;

    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            Intent intent;
            switch (item.getItemId()) {

                case R.id.navigation_explore:

                    return true;
                case R.id.navigation_chat:
                    intent = new Intent(HomeActivity.this, ChatActivity.class);
                    startActivity(intent);
                    return true;
                case R.id.navigation_tools:
                    intent = new Intent(HomeActivity.this, ToolsActivity.class);
                    startActivity(intent);
                    return true;
                case R.id.navigation_profile:
                    intent = new Intent(HomeActivity.this, ProfileActivity.class);
                    startActivity(intent);
                    return true;
            }
            return false;
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        /*List<Course> courses = new ArrayList<>();
        List<Lesson> lessons = new ArrayList<>();

        for(int i = 0; i < 10; i++){
            lessons.add(new Lesson(i, "Lezione " + Integer.toString(i)));
        }

        for(int i = 0; i < 10; i++){
            courses.add(new Course(i, "Corso " + Integer.toString(i), lessons));
        }*/

        lessonsLDH = new LessonsLDH(this);
        List<Course> courses = lessonsLDH.getCourses();

        coursesListAdapter = new CoursesListAdapter(this, courses);
        ListView listCourses = findViewById(R.id.courses_list);
        listCourses.setAdapter(coursesListAdapter);

        BottomNavigationView navigation = (BottomNavigationView) findViewById(R.id.navigation);
        navigation.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener);

        final ActionBar abar = getSupportActionBar();
        View viewActionBar = getLayoutInflater().inflate(R.layout.actionbar_titletext_layout, null);
        ActionBar.LayoutParams params = new ActionBar.LayoutParams(
                ActionBar.LayoutParams.WRAP_CONTENT,
                ActionBar.LayoutParams.MATCH_PARENT,
                Gravity.CENTER);
        TextView textviewTitle = (TextView) viewActionBar.findViewById(R.id.actionbar_textview);
        textviewTitle.setText("Esplora");
        abar.setCustomView(viewActionBar, params);
        abar.setDisplayShowCustomEnabled(true);
        abar.setDisplayShowTitleEnabled(false);
    }

}
