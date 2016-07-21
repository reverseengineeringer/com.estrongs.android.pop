package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class he
  implements Preference.OnPreferenceChangeListener
{
  he(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue())
    {
      paramPreference = ad.a(a).H();
      if ((paramPreference == null) || (paramPreference.length() == 0))
      {
        a.showDialog(113);
        return false;
      }
      a.p.setEnabled(true);
      FexApplication.a().e(((Boolean)paramObject).booleanValue());
      return true;
    }
    a.showDialog(114);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.he
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */