package com.estrongs.android.ui.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class a
{
  public static int a;
  public static int b;
  public static int c;
  public static int d;
  public static int e;
  
  public static int a(Context paramContext, float paramFloat)
  {
    return (int)TypedValue.applyDimension(1, paramFloat, paramContext.getResources().getDisplayMetrics());
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    Bitmap localBitmap;
    if (paramBitmap == null) {
      localBitmap = null;
    }
    do
    {
      return localBitmap;
      localBitmap = paramBitmap;
    } while (paramInt == paramBitmap.getWidth());
    return Bitmap.createScaledBitmap(paramBitmap, paramInt, (int)(paramInt / paramBitmap.getWidth() * paramBitmap.getHeight()), true);
  }
  
  public static Bitmap a(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    int i = paramBitmap1.getWidth();
    int j = paramBitmap1.getHeight();
    Bitmap localBitmap1;
    if (paramBitmap2.getWidth() >= i)
    {
      localBitmap1 = paramBitmap2;
      if (paramBitmap2.getHeight() >= j) {}
    }
    else
    {
      localBitmap1 = Bitmap.createScaledBitmap(paramBitmap2, i, j, true);
      paramBitmap2.recycle();
    }
    paramBitmap2 = new ByteArrayOutputStream();
    Bitmap localBitmap2 = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap2);
    localCanvas.drawBitmap(paramBitmap1, 0.0F, 0.0F, null);
    localCanvas.drawBitmap(localBitmap1, 0.0F, 0.0F, null);
    localBitmap2.compress(Bitmap.CompressFormat.PNG, 100, paramBitmap2);
    paramBitmap1 = paramBitmap2.toByteArray();
    try
    {
      paramBitmap2.close();
      return BitmapFactory.decodeByteArray(paramBitmap1, 0, paramBitmap1.length);
    }
    catch (IOException paramBitmap2)
    {
      for (;;)
      {
        paramBitmap2.printStackTrace();
      }
    }
  }
  
  public static Bitmap a(Bitmap paramBitmap, boolean paramBoolean)
  {
    if (paramBitmap == null) {
      return null;
    }
    int j = paramBitmap.getWidth();
    int i = paramBitmap.getHeight();
    int k = c;
    int m = c;
    float f = Math.min(i / m, j / k);
    j = (int)(j / f);
    i = (int)(i / f);
    Bitmap localBitmap1 = Bitmap.createScaledBitmap(paramBitmap, j, i, true);
    i = Math.min(j, i);
    Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, 0, i, i);
    paramBitmap.recycle();
    localBitmap1.recycle();
    return localBitmap2;
  }
  
  public static Bitmap a(BitmapDrawable paramBitmapDrawable1, BitmapDrawable paramBitmapDrawable2)
  {
    return a(paramBitmapDrawable1.getBitmap(), paramBitmapDrawable2.getBitmap());
  }
  
  public static Bitmap a(View paramView)
  {
    if (!paramView.isDrawingCacheEnabled()) {
      paramView.setDrawingCacheEnabled(true);
    }
    try
    {
      paramView.setWillNotCacheDrawing(false);
      paramView.setDrawingCacheQuality(1048576);
      paramView.destroyDrawingCache();
      paramView.buildDrawingCache();
      paramView = paramView.getDrawingCache();
      return paramView;
    }
    catch (Throwable paramView)
    {
      Log.w("ImageUtils", "getViewDrawingCache() catchs " + paramView.getMessage());
    }
    return null;
  }
  
  public static BitmapFactory.Options a(String paramString)
  {
    try
    {
      paramString = d.a().e(paramString);
      if (paramString == null)
      {
        paramString = new BitmapFactory.Options();
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      return new BitmapFactory.Options();
    }
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeStream(paramString, null, localOptions);
    j.a(paramString);
    return localOptions;
  }
  
  public static String a(Context paramContext, h paramh)
  {
    return a(paramContext, paramh, true);
  }
  
  public static String a(Context paramContext, h paramh, boolean paramBoolean)
  {
    paramh = a(paramh.getAbsolutePath());
    int i = outWidth;
    int j = outHeight;
    if ((i > 0) && (j > 0)) {
      return String.format(paramContext.getString(2131428712), new Object[] { Integer.valueOf(i), Integer.valueOf(j) });
    }
    if (paramBoolean) {
      return paramContext.getString(2131428708);
    }
    return null;
  }
  
  public static String a(Point paramPoint)
  {
    return "(" + x + "," + y + ")";
  }
  
  public static void a(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    d = widthPixels;
    e = heightPixels;
    a = d / 5;
    b = e / 5;
    if ((d == 240) && (e == 320))
    {
      c = (int)Math.min(d / 6.5D, e / 6.5D);
      return;
    }
    if ((d == 320) && (e == 480))
    {
      c = Math.min(d / 5, e / 5);
      return;
    }
    if ((d == 480) && (e == 800))
    {
      c = (int)Math.min(d / 4.5F, e / 4.5F);
      return;
    }
    if ((d == 640) && (e == 960))
    {
      c = Math.min(d / 5, e / 5);
      return;
    }
    if ((d == 720) && (e == 1280))
    {
      c = (int)Math.min(d / 4.5F, e / 4.5F);
      return;
    }
    try
    {
      c = (int)Math.min(d / 4.5F, (e - paramContext.getResources().getDimension(2131296257)) / 4.5F);
      return;
    }
    catch (Exception paramContext)
    {
      c = (int)(d / 4.5F);
    }
  }
  
  public static Point b(String paramString)
  {
    Point localPoint = new Point();
    try
    {
      String[] arrayOfString = paramString.substring(1, paramString.length() - 1).split(",");
      localPoint.set(Integer.parseInt(arrayOfString[0]), Integer.parseInt(arrayOfString[1]));
      return localPoint;
    }
    catch (Exception localException)
    {
      throw new IllegalArgumentException("Illegal point string : " + paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */