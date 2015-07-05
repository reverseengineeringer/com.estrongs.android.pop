package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.Preference;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.ui.preference.CustomListPreference;

@SuppressLint({"NewApi"})
public class SearchEnginePreferenceFragment
  extends i
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034129);
    paramBundle = (CustomListPreference)findPreference("search_engine_default");
    String[] arrayOfString1 = getResources().getStringArray(2131165198);
    String[] arrayOfString2 = new String[arrayOfString1.length];
    arrayOfString2[0] = getString(2131427988);
    int i = 1;
    while (i < arrayOfString1.length)
    {
      arrayOfString2[i] = arrayOfString1[i];
      i += 1;
    }
    paramBundle.setEntries(arrayOfString2);
    if ((paramBundle.getValue() == null) || (paramBundle.getValue().equalsIgnoreCase("auto"))) {
      paramBundle.setSummary(getString(2131427988));
    }
    for (;;)
    {
      paramBundle.setOnPreferenceChangeListener(new bb(this, paramBundle));
      paramBundle = findPreference("show_search_engine");
      if (paramBundle != null) {
        paramBundle.setOnPreferenceChangeListener(new bc(this));
      }
      return;
      paramBundle.setSummary(paramBundle.getEntry());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.SearchEnginePreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */