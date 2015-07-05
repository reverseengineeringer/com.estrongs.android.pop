package com.estrongs.android.ui.preference;

import android.content.Intent;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.ftp.ESFtpShortcut;
import com.estrongs.android.ui.view.ag;

class h
  implements Preference.OnPreferenceChangeListener
{
  h(FtpServerPreference paramFtpServerPreference) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    int i = ad.a(a).V();
    paramPreference = paramObject.toString();
    if (paramPreference.trim().equals(""))
    {
      ag.a(a, "Port can't be null", 0);
      return false;
    }
    int j;
    try
    {
      j = Integer.parseInt(paramPreference);
      if ((j <= 1024) || (j >= 65535)) {
        throw new Exception();
      }
    }
    catch (Exception paramPreference)
    {
      ag.a(a, 2131427654, 0);
      return false;
    }
    if (j == i) {
      return true;
    }
    ad.a(a).b(j);
    try
    {
      new Intent(a, ESFtpShortcut.class).putExtra("mode", 2);
      ag.a(a, 2131427653, 0);
      a.b.setSummary(a.getText(2131427651) + "" + j);
      return true;
    }
    catch (Exception paramPreference)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */