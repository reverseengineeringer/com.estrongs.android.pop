package com.estrongs.android.pop.app;

import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.ad;

class iy
  implements Preference.OnPreferenceChangeListener
{
  iy(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramObject = paramObject.toString();
    if (((String)paramObject).trim().equals(""))
    {
      a.showDialog(105);
      return false;
    }
    boolean bool = PopPreferenceActivity.a(a, (String)paramObject);
    paramPreference = (Preference)paramObject;
    if (((String)paramObject).charAt(((String)paramObject).length() - 1) != '/') {
      paramPreference = (String)paramObject + "/";
    }
    PopPreferenceActivity.b(a, paramPreference);
    PopPreferenceActivity.a(a, 3);
    if (bool)
    {
      a.e.setSummary(paramPreference);
      a.e.setText(paramPreference);
      a.b.u(paramPreference);
      return true;
    }
    a.showDialog(105);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.iy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */