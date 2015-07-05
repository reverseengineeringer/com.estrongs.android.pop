package com.estrongs.android.pop.utils;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import android.os.StrictMode.ThreadPolicy.Builder;

@SuppressLint({"NewApi"})
public class cf
{
  private StrictMode.ThreadPolicy a;
  
  public void a()
  {
    if (Build.VERSION.SDK_INT > 9)
    {
      StrictMode.ThreadPolicy localThreadPolicy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
      a = StrictMode.getThreadPolicy();
      StrictMode.setThreadPolicy(localThreadPolicy);
    }
  }
  
  public void b()
  {
    if ((Build.VERSION.SDK_INT > 9) && (a != null)) {
      StrictMode.setThreadPolicy(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */