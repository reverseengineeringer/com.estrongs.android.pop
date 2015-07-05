package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.Preference;
import com.estrongs.android.pop.esclasses.i;

public class WindowPreferenceFragment
  extends i
{
  private Preference a;
  
  @SuppressLint({"NewApi"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034131);
    a = findPreference("default_window");
    a.setOnPreferenceClickListener(new be(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.WindowPreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */