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
import android.graphics.drawable.Drawable;
import android.support.v4.b.a.a;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import com.estrongs.android.util.l;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.Array;

public class g
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
  
  public static Bitmap a(Drawable paramDrawable, BitmapDrawable paramBitmapDrawable)
  {
    int i = paramDrawable.getIntrinsicWidth();
    int j = paramDrawable.getIntrinsicHeight();
    if (paramDrawable.getOpacity() != -1) {}
    for (Object localObject = Bitmap.Config.ARGB_8888;; localObject = Bitmap.Config.RGB_565)
    {
      localObject = Bitmap.createBitmap(i, j, (Bitmap.Config)localObject);
      Canvas localCanvas = new Canvas((Bitmap)localObject);
      paramDrawable.setBounds(0, 0, i, j);
      paramDrawable.draw(localCanvas);
      return a((Bitmap)localObject, paramBitmapDrawable.getBitmap());
    }
  }
  
  public static Bitmap a(View paramView)
  {
    if (!paramView.isDrawingCacheEnabled()) {
      paramView.setDrawingCacheEnabled(true);
    }
    try
    {
      paramView.setWillNotCacheDrawing(false);
      paramView.setBackgroundColor(871954687);
      paramView.destroyDrawingCache();
      paramView.buildDrawingCache();
      paramView = paramView.getDrawingCache();
      return paramView;
    }
    catch (Throwable paramView)
    {
      l.d("ImageUtils", "getViewDrawingCache() catchs " + paramView.getMessage());
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
  
  public static Drawable a(Drawable paramDrawable, int paramInt)
  {
    paramDrawable = a.f(paramDrawable);
    paramDrawable.mutate();
    a.a(paramDrawable, paramInt);
    return paramDrawable;
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
      return String.format(paramContext.getString(2131231330), new Object[] { Integer.valueOf(i), Integer.valueOf(j) });
    }
    if (paramBoolean) {
      return paramContext.getString(2131232212);
    }
    return null;
  }
  
  public static String a(Point paramPoint)
  {
    return "(" + x + "," + y + ")";
  }
  
  public static void a(Context paramContext)
  {
    paramContext = paramContext.getResources().getDisplayMetrics();
    d = widthPixels;
    e = heightPixels;
    a = d / 5;
    b = e / 5;
    c = (int)(e * 0.2F);
  }
  
  public static Bitmap b(Bitmap paramBitmap, int paramInt)
  {
    Bitmap localBitmap = paramBitmap.copy(paramBitmap.getConfig(), true);
    paramBitmap.recycle();
    if (paramInt < 1) {
      return null;
    }
    int i12 = localBitmap.getWidth();
    int i13 = localBitmap.getHeight();
    paramBitmap = new int[i12 * i13];
    localBitmap.getPixels(paramBitmap, 0, i12, 0, 0, i12, i13);
    int i11 = i12 - 1;
    int i14 = i13 - 1;
    int i = i12 * i13;
    int i15 = paramInt + paramInt + 1;
    int[] arrayOfInt1 = new int[i];
    int[] arrayOfInt2 = new int[i];
    int[] arrayOfInt3 = new int[i];
    int[] arrayOfInt4 = new int[Math.max(i12, i13)];
    i = i15 + 1 >> 1;
    int j = i * i;
    int[] arrayOfInt5 = new int[j * 256];
    i = 0;
    while (i < j * 256)
    {
      arrayOfInt5[i] = (i / j);
      i += 1;
    }
    int[][] arrayOfInt = (int[][])Array.newInstance(Integer.TYPE, new int[] { i15, 3 });
    int i16 = paramInt + 1;
    int i7 = 0;
    i = 0;
    int i6 = 0;
    int i8;
    int m;
    int n;
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    int k;
    int i9;
    int[] arrayOfInt6;
    int i10;
    int i17;
    while (i6 < i13)
    {
      j = 0;
      i8 = -paramInt;
      m = 0;
      n = 0;
      i1 = 0;
      i2 = 0;
      i3 = 0;
      i4 = 0;
      i5 = 0;
      k = 0;
      if (i8 <= paramInt)
      {
        i9 = paramBitmap[(Math.min(i11, Math.max(i8, 0)) + i)];
        arrayOfInt6 = arrayOfInt[(i8 + paramInt)];
        arrayOfInt6[0] = ((0xFF0000 & i9) >> 16);
        arrayOfInt6[1] = ((0xFF00 & i9) >> 8);
        arrayOfInt6[2] = (i9 & 0xFF);
        i9 = i16 - Math.abs(i8);
        i5 += arrayOfInt6[0] * i9;
        i4 += arrayOfInt6[1] * i9;
        i3 += i9 * arrayOfInt6[2];
        if (i8 > 0)
        {
          m += arrayOfInt6[0];
          k += arrayOfInt6[1];
          j += arrayOfInt6[2];
        }
        for (;;)
        {
          i8 += 1;
          break;
          i2 += arrayOfInt6[0];
          i1 += arrayOfInt6[1];
          n += arrayOfInt6[2];
        }
      }
      i8 = i4;
      i10 = 0;
      i4 = paramInt;
      i9 = i5;
      i5 = i3;
      i3 = i10;
      while (i3 < i12)
      {
        arrayOfInt1[i] = arrayOfInt5[i9];
        arrayOfInt2[i] = arrayOfInt5[i8];
        arrayOfInt3[i] = arrayOfInt5[i5];
        arrayOfInt6 = arrayOfInt[((i4 - paramInt + i15) % i15)];
        int i18 = arrayOfInt6[0];
        i17 = arrayOfInt6[1];
        i10 = arrayOfInt6[2];
        if (i6 == 0) {
          arrayOfInt4[i3] = Math.min(i3 + paramInt + 1, i11);
        }
        int i19 = paramBitmap[(arrayOfInt4[i3] + i7)];
        arrayOfInt6[0] = ((0xFF0000 & i19) >> 16);
        arrayOfInt6[1] = ((0xFF00 & i19) >> 8);
        arrayOfInt6[2] = (i19 & 0xFF);
        m += arrayOfInt6[0];
        k += arrayOfInt6[1];
        j += arrayOfInt6[2];
        i9 = i9 - i2 + m;
        i8 = i8 - i1 + k;
        i5 = i5 - n + j;
        i4 = (i4 + 1) % i15;
        arrayOfInt6 = arrayOfInt[(i4 % i15)];
        i2 = i2 - i18 + arrayOfInt6[0];
        i1 = i1 - i17 + arrayOfInt6[1];
        n = n - i10 + arrayOfInt6[2];
        m -= arrayOfInt6[0];
        k -= arrayOfInt6[1];
        j -= arrayOfInt6[2];
        i += 1;
        i3 += 1;
      }
      i7 += i12;
      i6 += 1;
    }
    i = 0;
    while (i < i12)
    {
      i5 = 0;
      i7 = -paramInt * i12;
      i6 = -paramInt;
      i3 = 0;
      n = 0;
      i1 = 0;
      i2 = 0;
      j = 0;
      m = 0;
      k = 0;
      i4 = 0;
      if (i6 <= paramInt)
      {
        i8 = Math.max(0, i7) + i;
        arrayOfInt6 = arrayOfInt[(i6 + paramInt)];
        arrayOfInt6[0] = arrayOfInt1[i8];
        arrayOfInt6[1] = arrayOfInt2[i8];
        arrayOfInt6[2] = arrayOfInt3[i8];
        i9 = i16 - Math.abs(i6);
        i10 = arrayOfInt1[i8];
        i11 = arrayOfInt2[i8];
        i17 = arrayOfInt3[i8];
        if (i6 > 0)
        {
          i3 += arrayOfInt6[0];
          i4 += arrayOfInt6[1];
          i5 += arrayOfInt6[2];
        }
        for (;;)
        {
          i8 = i7;
          if (i6 < i14) {
            i8 = i7 + i12;
          }
          i6 += 1;
          j = i17 * i9 + j;
          m = i11 * i9 + m;
          k = i10 * i9 + k;
          i7 = i8;
          break;
          i2 += arrayOfInt6[0];
          i1 += arrayOfInt6[1];
          n += arrayOfInt6[2];
        }
      }
      i9 = m;
      i10 = k;
      i11 = 0;
      k = i;
      i6 = i5;
      i7 = i4;
      i8 = i3;
      m = n;
      n = i1;
      i1 = i2;
      i2 = paramInt;
      i5 = i10;
      i4 = i9;
      i3 = j;
      j = i11;
      while (j < i13)
      {
        paramBitmap[k] = (0xFF000000 & paramBitmap[k] | arrayOfInt5[i5] << 16 | arrayOfInt5[i4] << 8 | arrayOfInt5[i3]);
        arrayOfInt6 = arrayOfInt[((i2 - paramInt + i15) % i15)];
        i11 = arrayOfInt6[0];
        i10 = arrayOfInt6[1];
        i9 = arrayOfInt6[2];
        if (i == 0) {
          arrayOfInt4[j] = (Math.min(j + i16, i14) * i12);
        }
        i17 = arrayOfInt4[j] + i;
        arrayOfInt6[0] = arrayOfInt1[i17];
        arrayOfInt6[1] = arrayOfInt2[i17];
        arrayOfInt6[2] = arrayOfInt3[i17];
        i8 += arrayOfInt6[0];
        i7 += arrayOfInt6[1];
        i6 += arrayOfInt6[2];
        i5 = i5 - i1 + i8;
        i4 = i4 - n + i7;
        i3 = i3 - m + i6;
        i2 = (i2 + 1) % i15;
        arrayOfInt6 = arrayOfInt[i2];
        i1 = i1 - i11 + arrayOfInt6[0];
        n = n - i10 + arrayOfInt6[1];
        m = m - i9 + arrayOfInt6[2];
        i8 -= arrayOfInt6[0];
        i7 -= arrayOfInt6[1];
        i6 -= arrayOfInt6[2];
        k += i12;
        j += 1;
      }
      i += 1;
    }
    localBitmap.setPixels(paramBitmap, 0, i12, 0, 0, i12, i13);
    return localBitmap;
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
 * Qualified Name:     com.estrongs.android.ui.d.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */