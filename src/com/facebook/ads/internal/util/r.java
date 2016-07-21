package com.facebook.ads.internal.util;

import android.graphics.Bitmap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class r
{
  static final int a = Runtime.getRuntime().availableProcessors();
  static final ExecutorService b = Executors.newFixedThreadPool(a);
  private static volatile boolean c = true;
  private final Bitmap d;
  private Bitmap e;
  private final j f;
  
  public r(Bitmap paramBitmap)
  {
    d = paramBitmap;
    f = new n();
  }
  
  public Bitmap a()
  {
    return e;
  }
  
  public Bitmap a(int paramInt)
  {
    e = f.a(d, paramInt);
    return e;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.util.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */