package com.estrongs.android.pop.app.imageviewer;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.estrongs.android.pop.ah;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.app.imageviewer.gallery.f;
import com.estrongs.android.pop.app.imageviewer.gallery.g;
import com.estrongs.android.pop.esclasses.ESImageView;

public class q
  extends BaseAdapter
{
  t a;
  p b = null;
  int c = 100;
  private Context d;
  private f e;
  private int f;
  private Drawable g;
  private Bitmap h;
  private int i = 0;
  private g<e, ImageView> j = new g();
  
  public q(Context paramContext, f paramf)
  {
    d = paramContext;
    e = paramf;
    paramf = paramContext.obtainStyledAttributes(ah.b);
    f = paramf.getResourceId(0, 0);
    paramf.recycle();
    g = paramContext.getResources().getDrawable(2130837659);
    h = BitmapFactory.decodeResource(paramContext.getResources(), 2130837660);
  }
  
  private void a(int paramInt, e parame, ImageView paramImageView)
  {
    a.a(e.a(paramInt), new r(this, paramInt, paramImageView), paramInt);
  }
  
  public void a()
  {
    if ((h != null) && (!h.isRecycled()))
    {
      h.recycle();
      h = null;
    }
    if (j != null) {
      j.a();
    }
    if (a != null)
    {
      a.a();
      a.b();
      a = null;
    }
  }
  
  public void a(int paramInt)
  {
    i = paramInt;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (a == null) {
      a = new t();
    }
    int k = paramInt1;
    if (paramInt1 < 0) {
      k = 0;
    }
    int m = k;
    paramInt1 = paramInt2;
    if (paramInt2 > e.b())
    {
      paramInt1 = e.b();
      m = k;
    }
    while (m < paramInt1)
    {
      e locale = e.a(m);
      ImageView localImageView = (ImageView)j.a(locale);
      if ((localImageView != null) && (localImageView.getDrawable() == g)) {
        a(m, locale, localImageView);
      }
      m += 1;
    }
  }
  
  public void a(p paramp)
  {
    b = paramp;
  }
  
  public void b(int paramInt)
  {
    c = paramInt;
  }
  
  public int getCount()
  {
    return e.b();
  }
  
  public Object getItem(int paramInt)
  {
    return e.a(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    i = paramInt;
    paramView = e.a(paramInt);
    paramViewGroup = (ImageView)j.a(paramView);
    if ((paramViewGroup != null) && (paramViewGroup.getDrawable() != g)) {
      return paramViewGroup;
    }
    paramViewGroup = new ESImageView(d);
    paramViewGroup.setDrawingCacheEnabled(true);
    paramViewGroup.setLayoutParams(new Gallery.LayoutParams(c, c));
    paramViewGroup.setScaleType(ImageView.ScaleType.FIT_CENTER);
    paramViewGroup.setBackgroundResource(f);
    paramViewGroup.setImageDrawable(g);
    j.a(paramView, paramViewGroup);
    paramViewGroup.setFocusable(true);
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */