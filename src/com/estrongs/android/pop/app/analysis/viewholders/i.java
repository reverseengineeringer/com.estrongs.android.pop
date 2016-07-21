package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.Context;
import android.content.res.Resources;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.b.a.a;
import com.estrongs.android.util.ap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class i
  extends n
{
  private Context a;
  private LinearLayout b;
  private LinearLayout c;
  private TextView d;
  private LinearLayout e;
  private TextView f;
  private TextView g;
  private View h;
  private LinearLayout i;
  private TextView j;
  private TextView k;
  private AnalysisResultGeneralArcView l;
  private Button m;
  private ProgressBar n;
  private long o;
  private List<Long> p;
  private String q;
  private String r;
  private String s;
  private String t;
  private String u;
  
  public i(View paramView)
  {
    super(paramView);
    a();
    b();
  }
  
  private Spannable a(String paramString)
  {
    SpannableString localSpannableString = new SpannableString(paramString);
    int i1 = 1;
    if ((paramString.toUpperCase().contains("K")) || (paramString.toUpperCase().contains("M")) || (paramString.toUpperCase().contains("G"))) {
      i1 = 2;
    }
    localSpannableString.setSpan(new AbsoluteSizeSpan(a.getResources().getDimensionPixelOffset(2131165281)), 0, paramString.length() - i1, 33);
    localSpannableString.setSpan(new AbsoluteSizeSpan(a.getResources().getDimensionPixelOffset(2131165255)), paramString.length() - i1, paramString.length(), 33);
    return localSpannableString;
  }
  
  private void a()
  {
    b = ((LinearLayout)itemView.findViewById(2131624273));
    c = ((LinearLayout)itemView.findViewById(2131624275));
    d = ((TextView)itemView.findViewById(2131624276));
    e = ((LinearLayout)itemView.findViewById(2131624278));
    f = ((TextView)itemView.findViewById(2131624282));
    g = ((TextView)itemView.findViewById(2131624287));
    h = itemView.findViewById(2131624288);
    i = ((LinearLayout)itemView.findViewById(2131624289));
    j = ((TextView)itemView.findViewById(2131624293));
    k = ((TextView)itemView.findViewById(2131624298));
    m = ((Button)itemView.findViewById(2131624277));
    l = ((AnalysisResultGeneralArcView)itemView.findViewById(2131624274));
    n = ((ProgressBar)itemView.findViewById(2131624299));
    m.setOnClickListener(new j(this));
  }
  
  private void b()
  {
    p = new ArrayList();
    Object localObject = ap.a();
    o = 0L;
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      long[] arrayOfLong = com.estrongs.fs.util.j.k((String)((Iterator)localObject).next());
      o += arrayOfLong[0] * arrayOfLong[2];
    }
  }
  
  private void c()
  {
    b.setVisibility(0);
    c.setVisibility(0);
    n.setVisibility(8);
    d();
    e();
  }
  
  private void d()
  {
    f.setText(a(r));
    g.setText(s);
    if (ap.ai(q))
    {
      i.setVisibility(0);
      h.setVisibility(0);
      j.setText(a(t));
      k.setText(a(u));
      return;
    }
    i.setVisibility(8);
    h.setVisibility(8);
  }
  
  private void e()
  {
    int i1 = 2130838062;
    int[] arrayOfInt = new int[2];
    if (ap.ai(q))
    {
      arrayOfInt[0] = 2131558428;
      arrayOfInt[1] = 2131558427;
    }
    for (;;)
    {
      l.setColorAndData(arrayOfInt, p, i1);
      return;
      if (ap.V(q))
      {
        arrayOfInt[0] = 2131558436;
        arrayOfInt[1] = 2131558435;
        i1 = 2130838077;
      }
      else if (ap.Z(q))
      {
        arrayOfInt[0] = 2131558447;
        arrayOfInt[1] = 2131558446;
        i1 = 2130838083;
      }
      else if (ap.ae(q))
      {
        arrayOfInt[0] = 2131558433;
        arrayOfInt[1] = 2131558432;
        i1 = 2130838069;
      }
      else if ((ap.aY(q)) || (ap.X(q)))
      {
        arrayOfInt[0] = 2131558442;
        arrayOfInt[1] = 2131558441;
        i1 = 2130838074;
      }
    }
  }
  
  public void a(a parama, Context paramContext)
  {
    a = paramContext;
    q = parama.j();
    if ((!parama.h()) && (parama.i()))
    {
      b.setVisibility(4);
      c.setVisibility(4);
      n.setVisibility(0);
      return;
    }
    long l1 = 0L;
    paramContext = parama.c("size");
    if (paramContext == null)
    {
      r = "0B";
      paramContext = parama.c("number");
      if (paramContext != null) {
        break label194;
      }
      s = "0";
      label92:
      paramContext = parama.c("cache");
      if (paramContext != null) {
        break label205;
      }
      t = "0B";
      label111:
      parama = parama.c("memory");
      if (parama != null) {
        break label222;
      }
    }
    label194:
    label205:
    label222:
    for (u = "0B";; u = com.estrongs.fs.util.j.e(Long.parseLong(parama.toString())))
    {
      p.clear();
      p.add(Long.valueOf(l1));
      p.add(Long.valueOf(o));
      c();
      return;
      l1 = Long.parseLong(paramContext.toString());
      r = com.estrongs.fs.util.j.e(l1);
      break;
      s = paramContext.toString();
      break label92;
      t = com.estrongs.fs.util.j.e(Long.parseLong(paramContext.toString()));
      break label111;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */