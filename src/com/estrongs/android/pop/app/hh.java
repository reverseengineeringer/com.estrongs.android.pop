package com.estrongs.android.pop.app;

import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.ap;
import com.estrongs.fs.a.b;

class hh
  implements Preference.OnPreferenceChangeListener
{
  hh(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    a.b.b(Boolean.valueOf(paramObject.toString()).booleanValue());
    paramPreference = ap.bW(a.c.getText()) + "*";
    b.a().a(paramPreference);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */