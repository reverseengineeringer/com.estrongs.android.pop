package com.estrongs.android.ui.adapter;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.View.OnClickListener;
import android.widget.CompoundButton.OnCheckedChangeListener;

public class a
{
  Drawable a;
  String b;
  public String c;
  public View.OnClickListener d;
  public boolean e = true;
  public boolean f = false;
  public String g = null;
  public CompoundButton.OnCheckedChangeListener h;
  public View.OnClickListener i;
  private String j;
  private Intent k = null;
  private int l = -1;
  
  public a(Drawable paramDrawable, String paramString, View.OnClickListener paramOnClickListener)
  {
    this(paramDrawable, paramString, paramOnClickListener, null);
  }
  
  public a(Drawable paramDrawable, String paramString1, View.OnClickListener paramOnClickListener, String paramString2)
  {
    a = paramDrawable;
    b = paramString1;
    d = paramOnClickListener;
    j = paramString2;
  }
  
  public a(Drawable paramDrawable, String paramString1, String paramString2, View.OnClickListener paramOnClickListener)
  {
    this(paramDrawable, paramString1, paramOnClickListener, null);
    c = paramString2;
  }
  
  public a a(int paramInt)
  {
    l = paramInt;
    return this;
  }
  
  public a a(Intent paramIntent)
  {
    k = paramIntent;
    return this;
  }
  
  public a a(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public boolean a()
  {
    return true;
  }
  
  public String b()
  {
    return j;
  }
  
  public Intent c()
  {
    return k;
  }
  
  public int d()
  {
    return l;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */