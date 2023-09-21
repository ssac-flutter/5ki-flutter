package com.example.home_widget

import android.content.Context
import androidx.compose.ui.unit.dp
import androidx.glance.Button
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.provideContent
import androidx.glance.appwidget.updateAll
import androidx.glance.layout.Alignment
import androidx.glance.layout.Column
import androidx.glance.layout.Row
import androidx.glance.layout.fillMaxSize
import androidx.glance.layout.padding
import androidx.glance.text.Text
import es.antonborri.home_widget.HomeWidgetPlugin

class MyAppWidget : GlanceAppWidget() {

    override suspend fun provideGlance(context: Context, id: GlanceId) {

        // In this method, load data needed to render the AppWidget.
        // Use `withContext` to switch to another thread for long running
        // operations.

        val widgetData = HomeWidgetPlugin.getData(context)
        val counter = widgetData.getInt("counter", 0)

        provideContent {
            // create your AppWidget here
            Column(
                modifier = GlanceModifier.fillMaxSize(),
                verticalAlignment = Alignment.Top,
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Text(text = "$counter", modifier = GlanceModifier.padding(12.dp))
                Row(horizontalAlignment = Alignment.CenterHorizontally) {
                    Button(
                        text = "Home",
                        onClick = {}
                    )
                    Button(
                        text = "Work",
                        onClick = {}
                    )
                }
            }
        }
    }
}