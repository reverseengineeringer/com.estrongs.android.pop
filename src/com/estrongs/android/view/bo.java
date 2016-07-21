package com.estrongs.android.view;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.a.l;
import java.math.BigDecimal;

public class bo
  extends gf
{
  private View A = b(2131624724);
  private View B = b(2131624603);
  private View C = b(2131624730);
  private View D = b(2131624613);
  private long E = 0L;
  private long F = 0L;
  private String G;
  private String H;
  private String I;
  private long J;
  private long K;
  private int L;
  private int M;
  boolean a = true;
  public TextView b;
  public DialogInterface c;
  public final Handler d = new bq(this);
  public final l e = new br(this);
  String f = null;
  String g = null;
  private long h;
  private long i;
  private int j = -1;
  private ProgressBar k = (ProgressBar)b(2131624729);
  private ProgressBar l = (ProgressBar)b(2131624723);
  private TextView m = (TextView)b(2131624200);
  private TextView n = (TextView)b(2131624602);
  private TextView o = (TextView)b(2131624721);
  private TextView p = (TextView)b(2131624606);
  private TextView q = (TextView)b(2131624607);
  private TextView r = (TextView)b(2131624720);
  private TextView s = (TextView)b(2131624725);
  private TextView t = (TextView)b(2131624728);
  private TextView u = (TextView)b(2131624722);
  private TextView v = (TextView)b(2131624726);
  private TextView w = (TextView)b(2131624727);
  private TextView x = (TextView)b(2131624732);
  private TextView y = (TextView)b(2131624733);
  private View z = b(2131624719);
  
  public bo(Activity paramActivity, String paramString1, String paramString2)
  {
    super(paramActivity);
    if ((paramString1 != null) && (!"".equals(paramString1)))
    {
      p.setText(paramString1);
      if ((paramString2 == null) || ("".equals(paramString2))) {
        break label398;
      }
      q.setText(paramString2);
    }
    for (;;)
    {
      b = ((TextView)b(2131624734));
      b.setOnClickListener(new bp(this));
      return;
      p.setVisibility(8);
      b(2131624604).setVisibility(8);
      break;
      label398:
      q.setVisibility(8);
      b(2131624605).setVisibility(8);
    }
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
      return ag.getString(2131231746);
    }
    paramLong /= paramInt;
    long l1 = paramLong;
    int i1;
    int i2;
    StringBuilder localStringBuilder;
    if (paramLong > 15L)
    {
      if (j == -1)
      {
        i = paramLong;
        h = System.currentTimeMillis();
        j = 0;
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
        break label325;
      }
      localObject = "0" + paramInt;
      label146:
      localStringBuilder = localStringBuilder.append(localObject).append(":");
      if (i1 >= 10) {
        break label334;
      }
      localObject = "0" + i1;
      label190:
      localStringBuilder = localStringBuilder.append(localObject).append(":");
      if (i2 >= 10) {
        break label344;
      }
    }
    label325:
    label334:
    label344:
    for (Object localObject = "0" + i2;; localObject = Integer.valueOf(i2))
    {
      return (String)localObject;
      if (j < 5)
      {
        paramInt = (int)Math.round((System.currentTimeMillis() - h) / 1000.0D);
        i1 = (int)(i - paramInt);
        if (i1 > 0) {
          paramLong = i1;
        }
        j = paramInt;
        l1 = paramLong;
        break;
      }
      i = paramLong;
      h = System.currentTimeMillis();
      j = 0;
      l1 = paramLong;
      break;
      localObject = Integer.valueOf(paramInt);
      break label146;
      localObject = Integer.valueOf(i1);
      break label190;
    }
  }
  
  protected int a()
  {
    return 2130903201;
  }
  
  public void a(int paramInt)
  {
    L = paramInt;
    d.sendEmptyMessage(9);
  }
  
  public void a(long paramLong)
  {
    E = paramLong;
    d.sendEmptyMessage(1);
  }
  
  public void a(DialogInterface paramDialogInterface)
  {
    c = paramDialogInterface;
  }
  
  public void a(String paramString)
  {
    d.sendMessage(d.obtainMessage(12, paramString));
  }
  
  public void a(String paramString1, String paramString2)
  {
    G = paramString1;
    H = paramString2;
    d.sendEmptyMessage(5);
  }
  
  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void b()
  {
    x.setText("");
    y.setText("");
  }
  
  public void b(long paramLong)
  {
    F = paramLong;
    d.sendEmptyMessage(4);
  }
  
  public void b(String paramString1, String paramString2)
  {
    f = paramString1;
    g = paramString2;
  }
  
  public void c()
  {
    d.sendEmptyMessage(13);
  }
  
  public void c(int paramInt)
  {
    M = paramInt;
    d.sendEmptyMessage(10);
  }
  
  public void c(long paramLong)
  {
    J = paramLong;
    d.sendEmptyMessage(7);
  }
  
  public void d()
  {
    b.setVisibility(0);
  }
  
  public void d(int paramInt)
  {
    C.setVisibility(paramInt);
  }
  
  public void d(long paramLong)
  {
    K = paramLong;
    d.sendEmptyMessage(8);
  }
  
  public void e(int paramInt)
  {
    z.setVisibility(paramInt);
  }
  
  public void f(int paramInt)
  {
    A.setVisibility(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */