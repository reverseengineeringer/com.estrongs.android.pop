package com.duapps.ad.base;

import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;

public class q
{
  public static void a(SharedPreferences.Editor paramEditor)
  {
    if (Build.VERSION.SDK_INT <= 8)
    {
      paramEditor.commit();
      return;
    }
    paramEditor.apply();
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */