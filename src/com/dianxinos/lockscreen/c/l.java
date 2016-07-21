package com.dianxinos.lockscreen.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;

public class l
{
  public static float a(Context paramContext)
  {
    try
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
      float f = density;
      return f;
    }
    catch (Exception paramContext) {}
    return 160.0F;
  }
  
  public static int a(Context paramContext, int paramInt)
  {
    return (int)(paramInt * a(paramContext) + 0.5F);
  }
  
  public static Bitmap a(View paramView, Bitmap.Config paramConfig)
  {
    int i = paramView.getWidth();
    int j = paramView.getHeight();
    if ((paramView != null) && (i > 0) && (j > 0))
    {
      Bitmap localBitmap = Bitmap.createBitmap(i, j, paramConfig);
      paramView.draw(new Canvas(localBitmap));
      if (g.a) {
        g.a("UIUtils", String.format("create bitmap %dx%d, format %s", new Object[] { Integer.valueOf(i), Integer.valueOf(j), paramConfig }));
      }
      return localBitmap;
    }
    return null;
  }
  
  public static float b(Context paramContext, int paramInt)
  {
    return paramInt * a(paramContext) + 0.5F;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.c.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */