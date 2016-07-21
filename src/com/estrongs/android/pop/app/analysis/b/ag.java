package com.estrongs.android.pop.app.analysis.b;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import com.estrongs.android.a.b.f;
import com.estrongs.android.a.b.m;
import com.estrongs.android.pop.app.analysis.a.ac;
import com.estrongs.android.pop.app.analysis.a.ae;
import com.estrongs.android.pop.app.analysis.a.u;
import com.estrongs.android.pop.app.analysis.k;
import com.estrongs.android.pop.app.analysis.n;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

public class ag
  extends a
  implements ae
{
  protected g r;
  protected int s;
  protected long t;
  protected long u;
  protected AtomicLong v;
  private ac w;
  private LinkedHashMap<aj, List<g>> x;
  private u y;
  private JSONObject z;
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    f localf = (f)r.b;
    k.a(getActivity(), localf, new ai(this, paramBoolean1, paramBoolean2, localf), paramBoolean2);
  }
  
  protected void a(View paramView)
  {
    super.a(paramView);
    b.setVisibility(8);
  }
  
  public void a(u paramu, g paramg)
  {
    y = paramu;
    r = paramg;
    a(false, true);
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
  
  protected void i() {}
  
  protected void j()
  {
    v = new AtomicLong();
    w = new ac(getActivity(), this);
    a.setAdapter(w);
    w.a(new ah(this));
    w.notifyDataSetChanged();
  }
  
  protected void n()
  {
    t();
  }
  
  public void onResume()
  {
    super.onResume();
    v();
  }
  
  protected void r()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    Object localObject1 = com.estrongs.android.pop.app.analysis.a.b(d, e, g);
    if (localObject1 == null)
    {
      x = localLinkedHashMap;
      return;
    }
    if (z == null) {
      z = k.a();
    }
    if ((localObject1 instanceof m))
    {
      localObject1 = ((m)localObject1).e();
      if (localObject1 != null)
      {
        Iterator localIterator = ((Map)localObject1).keySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject2 = (String)localIterator.next();
          Object localObject3 = (List)((Map)localObject1).get(localObject2);
          if ((localObject3 != null) && (((List)localObject3).size() != 0))
          {
            Object localObject4 = k.a(z, (String)localObject2);
            aj localaj = new aj(this);
            e = ((String)localObject2);
            d = ((n)localObject4);
            localObject2 = new ArrayList();
            localObject3 = ((List)localObject3).iterator();
            while (((Iterator)localObject3).hasNext())
            {
              localObject4 = (h)((Iterator)localObject3).next();
              g localg = new g(this);
              b = ((h)localObject4);
              ((List)localObject2).add(localg);
            }
            localLinkedHashMap.put(localaj, localObject2);
          }
        }
      }
    }
    x = localLinkedHashMap;
  }
  
  protected void s()
  {
    w.a(x);
    if (w.getItemCount() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  protected void v()
  {
    if (r != null) {
      a(true, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */