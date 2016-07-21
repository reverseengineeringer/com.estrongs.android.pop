package com.estrongs.android.pop.app;

import android.app.NotificationManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.theme.at;

public class FileSharingNotificationActivity
  extends ESActivity
{
  private at a;
  private NotificationManager b;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setBackgroundDrawableResource(2130837692);
    b = ((NotificationManager)getSystemService("notification"));
    a = at.a(this);
    paramBundle = k.a(this).inflate(2130903227, null);
    TextView localTextView = (TextView)paramBundle.findViewById(2131624888);
    Bundle localBundle = getIntent().getExtras();
    if ((localBundle != null) && (localBundle.getString("file_name") != null)) {
      localTextView.setText(localBundle.getString("file_name"));
    }
    setContentView(paramBundle);
    ((Button)findViewById(2131624889)).setOnClickListener(new co(this));
    ((Button)findViewById(2131624890)).setOnClickListener(new cp(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.FileSharingNotificationActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */