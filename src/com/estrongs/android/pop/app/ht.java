package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.notification.j;

class ht
  implements Preference.OnPreferenceChangeListener
{
  ht(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue()) {
      j.a(FexApplication.a()).b();
    }
    for (;;)
    {
      return true;
      j.a(FexApplication.a()).c();
      j.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */