package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.preference.Preference;
import com.estrongs.android.pop.esclasses.m;
import com.estrongs.android.pop.view.FileExplorerActivity;

@SuppressLint({"NewApi"})
public class CleanPreferenceFragment
  extends m
{
  private Preference a;
  private ProgressDialog b;
  private Preference c;
  
  private void a()
  {
    if (FileExplorerActivity.X() == null) {
      return;
    }
    b();
    FileExplorerActivity.X().a(true, new Handler(), new w(this));
  }
  
  private void b()
  {
    b = new ProgressDialog(getActivity());
    b.setMessage(getText(2131232177));
    b.setIndeterminate(true);
    b.setCancelable(true);
    b.show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034122);
    a = findPreference("cache");
    a.setOnPreferenceClickListener(new u(this));
    c = findPreference("clean_prefer");
    if (c != null) {
      c.setOnPreferenceClickListener(new v(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.CleanPreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */