package com.estrongs.android.view;

import android.app.Activity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.HeaderGridView;
import com.estrongs.fs.b.aj;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshGridView;
import java.text.MessageFormat;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class a
  extends aw
{
  View a = null;
  TextView b = null;
  Button c = null;
  private PullToRefreshGridView d;
  
  public a(Activity paramActivity, com.estrongs.fs.util.a.a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
    c.setOnClickListener(new b(this));
  }
  
  private boolean p()
  {
    return w.a(ad.getPackageManager(), "com.baidu.appsearch") >= 16782394;
  }
  
  protected int a()
  {
    return 2130903081;
  }
  
  protected void a(aj paramaj, List<h> paramList)
  {
    super.a(paramaj, paramList);
    if (am.ae(w.getPath()))
    {
      if (i)
      {
        f(2131427626);
        a.setVisibility(8);
      }
    }
    else {
      return;
    }
    if (A.size() == 0)
    {
      f(2131428672);
      a.setVisibility(8);
      return;
    }
    a.setVisibility(0);
    paramaj = A.iterator();
    for (long l = 0L; paramaj.hasNext(); l = ((h)paramaj.next()).length() + l) {}
    b.setText(MessageFormat.format(ad.getString(2131428673), new Object[] { Integer.valueOf(A.size()), j.c(l) }));
    a.setVisibility(0);
    if (((w.a("com.baidu.appsearch")) && (p())) || (com.estrongs.android.ui.g.a.a(ad).b() != null)) {
      c.setVisibility(0);
    }
    for (;;)
    {
      a.setVisibility(8);
      return;
      c.setVisibility(8);
    }
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    if (am.ae(paramh.getPath()))
    {
      if (B() != 7) {
        a(7);
      }
      if (cc.a())
      {
        if ((!am.aa(paramh.getPath())) && (!am.ad(paramh.getPath())) && (!am.ac(paramh.getPath())) && (!am.Z(paramh.getPath()))) {
          break label213;
        }
        if (d.i() == PullToRefreshBase.Mode.DISABLED)
        {
          d.a(PullToRefreshBase.Mode.PULL_FROM_START);
          d.a(ad.getText(2131428684));
          d.c(ad.getText(2131428685));
          d.b(ad.getText(2131428659));
          d.a(new c(this));
        }
      }
    }
    for (;;)
    {
      super.a(paramh, paramTypedMap);
      return;
      int i = ac.b(ad, paramh.getPath());
      if (B() != i) {
        a(i);
      }
      a.setVisibility(8);
      break;
      label213:
      if (d.i() != PullToRefreshBase.Mode.DISABLED) {
        d.a(PullToRefreshBase.Mode.DISABLED);
      }
    }
  }
  
  protected HeaderGridView d_()
  {
    d = ((PullToRefreshGridView)k(2131362046));
    d.a(false);
    d.a(PullToRefreshBase.Mode.DISABLED);
    return (HeaderGridView)d.j();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */