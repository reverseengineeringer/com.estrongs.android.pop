package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Method;

public class lr
{
  public static int a(int paramInt)
  {
    DisplayMetrics localDisplayMetrics = d();
    return Math.round(paramInt / density);
  }
  
  public static boolean a()
  {
    return ((KeyguardManager)js.a().c().getSystemService("keyguard")).inKeyguardRestrictedInputMode();
  }
  
  public static int b(int paramInt)
  {
    DisplayMetrics localDisplayMetrics = d();
    float f = paramInt;
    return Math.round(density * f);
  }
  
  @SuppressLint({"NewApi"})
  public static Point b()
  {
    Display localDisplay = ((WindowManager)js.a().c().getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    if (Build.VERSION.SDK_INT >= 17)
    {
      localDisplay.getRealSize(localPoint);
      return localPoint;
    }
    if (Build.VERSION.SDK_INT >= 14) {
      try
      {
        Method localMethod = Display.class.getMethod("getRawHeight", new Class[0]);
        x = ((Integer)Display.class.getMethod("getRawWidth", new Class[0]).invoke(localDisplay, new Object[0])).intValue();
        y = ((Integer)localMethod.invoke(localDisplay, new Object[0])).intValue();
        return localPoint;
      }
      catch (Throwable localThrowable)
      {
        localDisplay.getSize(localPoint);
        return localPoint;
      }
    }
    if (Build.VERSION.SDK_INT >= 13)
    {
      localDisplay.getSize(localPoint);
      return localPoint;
    }
    x = localDisplay.getWidth();
    y = localDisplay.getHeight();
    return localPoint;
  }
  
  public static DisplayMetrics c()
  {
    Display localDisplay = ((WindowManager)js.a().c().getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localDisplay.getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }
  
  public static Pair<Integer, Integer> c(int paramInt)
  {
    int i = h();
    int j = i();
    switch (paramInt)
    {
    default: 
      return Pair.create(Integer.valueOf(i), Integer.valueOf(j));
    }
    return Pair.create(Integer.valueOf(j), Integer.valueOf(i));
  }
  
  @SuppressLint({"NewApi"})
  public static DisplayMetrics d()
  {
    Display localDisplay = ((WindowManager)js.a().c().getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics;
    if (Build.VERSION.SDK_INT >= 17)
    {
      localDisplayMetrics = new DisplayMetrics();
      localDisplay.getRealMetrics(localDisplayMetrics);
      return localDisplayMetrics;
    }
    if (Build.VERSION.SDK_INT >= 14) {
      try
      {
        localDisplayMetrics = new DisplayMetrics();
        Display.class.getMethod("getRealMetrics", new Class[0]).invoke(localDisplay, new Object[] { localDisplayMetrics });
        return localDisplayMetrics;
      }
      catch (Exception localException)
      {
        return c();
      }
    }
    return c();
  }
  
  public static float e()
  {
    return ddensity;
  }
  
  public static int f()
  {
    return bx;
  }
  
  public static int g()
  {
    return by;
  }
  
  public static int h()
  {
    return a(f());
  }
  
  public static int i()
  {
    return a(g());
  }
  
  public static int j()
  {
    Point localPoint = b();
    if (x == y) {
      return 3;
    }
    if (x < y) {
      return 1;
    }
    return 2;
  }
  
  public static Pair<Integer, Integer> k()
  {
    return Pair.create(Integer.valueOf(h()), Integer.valueOf(i()));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */