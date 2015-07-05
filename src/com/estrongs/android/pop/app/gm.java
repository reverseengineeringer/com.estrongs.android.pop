package com.estrongs.android.pop.app;

import android.content.Intent;
import android.net.Uri;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.estrongs.android.pop.z;

class gm
  implements Preference.OnPreferenceClickListener
{
  gm(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    if (!z.m) {}
    try
    {
      String str = a.getString(2131428711);
      paramPreference = str;
      if (!str.startsWith("http://"))
      {
        paramPreference = str;
        if (!str.startsWith("https://")) {
          paramPreference = "http://" + str;
        }
      }
      paramPreference = Uri.parse(paramPreference);
      a.startActivity(new Intent("android.intent.action.VIEW", paramPreference));
    }
    catch (Exception paramPreference)
    {
      for (;;) {}
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */