package com.estrongs.android.pop.app.analysis.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class i
{
  private Context a;
  private PopupWindow b;
  private AnalysisLoadingView c;
  private Button d;
  private r e;
  private RecyclerView f;
  private LinearLayoutManager g;
  private u h;
  private TextView i;
  private RelativeLayout j;
  private View k;
  private String l;
  private boolean m;
  private List<s> n;
  private int o;
  private int p;
  private int q;
  private boolean r;
  private boolean s;
  private Handler t = new j(this);
  private Runnable u = new l(this);
  
  public i(Context paramContext, boolean paramBoolean)
  {
    a = paramContext;
    r = paramBoolean;
    d();
    e();
  }
  
  private boolean a(String paramString)
  {
    return (ap.a().contains(paramString)) || (ap.ai(paramString)) || (ap.V(paramString)) || (ap.bp(paramString)) || (ap.ae(paramString)) || (ap.Z(paramString)) || (ap.aY(paramString)) || (ap.X(paramString));
  }
  
  private void c(boolean paramBoolean)
  {
    boolean bool;
    try
    {
      if ((a == null) || (((Activity)a).isFinishing())) {
        return;
      }
      bool = cu.a(a);
      if (paramBoolean)
      {
        if (bool)
        {
          b.update(0, 0, k.getMeasuredWidth(), k.getMeasuredHeight());
          return;
        }
        b.update(0, h(), k.getMeasuredWidth(), k.getMeasuredHeight() - h());
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    b.setWidth(k.getMeasuredWidth());
    if (bool)
    {
      b.setHeight(k.getMeasuredHeight());
      b.showAtLocation(k, 0, 0, 0);
      return;
    }
    b.setHeight(k.getMeasuredHeight() - h());
    b.showAtLocation(k, 0, 0, h());
  }
  
  private void d()
  {
    m = false;
    n = new ArrayList();
    o = 0;
    if (r) {}
    for (q = 3;; q = 1)
    {
      p = a.getResources().getDimensionPixelSize(2131165301);
      return;
    }
  }
  
  private void e()
  {
    View localView = LayoutInflater.from(a).inflate(2130903089, null);
    c = ((AnalysisLoadingView)localView.findViewById(2131624222));
    f = ((RecyclerView)localView.findViewById(2131624224));
    f.setHasFixedSize(true);
    i = ((TextView)localView.findViewById(2131624223));
    j = ((RelativeLayout)localView.findViewById(2131624225));
    d = ((Button)localView.findViewById(2131624226));
    d.setOnClickListener(new n(this));
    g = new LinearLayoutManager(a);
    g.setSmoothScrollbarEnabled(true);
    f.setLayoutManager(g);
    f.setOnTouchListener(new o(this));
    localView.setFocusable(true);
    localView.setFocusableInTouchMode(true);
    localView.setOnKeyListener(new p(this));
    localView.setOnTouchListener(new q(this));
    h = new u(this, null);
    f.setAdapter(h);
    f.getLayoutParams().height = (q * p);
    b = new PopupWindow(a);
    b.setContentView(localView);
    b.setBackgroundDrawable(null);
    b.setFocusable(true);
    b.setTouchable(true);
    b.setOutsideTouchable(false);
  }
  
  private void f()
  {
    n.clear();
    Object localObject;
    if ((l == null) || (ap.bl(l)))
    {
      localObject = new s(this);
      a = false;
      b = a.getResources().getString(2131231629);
      n.add(localObject);
      localObject = new s(this);
      a = false;
      b = a.getResources().getString(2131232259);
      n.add(localObject);
      localObject = new s(this);
      a = false;
      b = a.getResources().getString(2131231402);
      n.add(localObject);
      localObject = new s(this);
      a = false;
      b = a.getResources().getString(2131231842);
      n.add(localObject);
      localObject = new s(this);
      a = false;
      b = a.getResources().getString(2131231128);
      n.add(localObject);
      if (a(l))
      {
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231126);
        n.add(localObject);
      }
      if (!ap.ai(l)) {
        break label1473;
      }
      c.setTitle(a.getResources().getString(2131230924));
      label318:
      break label1667;
    }
    for (;;)
    {
      h.notifyDataSetChanged();
      if (!ap.bl(l)) {
        break label1831;
      }
      i.setText(l);
      return;
      if (ap.ai(l))
      {
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231029);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131230991);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231126);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231021);
        n.add(localObject);
        break;
      }
      if (ap.V(l))
      {
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131232259);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231402);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231842);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231128);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231126);
        n.add(localObject);
        break;
      }
      if (ap.ae(l))
      {
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131232259);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231402);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231842);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231128);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231126);
        n.add(localObject);
        break;
      }
      if (ap.Z(l))
      {
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131232259);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231402);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231842);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231128);
        n.add(localObject);
        localObject = new s(this);
        a = false;
        b = a.getResources().getString(2131231126);
        n.add(localObject);
        break;
      }
      if ((!ap.aY(l)) && (!ap.X(l))) {
        break;
      }
      localObject = new s(this);
      a = false;
      b = a.getResources().getString(2131232259);
      n.add(localObject);
      localObject = new s(this);
      a = false;
      b = a.getResources().getString(2131231402);
      n.add(localObject);
      localObject = new s(this);
      a = false;
      b = a.getResources().getString(2131231842);
      n.add(localObject);
      localObject = new s(this);
      a = false;
      b = a.getResources().getString(2131231128);
      n.add(localObject);
      localObject = new s(this);
      a = false;
      b = a.getResources().getString(2131231126);
      n.add(localObject);
      localObject = new s(this);
      a = false;
      b = a.getResources().getString(2131232350);
      n.add(localObject);
      break;
      label1473:
      if (ap.V(l))
      {
        c.setTitle(a.getResources().getString(2131230942));
      }
      else if (ap.ae(l))
      {
        c.setTitle(a.getResources().getString(2131230928));
      }
      else if (ap.Z(l))
      {
        c.setTitle(a.getResources().getString(2131230959));
      }
      else if ((ap.aY(l)) || (ap.X(l)))
      {
        c.setTitle(a.getResources().getString(2131230950));
      }
      else if (ap.bp(l))
      {
        c.setTitle(a.getResources().getString(2131230922));
      }
      else
      {
        if (ap.bl(l))
        {
          localObject = ap.a().iterator();
          label1667:
          if (!((Iterator)localObject).hasNext()) {
            continue;
          }
          String str = (String)((Iterator)localObject).next();
          if (str.contains(l))
          {
            str = ap.d(str);
            localObject = str;
            if ("0".equals(str)) {
              localObject = a.getResources().getString(2131230936);
            }
            c.setTitle((String)localObject + " " + a.getResources().getString(2131230932));
            continue;
          }
          if (!l.contains(str)) {
            break label318;
          }
          c.setTitle(a.getResources().getString(2131230927));
          continue;
        }
        c.setTitle(a.getResources().getString(2131231349));
      }
    }
    label1831:
    i.setText("");
  }
  
  private void g()
  {
    o = 0;
    t.removeCallbacks(u);
    t.removeMessages(0);
    t.removeMessages(1);
    f.scrollToPosition(0);
    j.setVisibility(4);
    m = false;
    s = false;
  }
  
  private int h()
  {
    try
    {
      Class localClass = Class.forName("com.android.internal.R$dimen");
      Object localObject = localClass.newInstance();
      int i1 = Integer.parseInt(localClass.getField("status_bar_height").get(localObject).toString());
      i1 = a.getResources().getDimensionPixelSize(i1);
      return i1;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }
  
  public void a()
  {
    s = true;
    t.removeCallbacks(u);
    t.postDelayed(u, 1000L + Math.round(Math.random() * 1000.0D));
  }
  
  public void a(View paramView, String paramString)
  {
    if (b.isShowing()) {}
    do
    {
      return;
      l = paramString;
      k = paramView;
      c(false);
      c.a();
    } while (m);
    f();
    t.postDelayed(u, 1000L + Math.round(Math.random() * 1000.0D));
    t.sendEmptyMessageDelayed(0, 3000L);
  }
  
  public void a(r paramr)
  {
    e = paramr;
  }
  
  public void a(boolean paramBoolean)
  {
    m = true;
    if (paramBoolean) {
      g();
    }
    for (;;)
    {
      c.b();
      try
      {
        if ((a != null) && (!((Activity)a).isFinishing())) {
          b.dismiss();
        }
        return;
      }
      catch (Exception localException)
      {
        c localc;
        localException.printStackTrace();
      }
      if ((a instanceof FileExplorerActivity))
      {
        localc = ((FileExplorerActivity)a).at();
        if (localc != null)
        {
          localc.a("A_loading_hide");
          localc.c("analysis", "A_loading_hide");
        }
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    r = paramBoolean;
    if (r)
    {
      q = 3;
      f.getLayoutParams().height = (q * p);
      if (k != null) {
        break label52;
      }
    }
    label52:
    do
    {
      return;
      q = 1;
      break;
      c(true);
    } while ((r) || (n.size() - o > 3));
    f.scrollToPosition(o);
  }
  
  public boolean b()
  {
    return b.isShowing();
  }
  
  public void c() {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */