package com.estrongs.android.ui.preference;

import android.content.Intent;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.ftp.ESFtpShortcut;
import com.estrongs.android.ui.view.ak;

class h
  implements Preference.OnPreferenceChangeListener
{
  h(FtpServerPreference paramFtpServerPreference) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    int i = ad.a(a).W();
    paramPreference = paramObject.toString();
    if (paramPreference.trim().equals(""))
    {
      ak.a(a, "Port can't be null", 0);
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
      ak.a(a, 2131232060, 0);
      return false;
    }
    if (j == i) {
      return true;
    }
    ad.a(a).b(j);
    try
    {
      new Intent(a, ESFtpShortcut.class).putExtra("mode", 2);
      ak.a(a, 2131232059, 0);
      a.b.setSummary(a.getText(2131232057) + "" + j);
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