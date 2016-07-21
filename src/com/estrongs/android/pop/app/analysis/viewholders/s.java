package com.estrongs.android.pop.app.analysis.viewholders;

import android.support.v7.widget.AppCompatCheckBox;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.util.l;
import com.estrongs.android.widget.UsageImageView;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.text.DecimalFormat;

public class s
  extends t
{
  public TextView a;
  public TextView b;
  public UsageImageView c;
  private final DecimalFormat k = new DecimalFormat("0.00%");
  
  public s(View paramView, String paramString)
  {
    super(paramView, paramString);
  }
  
  private float a(h paramh, long paramLong)
  {
    float f1 = 0.0F;
    l.b("DetailDirViewHolder", "pr getUsage() disSize = " + paramLong + " ,fo length = " + paramh.length());
    float f2 = (float)paramh.length() / (float)paramLong;
    if (f2 < 0.0F) {}
    for (;;)
    {
      l.b("DetailDirViewHolder", "after getUsage() disSize = " + paramLong + " ,fo length = " + paramh.length() + " , usage = " + f1);
      return f1;
      f1 = f2;
    }
  }
  
  private String a(float paramFloat)
  {
    return k.format(paramFloat);
  }
  
  private String a(h paramh)
  {
    if ((paramh instanceof com.estrongs.android.a.b.g))
    {
      paramh = (com.estrongs.android.a.b.g)paramh;
      return paramh.a() + " / " + paramh.b();
    }
    return "1 / 0";
  }
  
  public void a()
  {
    d = ((ImageView)itemView.findViewById(2131624238));
    e = ((TextView)itemView.findViewById(2131624241));
    h = ((AppCompatCheckBox)itemView.findViewById(2131624239));
    f = ((TextView)itemView.findViewById(2131624242));
    a = ((TextView)itemView.findViewById(2131624243));
    b = ((TextView)itemView.findViewById(2131624244));
    c = ((UsageImageView)itemView.findViewById(2131624240));
  }
  
  public void a(com.estrongs.android.pop.app.analysis.b.g paramg, boolean paramBoolean)
  {
    long l1 = 0L;
    com.estrongs.android.pop.app.analysis.b.t localt = (com.estrongs.android.pop.app.analysis.b.t)paramg;
    h localh = b;
    View localView = itemView;
    int i;
    long l2;
    if (a)
    {
      i = 2131558425;
      localView.setBackgroundResource(i);
      e.a(localh, d);
      e.setText(localh.getName());
      l2 = localh.length();
      if (l2 > 0L) {
        break label187;
      }
    }
    for (;;)
    {
      h.setClickable(false);
      h.setChecked(a);
      paramg = h;
      if (paramBoolean) {}
      for (i = 0;; i = 8)
      {
        paramg.setVisibility(i);
        this.f.setText(j.c(l1));
        b.setText(a(localh));
        float f = a(localh, d);
        a.setText(a(f));
        c.setRate(f);
        return;
        i = 2130837621;
        break;
      }
      label187:
      l1 = l2;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */