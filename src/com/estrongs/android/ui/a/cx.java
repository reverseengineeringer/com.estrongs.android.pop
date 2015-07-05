package com.estrongs.android.ui.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.d.f;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.fg;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.g.c;
import com.estrongs.android.ui.g.h;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.be;
import com.estrongs.android.util.bf;
import com.estrongs.android.view.aw;
import com.estrongs.fs.d;
import com.estrongs.fs.m;
import com.estrongs.fs.util.j;

public class cx
  extends BaseAdapter
  implements AdapterView.OnItemClickListener
{
  bf[] a;
  bf[] b;
  al c;
  fg d;
  private Context e;
  private cz f;
  private com.estrongs.android.ui.g.a g;
  private boolean h;
  private boolean i = false;
  
  public cx(Context paramContext, boolean paramBoolean)
  {
    e = paramContext;
    try
    {
      if (!be.c().a()) {
        be.c().b();
      }
      c();
      c = al.a(e);
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        try
        {
          g = com.estrongs.android.ui.g.a.a(e);
          f = new cz(g);
          a();
          return;
        }
        catch (Exception paramContext) {}
        paramContext = paramContext;
        paramContext.printStackTrace();
      }
    }
  }
  
  private bf a(int paramInt)
  {
    int j = 0;
    for (;;)
    {
      try
      {
        bf localbf;
        if (b != null)
        {
          if (paramInt < b.length)
          {
            localbf = b[paramInt];
            g = true;
            return localbf;
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
          localbf = a[(paramInt - k)];
          g = false;
          return localbf;
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
  
  private void a(c paramc)
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
    Object localObject = r.a();
    if (((r)localObject).c()) {
      d();
    }
    while ((((r)localObject).b()) || (ad.a(e).a(0L) == null)) {
      return;
    }
    localObject = new com.estrongs.android.ui.pcs.a(e, true);
    ((com.estrongs.android.ui.pcs.a)localObject).a(new cy(this));
    ((com.estrongs.android.ui.pcs.a)localObject).a();
  }
  
  private void c()
  {
    a = be.c().e();
  }
  
  private void d()
  {
    try
    {
      aw localaw = FileExplorerActivity.J().y();
      if ((localaw != null) && (localaw.c() != null) && (z.N)) {
        localaw.g(am.k() + "/files/");
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void a(fg paramfg)
  {
    d = paramfg;
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void a(bf[] paramArrayOfbf)
  {
    b = paramArrayOfbf;
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
      paramViewGroup = g.a(e).inflate(2130903178, null);
    }
    paramView = (ImageView)paramViewGroup.findViewById(2131362455);
    TextView localTextView1 = (TextView)paramViewGroup.findViewById(2131362456);
    TextView localTextView2 = (TextView)paramViewGroup.findViewById(2131362457);
    localTextView2.setTextColor(c.d(2131230738));
    bf localbf = a(paramInt);
    if (localbf == null) {}
    Object localObject;
    do
    {
      return paramViewGroup;
      if (!(localbf instanceof cz)) {
        break;
      }
      localObject = ((cz)localbf).a(g);
    } while (localObject == null);
    paramView.setImageBitmap(((c)localObject).a(e));
    localTextView2.setVisibility(8);
    paramViewGroup.setBackgroundResource(2130837562);
    localTextView1.setVisibility(0);
    localTextView1.setText(cz.a((cz)localbf).c());
    return paramViewGroup;
    if (g)
    {
      paramView.setImageDrawable(c.a(j));
      paramView = a;
      localTextView2.setVisibility(8);
      paramViewGroup.setBackgroundResource(2130837562);
      localTextView1.setVisibility(0);
      localObject = i;
      paramView = (View)localObject;
      if (h)
      {
        paramView = (View)localObject;
        if (ad.a(e).N())
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
        localTextView2.setTextColor(-7829368);
        localTextView2.setVisibility(0);
        localTextView2.setPadding(0, 0, 0, com.estrongs.android.ui.d.a.a(e, 2.0F));
        paramViewGroup.setBackgroundResource(2130837974);
        localTextView1.setText(d);
        localTextView1.setVisibility(0);
        localTextView1.setPadding(0, com.estrongs.android.ui.d.a.a(e, 2.0F), 0, 0);
        return paramViewGroup;
        paramView.setImageDrawable(f.a(String.valueOf(262194)));
      }
    }
    if (am.ba(a))
    {
      paramView.setImageDrawable(f.d(d.a(e).j(a)));
      paramView = am.ag(a);
      if (paramView != null) {
        break label625;
      }
    }
    label625:
    for (paramView = am.D(a);; paramView = am.an(a) + ":/" + paramView)
    {
      localObject = paramView;
      if (am.az(paramView)) {
        localObject = am.bL(paramView);
      }
      localTextView2.setText((CharSequence)localObject);
      localTextView2.setVisibility(0);
      paramViewGroup.setBackgroundResource(2130837974);
      localTextView1.setVisibility(8);
      return paramViewGroup;
      if (a.endsWith("/"))
      {
        if (am.aB(a))
        {
          paramView.setImageDrawable(f.a(m.E.c()));
          break;
        }
        paramView.setImageDrawable(f.a(m.D.c()));
        break;
      }
      paramView.setImageDrawable(f.a(String.valueOf(bc.b(a))));
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
        if ((paramAdapterView instanceof cz))
        {
          paramView = ((cz)paramAdapterView).a(g);
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
 * Qualified Name:     com.estrongs.android.ui.a.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */