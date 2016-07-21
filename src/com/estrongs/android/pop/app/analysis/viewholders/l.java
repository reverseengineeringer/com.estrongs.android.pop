package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.b.a.a;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.fs.util.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class l
  extends n
{
  private final int[] a = { 2131558440, 2131558431, 2131558434, 2131558426, 2131558445, 2131558437, 2131558430 };
  private final int[] b = { 2131624254, 2131624257, 2131624260, 2131624263, 2131624266, 2131624269 };
  private final int[] c = { 2131624256, 2131624259, 2131624262, 2131624265, 2131624268, 2131624271 };
  private final int[] d = { 2131624255, 2131624258, 2131624261, 2131624264, 2131624267, 2131624270 };
  private Context e;
  private LinearLayout f;
  private LinearLayout g;
  private AnalysisResultGeneralPieView h;
  private Button i;
  private ProgressBar j;
  private String[] k;
  private long[] l;
  private int[] m;
  private int n;
  private String o;
  private boolean p;
  private TextView q;
  private TextView r;
  private String s;
  
  public l(View paramView)
  {
    super(paramView);
    a();
    b();
  }
  
  private void a()
  {
    f = ((LinearLayout)itemView.findViewById(2131624250));
    g = ((LinearLayout)itemView.findViewById(2131624253));
    i = ((Button)itemView.findViewById(2131624252));
    h = ((AnalysisResultGeneralPieView)itemView.findViewById(2131624251));
    j = ((ProgressBar)itemView.findViewById(2131624272));
    i.setOnClickListener(new m(this));
  }
  
  private void a(int paramInt)
  {
    s = (" " + j.c(l[paramInt]));
    q = ((TextView)itemView.findViewById(d[paramInt]));
    r = ((TextView)itemView.findViewById(c[paramInt]));
    int i1 = Math.round(q.getPaint().measureText(k[paramInt]));
    int i2 = Math.round(r.getPaint().measureText(s));
    if ((paramInt != d.length - 1) && (i1 + i2 > n))
    {
      i1 = n - i2;
      if (i1 <= 0) {
        break label190;
      }
      ViewGroup.LayoutParams localLayoutParams = q.getLayoutParams();
      width = i1;
      q.setLayoutParams(localLayoutParams);
    }
    for (;;)
    {
      r.setText(s);
      q.setText(k[paramInt]);
      return;
      label190:
      s = (" " + j.e(l[paramInt]));
    }
  }
  
  private void b()
  {
    m = new int[7];
    l = new long[8];
  }
  
  private void c()
  {
    int i1 = 0;
    f.setVisibility(0);
    g.setVisibility(0);
    j.setVisibility(8);
    d();
    while (i1 < d.length)
    {
      a(i1);
      i1 += 1;
    }
    e();
  }
  
  private void d()
  {
    int i1 = 0;
    while (i1 < b.length)
    {
      GradientDrawable localGradientDrawable = (GradientDrawable)itemView.findViewById(b[i1]).getBackground();
      m[i1] = at.a(e).c(a[i1]);
      localGradientDrawable.setColor(m[i1]);
      i1 += 1;
    }
    m[(a.length - 1)] = at.a(e).c(a[(a.length - 1)]);
  }
  
  private void e()
  {
    int i2 = 0;
    float f2 = 0.0F;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    long l1;
    float f1;
    if (ap.bl(o))
    {
      int i1 = 0;
      while (i1 < m.length)
      {
        localArrayList1.add(Integer.valueOf(m[i1]));
        i1 += 1;
      }
      l1 = 0L;
      i1 = i2;
      while (i1 < l.length)
      {
        localArrayList2.add(Long.valueOf(l[i1]));
        long l2 = l1;
        if (i1 < l.length - 2) {
          l2 = l1 + l[i1];
        }
        i1 += 1;
        l1 = l2;
      }
      if (((Long)localArrayList2.get(7)).longValue() <= 0L) {
        f1 = 0.0F;
      }
    }
    for (;;)
    {
      h.setColorAndData(localArrayList1, localArrayList2, f1);
      return;
      f1 = (float)l1 * 1.0F / (float)((Long)localArrayList2.get(7)).longValue() * 100.0F;
      continue;
      f1 = f2;
      if (ap.ai(o))
      {
        localArrayList1.add(Integer.valueOf(m[3]));
        localArrayList1.add(Integer.valueOf(m[6]));
        localArrayList2.add(Long.valueOf(l[3]));
        localArrayList2.add(Long.valueOf(l[6]));
        localArrayList2.add(Long.valueOf(l[7]));
        f1 = f2;
      }
    }
  }
  
  private int f()
  {
    return e.getResources().getDisplayMetrics().widthPixels;
  }
  
  public void a(a parama, Context paramContext)
  {
    e = paramContext;
    o = parama.j();
    if ((!parama.h()) && (parama.i()))
    {
      f.setVisibility(4);
      g.setVisibility(4);
      j.setVisibility(0);
      return;
    }
    if ((parama.h()) && (!parama.i())) {}
    long l1;
    for (boolean bool = true;; bool = false)
    {
      p = bool;
      l1 = 0L;
      paramContext = ap.a().iterator();
      while (paramContext.hasNext())
      {
        Object localObject = (String)paramContext.next();
        if ((o.startsWith((String)localObject)) || (o.equals("/")))
        {
          localObject = j.k((String)localObject);
          l1 += localObject[0] * localObject[2];
        }
      }
    }
    l[7] = l1;
    l[0] = ((Long)parama.c("img")).longValue();
    l[1] = ((Long)parama.c("doc")).longValue();
    l[2] = ((Long)parama.c("audio")).longValue();
    l[3] = ((Long)parama.c("apk")).longValue();
    l[4] = ((Long)parama.c("video")).longValue();
    l[5] = ((Long)parama.c("other")).longValue();
    l[6] = (l[7] - (l[0] + l[1] + l[2] + l[3] + l[4] + l[5]));
    if (l[6] < 0L)
    {
      l[6] = 0L;
      l[7] = (l[0] + l[1] + l[2] + l[3] + l[4] + l[5]);
    }
    k = new String[] { (String)e.getText(2131231372), (String)e.getText(2131231369), (String)e.getText(2131231368), (String)e.getText(2131231367), (String)e.getText(2131231373), (String)e.getText(2131231371), (String)e.getText(2131232218) };
    n = ((f() - h.getLayoutParams().width - e.getResources().getDimensionPixelSize(2131165273) * 2 - e.getResources().getDimensionPixelSize(2131165328) * 2 - e.getResources().getDimensionPixelSize(2131165312) * 2 - e.getResources().getDimensionPixelSize(2131165257) * 2) / 2);
    c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */