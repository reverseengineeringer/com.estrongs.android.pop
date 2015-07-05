package com.estrongs.android.ui.preference;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.ftp.k;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.z;

class d
  implements Preference.OnPreferenceChangeListener
{
  d(FtpServerPreference paramFtpServerPreference) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramObject = paramObject.toString();
    FtpServerPreference.a(a, 3);
    if (((String)paramObject).trim().equals(""))
    {
      a.showDialog(105);
      return false;
    }
    if ((z.n) && (((String)paramObject).trim().equals("/"))) {
      return false;
    }
    boolean bool = FtpServerPreference.a(a, (String)paramObject);
    paramPreference = (Preference)paramObject;
    if (((String)paramObject).charAt(((String)paramObject).length() - 1) != '/') {
      paramPreference = (String)paramObject + "/";
    }
    FtpServerPreference.b(a, paramPreference);
    if (bool)
    {
      a.a.setSummary(a.getText(2131427790) + paramPreference);
      a.a.setText(paramPreference);
      FtpServerPreference.a(a).D(paramPreference);
    }
    try
    {
      paramObject = k.a();
      ((k)paramObject).a(a, new e(this, (k)paramObject, paramPreference));
      return true;
      a.showDialog(105);
      return false;
    }
    catch (Exception paramPreference)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */