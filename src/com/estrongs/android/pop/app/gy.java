package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.estrongs.android.pop.utils.w;

class gy
  implements Preference.OnPreferenceClickListener
{
  gy(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    try
    {
      w.a(a, "com.estrongs.android.pop", "pname");
      return true;
    }
    catch (Exception paramPreference)
    {
      for (;;)
      {
        paramPreference.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */