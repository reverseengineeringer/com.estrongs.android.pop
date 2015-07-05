package com.estrongs.android.view;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import java.math.BigDecimal;

public class dg
  extends ea
{
  boolean a;
  public final Handler b;
  public final l c;
  public TextView d;
  public TextView e;
  public TextView f;
  public TextView g;
  public TextView h;
  private ProgressBar i;
  private View j;
  private View k;
  private int l;
  private int m;
  private int n;
  private String o;
  private boolean p;
  private int q;
  private int r;
  
  public dg(Activity paramActivity, ViewGroup paramViewGroup, String paramString) {}
  
  private double a(long paramLong1, long paramLong2)
  {
    if (paramLong2 == 0L) {
      return 1.0D;
    }
    return new BigDecimal((float)paramLong1 / (float)paramLong2 * 100.0F).setScale(2, 4).doubleValue();
  }
  
  protected int a()
  {
    return 2130903229;
  }
  
  protected String a(m paramm)
  {
    if (!bd.a(a)) {
      return am.D(a);
    }
    return null;
  }
  
  public void a(int paramInt)
  {
    l = paramInt;
    b.sendEmptyMessage(3);
  }
  
  public void a(long paramLong)
  {
    m = ((int)paramLong);
    b.sendEmptyMessage(1);
  }
  
  public void a(String paramString)
  {
    o = paramString;
    b.sendEmptyMessage(5);
  }
  
  public void b()
  {
    b.sendEmptyMessage(6);
  }
  
  public void b(long paramLong)
  {
    n = ((int)paramLong);
    b.sendEmptyMessage(4);
  }
  
  public void c(long paramLong)
  {
    q = ((int)paramLong);
    b.sendEmptyMessage(7);
  }
  
  public void d(long paramLong)
  {
    r = ((int)paramLong);
    b.sendEmptyMessage(8);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */