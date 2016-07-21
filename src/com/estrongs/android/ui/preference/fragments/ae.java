package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.util.ap;
import com.estrongs.fs.a.b;

class ae
  implements Preference.OnPreferenceChangeListener
{
  ae(DisplayPreferenceFragment paramDisplayPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    DisplayPreferenceFragment.b(a).b(Boolean.valueOf(paramObject.toString()).booleanValue());
    paramPreference = ap.bW(DisplayPreferenceFragment.b(a).j(a.a)) + "*";
    b.a().a(paramPreference);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */