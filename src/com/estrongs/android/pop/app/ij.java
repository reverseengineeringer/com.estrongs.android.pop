package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.preference.CustomListPreference;
import com.estrongs.android.util.bd;

class ij
  implements Preference.OnPreferenceChangeListener
{
  ij(PopPreferenceActivity paramPopPreferenceActivity, CustomListPreference paramCustomListPreference) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramPreference = a.a(paramObject.toString());
    if (bd.b(paramPreference)) {
      a.setSummary(paramPreference);
    }
    FexApplication.a().a("search_engine_default", paramObject);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */