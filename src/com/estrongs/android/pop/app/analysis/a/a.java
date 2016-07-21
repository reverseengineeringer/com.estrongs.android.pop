package com.estrongs.android.pop.app.analysis.a;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.pop.app.a.a.f;
import com.estrongs.android.pop.app.analysis.viewholders.ab;
import com.estrongs.android.pop.app.analysis.viewholders.ac;
import com.estrongs.android.pop.app.analysis.viewholders.ae;
import com.estrongs.android.pop.app.analysis.viewholders.i;
import com.estrongs.android.pop.app.analysis.viewholders.n;
import com.estrongs.android.pop.app.analysis.viewholders.o;
import com.estrongs.android.pop.app.unlock.UnLockCardView;
import com.estrongs.android.pop.app.unlock.s;
import com.flurry.android.ads.FlurryAdNative;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public class a
  extends RecyclerView.Adapter<RecyclerView.ViewHolder>
{
  private Context a;
  private CopyOnWriteArrayList<com.estrongs.android.b.a.a> b = new CopyOnWriteArrayList();
  private RecyclerView.ViewHolder c;
  private RecyclerView.ViewHolder d;
  private Map<com.estrongs.android.k.d, com.estrongs.android.b.a.a> e;
  private com.estrongs.android.pop.app.unlock.y f;
  
  public a(Context paramContext)
  {
    a = paramContext;
    e = new HashMap();
    f = new b(this);
    s.a().a(f);
  }
  
  private void a(com.estrongs.android.b.a.a parama)
  {
    if (parama == null) {}
    label211:
    for (;;)
    {
      return;
      Object localObject = parama.m();
      String str = parama.l();
      parama = null;
      if ((str != null) && (str.equals("ad"))) {
        parama = "A_ad_show";
      }
      for (;;)
      {
        if (parama == null) {
          break label211;
        }
        try
        {
          com.estrongs.android.util.l.a("report Analysis card show event : " + parama);
          localObject = com.estrongs.android.j.c.a(a);
          ((com.estrongs.android.j.c)localObject).a(parama);
          ((com.estrongs.android.j.c)localObject).c("analysis", parama);
          return;
        }
        catch (Exception parama)
        {
          parama.printStackTrace();
          return;
        }
        if (str.equals("junk"))
        {
          parama = "Analysis_junk_show";
        }
        else
        {
          if (localObject == null) {
            break;
          }
          if (((String)localObject).equals("largefile")) {
            parama = "Analysis_large_show";
          } else if (((String)localObject).equals("redundancy")) {
            parama = "Analysis_redundancy_show";
          } else if (((String)localObject).equals("duplicate")) {
            parama = "Analysis_duplicate_show";
          } else if (((String)localObject).equals("newcreate")) {
            parama = "Analysis_recently_show";
          } else if ((((String)localObject).equals("allfile")) || (((String)localObject).equals("catalog"))) {
            parama = "Analysis_all_show";
          } else if ((((String)localObject).equals("apprelationfile")) || (((String)localObject).equals("appcatalog"))) {
            parama = "Analysis_associate_show";
          }
        }
      }
    }
  }
  
  private void a(List<com.estrongs.android.b.a.a> paramList)
  {
    paramList = paramList.iterator();
    int i = 0;
    com.estrongs.android.b.a.a locala;
    FlurryAdNative localFlurryAdNative;
    if (paramList.hasNext())
    {
      locala = (com.estrongs.android.b.a.a)paramList.next();
      if (!locala.l().equals("ad")) {
        break label70;
      }
      localFlurryAdNative = com.estrongs.android.pop.app.ad.a.a.a().a(i);
      if (localFlurryAdNative != null) {}
    }
    else
    {
      return;
    }
    locala.a("ad", localFlurryAdNative);
    i += 1;
    label70:
    for (;;)
    {
      break;
    }
  }
  
  private void b(List<com.estrongs.android.b.a.a> paramList)
  {
    Iterator localIterator = paramList.iterator();
    int i = 0;
    com.estrongs.android.b.a.a locala;
    if (localIterator.hasNext())
    {
      locala = (com.estrongs.android.b.a.a)localIterator.next();
      if ((locala.l().equals("ad")) && (locala.c("ad") == null)) {
        paramList.remove(locala);
      }
    }
    for (;;)
    {
      break;
      if ((locala.l().equals("ad")) && (locala.c("ad") != null))
      {
        i = 1;
        continue;
        if (i != 0)
        {
          localIterator = paramList.iterator();
          while (localIterator.hasNext())
          {
            locala = (com.estrongs.android.b.a.a)localIterator.next();
            if (locala.l().equals("rate")) {
              paramList.remove(locala);
            }
          }
        }
        return;
      }
    }
  }
  
  private void c(List<com.estrongs.android.b.a.a> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      a((com.estrongs.android.b.a.a)paramList.next());
    }
  }
  
  private void d(List<com.estrongs.android.b.a.a> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      com.estrongs.android.b.a.a locala = (com.estrongs.android.b.a.a)paramList.next();
      if (locala.l().equals("unlock"))
      {
        e.put(r, locala);
        try
        {
          JSONObject localJSONObject = new JSONObject();
          localJSONObject.put("positon", "analysis");
          localJSONObject.put("feature", r.g());
          localJSONObject.put("action", "show");
          com.estrongs.android.j.c.a(a).a("unlockc", localJSONObject);
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
  }
  
  public void a()
  {
    s.a().b(f);
  }
  
  public void a(String paramString, long paramLong)
  {
    if (b == null) {}
    com.estrongs.android.b.a.a locala;
    do
    {
      return;
      Iterator localIterator;
      while (!localIterator.hasNext()) {
        localIterator = b.iterator();
      }
      locala = (com.estrongs.android.b.a.a)localIterator.next();
    } while ((TextUtils.isEmpty(locala.m())) || (!locala.m().equals(paramString)));
    int i = b.indexOf(locala);
    locala.a(paramLong);
    locala.a(true);
    notifyItemChanged(i);
  }
  
  public void a(CopyOnWriteArrayList<com.estrongs.android.b.a.a> paramCopyOnWriteArrayList)
  {
    if (paramCopyOnWriteArrayList != null)
    {
      b.clear();
      b.addAll(paramCopyOnWriteArrayList);
      a(b);
      b(b);
      c(b);
      d(b);
    }
  }
  
  public int getItemCount()
  {
    if (b == null) {
      return 0;
    }
    return b.size();
  }
  
  public int getItemViewType(int paramInt)
  {
    return ((com.estrongs.android.b.a.a)b.get(paramInt)).k();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    com.estrongs.android.b.a.a locala = (com.estrongs.android.b.a.a)b.get(paramInt);
    if ("charge_boost".equals(locala.l())) {
      return;
    }
    if (locala.l() == "unlock")
    {
      paramViewHolder = (com.estrongs.android.ui.c.c.g)paramViewHolder;
      paramViewHolder.a(new c(this));
      paramViewHolder.a(r);
      return;
    }
    itemView.setOnClickListener(new d(this, locala));
    ((n)paramViewHolder).a((com.estrongs.android.b.a.a)b.get(paramInt), a);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return new com.estrongs.android.pop.app.analysis.viewholders.y(LayoutInflater.from(a).inflate(2130903080, paramViewGroup, false));
    case 2: 
      return new o(LayoutInflater.from(a).inflate(2130903081, paramViewGroup, false));
    case 1: 
      return new ab(LayoutInflater.from(a).inflate(2130903079, paramViewGroup, false));
    case 3: 
      if (c == null) {
        c = new com.estrongs.android.pop.app.analysis.viewholders.l(LayoutInflater.from(a).inflate(2130903096, paramViewGroup, false));
      }
      return c;
    case 6: 
      if (d == null) {
        d = new i(LayoutInflater.from(a).inflate(2130903097, paramViewGroup, false));
      }
      return d;
    case 4: 
      return new com.estrongs.android.pop.app.analysis.viewholders.a(LayoutInflater.from(a).inflate(2130903073, paramViewGroup, false));
    case 5: 
      return new ac(LayoutInflater.from(a).inflate(2130903082, paramViewGroup, false));
    case 7: 
      return new ae(LayoutInflater.from(a).inflate(2130903073, paramViewGroup, false));
    case 8: 
      return new com.estrongs.android.ui.c.c.g(new UnLockCardView(a, "analysis"));
    }
    return new f(LayoutInflater.from(a).inflate(2130903129, paramViewGroup, false));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */