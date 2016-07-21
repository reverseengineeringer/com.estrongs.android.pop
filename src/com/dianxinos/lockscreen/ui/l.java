package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import java.util.Locale;

public class l
{
  private static Typeface a;
  private static Typeface b;
  
  public static Typeface a(Context paramContext, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      if (a == null) {
        a = Typeface.createFromAsset(paramContext.getAssets(), "fonts/Roboto-Light.ttf");
      }
      return a;
    case 1: 
      if (a == null) {
        a = Typeface.createFromAsset(paramContext.getAssets(), "fonts/Roboto-Light.ttf");
      }
      return a;
    }
    if (b == null) {
      b = Typeface.createFromAsset(paramContext.getAssets(), "fonts/Roboto-Thin.ttf");
    }
    return b;
  }
  
  public static boolean a(Context paramContext)
  {
    try
    {
      boolean bool = getResourcesgetConfigurationlocale.toString().startsWith("en");
      if (bool) {
        return true;
      }
    }
    catch (Exception paramContext) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */