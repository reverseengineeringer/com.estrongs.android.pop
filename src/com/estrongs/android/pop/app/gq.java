package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class gq
  implements Preference.OnPreferenceChangeListener
{
  gq(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue())
    {
      paramPreference = ad.a(a).G();
      if ((paramPreference == null) || (paramPreference.length() == 0))
      {
        a.showDialog(111);
        return false;
      }
      a.r.setEnabled(true);
      FexApplication.a().d(((Boolean)paramObject).booleanValue());
      return true;
    }
    a.showDialog(112);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */