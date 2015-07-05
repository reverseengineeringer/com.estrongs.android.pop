package com.estrongs.android.pop.app;

import android.content.res.Configuration;
import android.os.Bundle;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.util.a;

public class ESStatisticsActivity
  extends ESActivity
{
  a a = null;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    a = a.a(this, false, "Shadow");
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onPause()
  {
    super.onPause();
    if ((a != null) && (a.c())) {
      ad.a(FexApplication.a()).aT();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (a != null) {
      a.b();
    }
    finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ESStatisticsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */