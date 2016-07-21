package com.estrongs.android.ui.preference.fragments;

import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.ad;

class y
  implements Preference.OnPreferenceChangeListener
{
  y(DirectoryPreferenceFragment paramDirectoryPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramObject = paramObject.toString();
    if (((String)paramObject).trim().equals(""))
    {
      DirectoryPreferenceFragment.a(a);
      return false;
    }
    boolean bool = DirectoryPreferenceFragment.a(a, (String)paramObject);
    paramPreference = (Preference)paramObject;
    if (((String)paramObject).charAt(((String)paramObject).length() - 1) != '/') {
      paramPreference = (String)paramObject + "/";
    }
    DirectoryPreferenceFragment.b(a, paramPreference);
    DirectoryPreferenceFragment.a(a, 2);
    if (bool)
    {
      DirectoryPreferenceFragment.d(a).setSummary(paramPreference);
      DirectoryPreferenceFragment.c(a).t(paramPreference);
      DirectoryPreferenceFragment.d(a).setText(paramPreference);
      return true;
    }
    DirectoryPreferenceFragment.a(a);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */