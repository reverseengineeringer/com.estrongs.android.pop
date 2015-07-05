package com.estrongs.android.pop.esclasses;

import android.content.res.Resources;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import com.estrongs.android.pop.FexApplication;

public class ESPreferenceActivity
  extends PreferenceActivity
{
  private static k a = null;
  
  public void addPreferencesFromResource(int paramInt)
  {
    super.addPreferencesFromResource(paramInt);
    new j(this).a(paramInt, getPreferenceScreen());
  }
  
  public Resources getResources()
  {
    try
    {
      if (a == null) {
        a = k.b(super.getResources());
      }
      k localk = a;
      return localk;
    }
    finally {}
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      e.a(this);
      return;
    }
    catch (Exception paramBundle) {}
  }
  
  protected void onPause()
  {
    super.onPause();
    FexApplication.a().d();
  }
  
  protected void onResume()
  {
    super.onResume();
    FexApplication.a().c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESPreferenceActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */