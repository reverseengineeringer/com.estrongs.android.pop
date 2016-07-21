package com.estrongs.android.pop.utils;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class cu
{
  public static boolean a(Context paramContext)
  {
    paramContext = paramContext.getResources().getDisplayMetrics();
    double d = Math.pow(widthPixels * 1.0D / densityDpi, 2.0D);
    return Math.sqrt(Math.pow(heightPixels * 1.0D / densityDpi, 2.0D) + d) >= 6.5D;
  }
  
  public static boolean b(Context paramContext)
  {
    return getResourcesgetConfigurationorientation == 1;
  }
  
  public static boolean c(Context paramContext)
  {
    paramContext = paramContext.getResources().getDisplayMetrics();
    double d = Math.pow(widthPixels * 1.0D / densityDpi, 2.0D);
    d = Math.sqrt(Math.pow(heightPixels * 1.0D / densityDpi, 2.0D) + d);
    return (d >= 6.5D) && (d < 9.0D);
  }
  
  public static boolean d(Context paramContext)
  {
    paramContext = paramContext.getResources().getDisplayMetrics();
    double d = Math.pow(widthPixels * 1.0D / densityDpi, 2.0D);
    return Math.sqrt(Math.pow(heightPixels * 1.0D / densityDpi, 2.0D) + d) >= 20.0D;
  }
  
  public static int e(Context paramContext)
  {
    return getResourcesgetDisplayMetricswidthPixels;
  }
  
  public static int f(Context paramContext)
  {
    return getResourcesgetDisplayMetricsheightPixels;
  }
  
  public static int[] g(Context paramContext)
  {
    paramContext = paramContext.getResources().getDisplayMetrics();
    return new int[] { widthPixels, heightPixels };
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */