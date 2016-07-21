package com.estrongs.android.widget;

import android.content.Context;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import java.text.NumberFormat;

public class bh
  extends ci
{
  bk a;
  protected ProgressBar b;
  protected TextView c;
  protected TextView d;
  protected TextView e;
  protected NumberFormat f = NumberFormat.getPercentInstance();
  protected TextView g;
  protected long h;
  protected long i;
  protected CharSequence j;
  private int k = 0;
  private long l = 0L;
  private Handler m;
  private bl n = new bm();
  
  public bh(Context paramContext)
  {
    super(paramContext);
    Object localObject = k.a(getContext()).inflate(2130903425, null);
    setContentView((View)localObject);
    b = ((ProgressBar)((View)localObject).findViewById(2131624429));
    c = ((TextView)((View)localObject).findViewById(2131624200));
    e = ((TextView)((View)localObject).findViewById(2131624692));
    d = ((TextView)((View)localObject).findViewById(2131624380));
    g = ((TextView)((View)localObject).findViewById(2131624691));
    localObject = (WindowManager)paramContext.getSystemService("window");
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)localObject).getDefaultDisplay().getMetrics(localDisplayMetrics);
    c.setWidth((int)(widthPixels * 0.9D));
    c.setText(paramContext.getText(2131231747));
    m = new bi(this);
  }
  
  public void a()
  {
    j = "";
    i = 0L;
    h = 0L;
    c.setText(j);
    n.a(b, g, h);
    n.b(b, d, i);
    double d1 = i / h;
    e.setText(f.format(d1));
  }
  
  public void a(int paramInt)
  {
    k = paramInt;
  }
  
  public void a(long paramLong)
  {
    h = paramLong;
    l += 1L;
    m.sendEmptyMessage(3);
  }
  
  public void a(bk parambk)
  {
    a = parambk;
  }
  
  public void a(bl parambl)
  {
    n = parambl;
  }
  
  public void b(long paramLong)
  {
    if (l > 100L) {
      return;
    }
    i = paramLong;
    l += 1L;
    m.sendEmptyMessage(2);
  }
  
  public void onBackPressed()
  {
    if (a != null) {
      a.a();
    }
    super.onBackPressed();
  }
  
  public void setMessage(CharSequence paramCharSequence)
  {
    if (l > 100L) {
      return;
    }
    j = paramCharSequence;
    l += 1L;
    m.sendEmptyMessage(1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */