package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.h.f;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.eh;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.g.a;
import com.estrongs.android.ui.g.h;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bm;
import com.estrongs.android.util.bn;
import com.estrongs.android.view.cr;
import com.estrongs.fs.d;
import com.estrongs.fs.util.j;
import com.estrongs.fs.w;

public class dn
  extends BaseAdapter
  implements AdapterView.OnItemClickListener
{
  bn[] a;
  bn[] b;
  at c;
  eh d;
  private Context e;
  private dp f;
  private a g;
  private boolean h;
  private boolean i = false;
  
  public dn(Context paramContext, boolean paramBoolean)
  {
    e = paramContext;
    try
    {
      if (!bm.c().a()) {
        bm.c().b();
      }
      c();
      c = at.a(e);
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        try
        {
          g = a.a(e);
          f = new dp(g);
          a();
          return;
        }
        catch (Exception paramContext) {}
        paramContext = paramContext;
        paramContext.printStackTrace();
      }
    }
  }
  
  private bn a(int paramInt)
  {
    int j = 0;
    for (;;)
    {
      try
      {
        bn localbn;
        if (b != null)
        {
          if (paramInt < b.length)
          {
            localbn = b[paramInt];
            g = true;
            return localbn;
          }
          j = b.length;
        }
        k = j;
        if (h)
        {
          k = j;
          if (i)
          {
            if (paramInt != j) {
              break label101;
            }
            return f;
          }
        }
        if (a != null)
        {
          localbn = a[(paramInt - k)];
          g = false;
          return localbn;
        }
      }
      catch (Exception localException)
      {
        return null;
      }
      return null;
      label101:
      int k = j + 1;
    }
  }
  
  private void a()
  {
    if ((g.a()) && (f != null) && (f.a(g) != null)) {}
    for (boolean bool = true;; bool = false)
    {
      if (bool != i) {
        i = bool;
      }
      if (FexApplication.a().m()) {
        i = false;
      }
      return;
    }
  }
  
  private void a(com.estrongs.android.ui.g.c paramc)
  {
    if (paramc.g()) {
      if ("action_recomm_pcs".equals(paramc.b())) {
        b();
      }
    }
    for (;;)
    {
      paramc.h(e);
      return;
      new h(e, paramc).a();
      continue;
      new h(e, paramc).a();
    }
  }
  
  private void b()
  {
    Object localObject = u.a();
    if (((u)localObject).c()) {
      d();
    }
    while ((((u)localObject).b()) || (ad.a(e).a(0L) == null)) {
      return;
    }
    localObject = new com.estrongs.android.ui.pcs.c(e, true);
    ((com.estrongs.android.ui.pcs.c)localObject).a(new do(this));
    ((com.estrongs.android.ui.pcs.c)localObject).a();
  }
  
  private void c()
  {
    a = bm.c().e();
  }
  
  private void d()
  {
    try
    {
      cr localcr = FileExplorerActivity.X().O();
      if ((localcr != null) && (localcr.c() != null) && (z.N)) {
        localcr.j(ap.k() + "/files/");
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void a(eh parameh)
  {
    d = parameh;
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void a(bn[] paramArrayOfbn)
  {
    b = paramArrayOfbn;
  }
  
  public int getCount()
  {
    int k = 0;
    if (a != null) {
      k = 0 + a.length;
    }
    int j = k;
    if (b != null) {
      j = k + b.length;
    }
    k = j;
    try
    {
      if (h)
      {
        boolean bool = i;
        k = j;
        if (bool) {
          k = j + 1;
        }
      }
      return k;
    }
    catch (Exception localException) {}
    return j;
  }
  
  public Object getItem(int paramInt)
  {
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = k.a(e).inflate(2130903292, null);
    }
    paramView = (ImageView)paramViewGroup.findViewById(2131625076);
    TextView localTextView1 = (TextView)paramViewGroup.findViewById(2131625077);
    TextView localTextView2 = (TextView)paramViewGroup.findViewById(2131625078);
    bn localbn = a(paramInt);
    if (localbn == null) {}
    Object localObject;
    do
    {
      return paramViewGroup;
      if (!(localbn instanceof dp)) {
        break;
      }
      localObject = ((dp)localbn).a(g);
    } while (localObject == null);
    paramView.setImageBitmap(((com.estrongs.android.ui.g.c)localObject).a(e));
    localTextView2.setVisibility(8);
    paramViewGroup.setBackgroundResource(2130837676);
    localTextView1.setVisibility(0);
    localTextView1.setText(dp.a((dp)localbn).c());
    return paramViewGroup;
    if (g)
    {
      paramView.setImageDrawable(c.a(j));
      paramView = a;
      localTextView2.setVisibility(8);
      localTextView1.setVisibility(0);
      localObject = i;
      paramView = (View)localObject;
      if (h)
      {
        paramView = (View)localObject;
        if (ad.a(e).O())
        {
          paramView = (String)localObject + " (%s/%s)";
          localObject = j.k(a);
          paramView = String.format(paramView, new Object[] { j.c((localObject[0] - localObject[1]) * localObject[2]), j.c(localObject[0] * localObject[2]) });
        }
      }
      localTextView1.setText(paramView);
      return paramViewGroup;
    }
    if (c == 2)
    {
      if (e != null) {
        paramView.setImageBitmap(e);
      }
      for (;;)
      {
        localTextView2.setText(a);
        localTextView2.setVisibility(0);
        localTextView2.setPadding(0, 0, 0, g.a(e, 2.0F));
        paramViewGroup.setBackgroundResource(2130838302);
        localTextView1.setText(d);
        localTextView1.setVisibility(0);
        localTextView1.setPadding(0, g.a(e, 2.0F), 0, 0);
        return paramViewGroup;
        paramView.setImageDrawable(f.a(String.valueOf(262194)));
      }
    }
    if (ap.bl(a))
    {
      paramView.setImageDrawable(f.c(d.a(e).j(a)));
      paramView = ap.aq(a);
      if (paramView != null) {
        break label597;
      }
    }
    label597:
    for (paramView = ap.F(a);; paramView = ap.ax(a) + ":/" + paramView)
    {
      localObject = paramView;
      if (ap.aJ(paramView)) {
        localObject = ap.cc(paramView);
      }
      localTextView2.setText((CharSequence)localObject);
      localTextView2.setVisibility(0);
      paramViewGroup.setBackgroundResource(2130838302);
      localTextView1.setVisibility(8);
      return paramViewGroup;
      if (a.endsWith("/"))
      {
        if (ap.aL(a))
        {
          paramView.setImageDrawable(f.a(w.D.c()));
          break;
        }
        paramView.setImageDrawable(f.a(w.C.c()));
        break;
      }
      paramView.setImageDrawable(f.a(String.valueOf(bg.b(a))));
      break;
    }
  }
  
  public void notifyDataSetChanged()
  {
    c();
    try
    {
      if (g != null) {
        g.a(true);
      }
      a();
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    super.notifyDataSetChanged();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    try
    {
      paramAdapterView = a(paramInt);
      if (paramAdapterView != null)
      {
        if ((paramAdapterView instanceof dp))
        {
          paramView = ((dp)paramAdapterView).a(g);
          if (paramView != null)
          {
            a(paramView);
            f.b(g);
            notifyDataSetChanged();
          }
          d.a(a, true);
        }
        for (;;)
        {
          d.a(a, false);
          return;
          if ((g) && (k != null) && (l != null)) {
            ad.a(e).a(k, l, paramInt);
          }
        }
      }
      return;
    }
    catch (Exception paramAdapterView)
    {
      paramAdapterView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */