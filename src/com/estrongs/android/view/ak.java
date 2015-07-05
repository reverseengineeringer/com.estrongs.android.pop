package com.estrongs.android.view;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.a.l;
import java.math.BigDecimal;

public class ak
  extends ea
{
  private View A = k(2131362166);
  private View B = k(2131362067);
  private long C = 0L;
  private long D = 0L;
  private String E;
  private String F;
  private String G;
  private long H;
  private long I;
  private int J;
  private int K;
  boolean a = true;
  public final Handler b = new al(this);
  public final l c = new am(this);
  String d = null;
  String e = null;
  private long f;
  private long g;
  private int h = -1;
  private ProgressBar i = (ProgressBar)k(2131362165);
  private ProgressBar j = (ProgressBar)k(2131362159);
  private TextView k = (TextView)k(2131361822);
  private TextView l = (TextView)k(2131362057);
  private TextView m = (TextView)k(2131362157);
  private TextView n = (TextView)k(2131362061);
  private TextView o = (TextView)k(2131362062);
  private TextView p = (TextView)k(2131362156);
  private TextView q = (TextView)k(2131362161);
  private TextView r = (TextView)k(2131362164);
  private TextView s = (TextView)k(2131362158);
  private TextView t = (TextView)k(2131362162);
  private TextView u = (TextView)k(2131362163);
  private TextView v = (TextView)k(2131362168);
  private TextView w = (TextView)k(2131362169);
  private View x = k(2131362155);
  private View y = k(2131362160);
  private View z = k(2131362058);
  
  public ak(Activity paramActivity, String paramString1, String paramString2)
  {
    super(paramActivity);
    if ((paramString1 != null) && (!"".equals(paramString1))) {
      n.setText(paramString1);
    }
    while ((paramString2 != null) && (!"".equals(paramString2)))
    {
      o.setText(paramString2);
      return;
      n.setVisibility(8);
      k(2131362059).setVisibility(8);
    }
    o.setVisibility(8);
    k(2131362060).setVisibility(8);
  }
  
  private double a(long paramLong1, long paramLong2)
  {
    if ((paramLong1 == 0L) || (paramLong2 == 0L)) {
      return 0.0D;
    }
    float f1 = (float)paramLong1 / (float)paramLong2;
    try
    {
      double d1 = new BigDecimal(f1 * 100.0F).setScale(2, 4).doubleValue();
      return d1;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0.0D;
  }
  
  private String a(long paramLong, int paramInt)
  {
    if (paramLong <= 0L) {
      return "00:00:00";
    }
    if (paramInt <= 0) {
      return ad.getString(2131427959);
    }
    paramLong /= paramInt;
    long l1 = paramLong;
    int i1;
    int i2;
    StringBuilder localStringBuilder;
    if (paramLong > 15L)
    {
      if (h == -1)
      {
        g = paramLong;
        f = System.currentTimeMillis();
        h = 0;
        l1 = paramLong;
      }
    }
    else
    {
      paramInt = (int)(l1 / 3600L);
      i1 = (int)((l1 - paramInt * 3600) / 60L);
      i2 = (int)(l1 - paramInt * 3600 - i1 * 60);
      localStringBuilder = new StringBuilder();
      if (paramInt >= 10) {
        break label323;
      }
      localObject = "0" + paramInt;
      label146:
      localStringBuilder = localStringBuilder.append(localObject).append(":");
      if (i1 >= 10) {
        break label332;
      }
      localObject = "0" + i1;
      label189:
      localStringBuilder = localStringBuilder.append(localObject).append(":");
      if (i2 >= 10) {
        break label342;
      }
    }
    label323:
    label332:
    label342:
    for (Object localObject = "0" + i2;; localObject = Integer.valueOf(i2))
    {
      return (String)localObject;
      if (h < 5)
      {
        paramInt = (int)Math.round((System.currentTimeMillis() - f) / 1000.0D);
        i1 = (int)(g - paramInt);
        if (i1 > 0) {
          paramLong = i1;
        }
        h = paramInt;
        l1 = paramLong;
        break;
      }
      g = paramLong;
      f = System.currentTimeMillis();
      h = 0;
      l1 = paramLong;
      break;
      localObject = Integer.valueOf(paramInt);
      break label146;
      localObject = Integer.valueOf(i1);
      break label189;
    }
  }
  
  protected int a()
  {
    return 2130903112;
  }
  
  public void a(int paramInt)
  {
    J = paramInt;
    b.sendEmptyMessage(9);
  }
  
  public void a(long paramLong)
  {
    C = paramLong;
    b.sendEmptyMessage(1);
  }
  
  public void a(String paramString)
  {
    b.sendMessage(b.obtainMessage(12, paramString));
  }
  
  public void a(String paramString1, String paramString2)
  {
    E = paramString1;
    F = paramString2;
    b.sendEmptyMessage(5);
  }
  
  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void b()
  {
    v.setText("");
    w.setText("");
  }
  
  public void b(int paramInt)
  {
    K = paramInt;
    b.sendEmptyMessage(10);
  }
  
  public void b(long paramLong)
  {
    D = paramLong;
    b.sendEmptyMessage(4);
  }
  
  public void b(String paramString1, String paramString2)
  {
    d = paramString1;
    e = paramString2;
  }
  
  public void c()
  {
    b.sendEmptyMessage(13);
  }
  
  public void c(int paramInt)
  {
    A.setVisibility(paramInt);
  }
  
  public void c(long paramLong)
  {
    H = paramLong;
    b.sendEmptyMessage(7);
  }
  
  public void d(int paramInt)
  {
    x.setVisibility(paramInt);
  }
  
  public void d(long paramLong)
  {
    I = paramLong;
    b.sendEmptyMessage(8);
  }
  
  public void e(int paramInt)
  {
    y.setVisibility(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */