package com.estrongs.android.ui.preference;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

class m
  implements Preference.OnPreferenceClickListener
{
  m(FtpServerPreference paramFtpServerPreference) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.setClassName(a, "com.estrongs.android.pop.ftp.ESFtpShortcut");
    localIntent.addFlags(268435456);
    localIntent.putExtra("mode", 1);
    paramPreference = new Intent();
    paramPreference.putExtra("android.intent.extra.shortcut.INTENT", localIntent);
    paramPreference.putExtra("android.intent.extra.shortcut.NAME", a.getText(2131427671));
    try
    {
      paramPreference.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeResource(a.getResources(), 2130837673));
      paramPreference.putExtra("duplicate", true);
      paramPreference.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
      a.sendBroadcast(paramPreference);
      return true;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */