package com.estrongs.android.ui.preference.fragments;

import android.app.Activity;
import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.estrongs.android.pop.app.HelpActivity;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.ak;

class an
  implements Preference.OnPreferenceClickListener
{
  an(am paramam) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    if (ak.d())
    {
      paramPreference = new Intent();
      paramPreference.setClassName(a.getActivity().getPackageName(), HelpActivity.class.getName());
      a.getActivity().startActivity(paramPreference);
    }
    for (;;)
    {
      return true;
      paramPreference = new ct(a.getActivity());
      paramPreference.a(a.getText(2131427398)).b(a.getText(2131427796)).a(2131427339, new ao(this));
      paramPreference.c();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */