package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class gp
  implements Preference.OnPreferenceChangeListener
{
  gp(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue())
    {
      paramPreference = ad.a(a).G();
      if ((paramPreference == null) || (paramPreference.length() == 0))
      {
        a.showDialog(108);
        return false;
      }
      a.r.setEnabled(true);
      FexApplication.a().c(((Boolean)paramObject).booleanValue());
      return true;
    }
    a.showDialog(109);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */