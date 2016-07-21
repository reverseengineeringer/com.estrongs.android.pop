package com.dianxinos.library.notify.j;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class b
{
  public static int a(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext.getMetrics(localDisplayMetrics);
    if (heightPixels > widthPixels) {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.j.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */