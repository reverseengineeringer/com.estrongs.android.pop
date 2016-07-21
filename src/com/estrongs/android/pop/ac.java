package com.estrongs.android.pop;

import android.os.Build;
import android.os.Build.VERSION;
import com.estrongs.android.util.bk;

public class ac
{
  public static int a()
  {
    try
    {
      int i = Integer.parseInt(Build.VERSION.SDK);
      return i;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return 3;
  }
  
  public static String b()
  {
    if (bk.a(Build.MODEL)) {
      return "";
    }
    return Build.MODEL;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */