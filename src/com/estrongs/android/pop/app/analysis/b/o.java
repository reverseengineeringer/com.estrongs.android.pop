package com.estrongs.android.pop.app.analysis.b;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.widget.Button;
import com.estrongs.android.a.b.f;
import com.estrongs.android.pop.app.analysis.a;
import com.estrongs.android.pop.app.analysis.a.e;
import com.estrongs.android.pop.app.analysis.a.i;
import com.estrongs.android.pop.app.analysis.k;
import com.estrongs.fs.impl.b.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

public class o
  extends v
  implements com.estrongs.android.pop.app.analysis.a.h
{
  protected g r;
  protected int s;
  protected long t;
  protected long u;
  protected AtomicLong v;
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    f localf = (f)r.b;
    k.a(getActivity(), localf, new p(this, paramBoolean1, paramBoolean2, localf), paramBoolean2);
  }
  
  public void a(g paramg)
  {
    r = paramg;
    a(false, true);
  }
  
  protected void b(long paramLong) {}
  
  public void b(g paramg)
  {
    r = paramg;
    a(false, false);
  }
  
  protected void h()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("analysis_result_card_key", e);
    localIntent.putExtra("analysis_result_card_path", d);
    localIntent.putExtra("analysis_result_cleaned_size", o.get());
    localIntent.putExtra("analysis_result_cleaned_memory_size", v.get());
    getActivity().setResult(-1, localIntent);
  }
  
  protected void j()
  {
    super.j();
    v = new AtomicLong();
    w = new e(getActivity(), h, e);
    a.setAdapter(w);
    w.a(this);
    ((e)w).a(this);
    w.notifyDataSetChanged();
    v();
  }
  
  public void onResume()
  {
    super.onResume();
    x();
  }
  
  protected void r()
  {
    y = a.b(d, e, g);
    if (y == null)
    {
      x = new ArrayList();
      return;
    }
    Object localObject1 = a.a(e, y, g);
    ArrayList localArrayList = new ArrayList();
    if (localObject1 != null)
    {
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        com.estrongs.fs.h localh = (com.estrongs.fs.h)((Iterator)localObject1).next();
        if ((localh instanceof d))
        {
          Object localObject2 = (d)localh;
          if ((localObject2 != null) && (k.a(getActivity(), ((d)localObject2).m())))
          {
            localObject2 = new g(this);
            a = false;
            b = localh;
            localArrayList.add(localObject2);
          }
        }
      }
    }
    for (;;)
    {
      x = localArrayList;
      return;
      localArrayList = new ArrayList();
    }
  }
  
  protected void v()
  {
    b.setVisibility(8);
  }
  
  protected void x()
  {
    if (r != null) {
      a(true, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */