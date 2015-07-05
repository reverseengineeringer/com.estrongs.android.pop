package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.preference.CustomListPreference;
import com.estrongs.android.util.bd;

class bb
  implements Preference.OnPreferenceChangeListener
{
  bb(SearchEnginePreferenceFragment paramSearchEnginePreferenceFragment, CustomListPreference paramCustomListPreference) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    CharSequence localCharSequence = a.a(paramObject.toString());
    if (bd.b(localCharSequence)) {
      a.setSummary(localCharSequence);
    }
    paramPreference = paramPreference.getKey();
    FexApplication.a().a(paramPreference, paramObject);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */