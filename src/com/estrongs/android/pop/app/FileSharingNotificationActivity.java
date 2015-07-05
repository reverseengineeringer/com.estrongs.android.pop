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
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.theme.al;

public class FileSharingNotificationActivity
  extends ESActivity
{
  private al a;
  private NotificationManager b;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setBackgroundDrawableResource(2130837568);
    b = ((NotificationManager)getSystemService("notification"));
    a = al.a(this);
    paramBundle = g.a(this).inflate(2130903128, null);
    TextView localTextView = (TextView)paramBundle.findViewById(2131362296);
    Bundle localBundle = getIntent().getExtras();
    if ((localBundle != null) && (localBundle.getString("file_name") != null)) {
      localTextView.setText(localBundle.getString("file_name"));
    }
    paramBundle.setBackgroundDrawable(a.a(2130837935));
    setContentView(paramBundle);
    ((Button)findViewById(2131362297)).setOnClickListener(new ck(this));
    ((Button)findViewById(2131362298)).setOnClickListener(new cl(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.FileSharingNotificationActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */