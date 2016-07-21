package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class hc
  implements Preference.OnPreferenceChangeListener
{
  hc(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue())
    {
      paramPreference = ad.a(a).H();
      if ((paramPreference == null) || (paramPreference.length() == 0))
      {
        a.showDialog(108);
        return false;
      }
      a.p.setEnabled(true);
      FexApplication.a().c(((Boolean)paramObject).booleanValue());
      return true;
    }
    a.showDialog(109);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */