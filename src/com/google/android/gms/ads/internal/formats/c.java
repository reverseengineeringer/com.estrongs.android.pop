package com.google.android.gms.ads.internal.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.me;

@me
public class c
  extends ds
{
  private final Drawable a;
  private final Uri b;
  
  public c(Drawable paramDrawable, Uri paramUri)
  {
    a = paramDrawable;
    b = paramUri;
  }
  
  public e a()
  {
    return h.a(a);
  }
  
  public Uri b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */