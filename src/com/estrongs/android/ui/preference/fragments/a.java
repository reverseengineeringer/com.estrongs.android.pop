package com.estrongs.android.ui.preference.fragments;

import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.ad;
import com.estrongs.fs.impl.local.i;

class a
  implements Preference.OnPreferenceChangeListener
{
  a(AppPreferenceFragment paramAppPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramObject = paramObject.toString();
    if (((String)paramObject).trim().equals(""))
    {
      AppPreferenceFragment.a(a);
      return false;
    }
    if ((i.h((String)paramObject)) && (i.a((String)paramObject))) {}
    for (int i = 1;; i = 0)
    {
      paramPreference = (Preference)paramObject;
      if (((String)paramObject).charAt(((String)paramObject).length() - 1) != '/') {
        paramPreference = (String)paramObject + "/";
      }
      AppPreferenceFragment.a(a, paramPreference);
      AppPreferenceFragment.a(a, 1);
      if (i == 0) {
        break;
      }
      AppPreferenceFragment.b(a).setSummary(paramPreference);
      AppPreferenceFragment.b(a).setText(paramPreference);
      AppPreferenceFragment.c(a).s(paramPreference);
      return true;
    }
    AppPreferenceFragment.a(a);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */