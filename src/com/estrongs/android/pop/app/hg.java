package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.notification.i;

class hg
  implements Preference.OnPreferenceChangeListener
{
  hg(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue()) {
      i.a(FexApplication.a()).b();
    }
    for (;;)
    {
      return true;
      i.a(FexApplication.a()).c();
      i.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */