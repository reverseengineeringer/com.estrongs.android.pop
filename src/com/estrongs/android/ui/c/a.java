package com.estrongs.android.ui.c;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ViewGroup;
import com.estrongs.android.pop.app.messagebox.ah;
import com.estrongs.android.pop.app.messagebox.z;
import com.estrongs.android.pop.app.unlock.UnLockCardView;
import com.estrongs.android.pop.app.unlock.s;
import com.estrongs.android.pop.app.unlock.y;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.c.c.f;
import com.estrongs.android.ui.c.c.g;
import com.estrongs.android.ui.topclassify.t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class a
  extends RecyclerView.Adapter<RecyclerView.ViewHolder>
{
  public static int a = 2;
  private static int b = 50;
  private RecyclerView.Adapter<RecyclerView.ViewHolder> c;
  private Context d;
  private List<h> e;
  private Map<Integer, Integer> f;
  private Map<com.estrongs.android.k.d, h> g;
  private t h;
  private com.estrongs.android.ui.c.b.a i;
  private ah j;
  private y k;
  private com.estrongs.android.ui.c.c.b l;
  
  public a(Context paramContext, RecyclerView paramRecyclerView)
  {
    d = paramContext;
    e = new ArrayList();
    f = new HashMap();
    g = new HashMap();
    h = new t("home", paramContext, this);
    a(new h(0));
    i = new com.estrongs.android.ui.c.b.a((FileExplorerActivity)paramContext, this);
    a(new h(1));
    j = z.a(d).b();
    if (j != null) {
      a(new h(2));
    }
    if ((aa != null) && (aa.size() > 0))
    {
      paramContext = aa.iterator();
      while (paramContext.hasNext()) {
        a(new h(3, (com.estrongs.android.k.d)paramContext.next()));
      }
    }
    paramContext = s.a().c();
    if (paramContext != null) {
      a(new h(3, paramContext));
    }
    try
    {
      paramRecyclerView = new JSONObject();
      paramRecyclerView.put("positon", "home");
      paramRecyclerView.put("feature", paramContext.g());
      paramRecyclerView.put("action", "show");
      com.estrongs.android.j.c.a(d).a("unlockc", paramRecyclerView);
      k = new b(this);
      s.a().a(k);
      if (com.estrongs.android.pop.app.a.a.a(com.estrongs.android.pop.app.a.a.b)) {
        a(new h(4));
      }
      return;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
  
  public void a()
  {
    if (i != null) {
      i.c();
    }
  }
  
  public void a(RecyclerView.Adapter<RecyclerView.ViewHolder> paramAdapter)
  {
    c = paramAdapter;
  }
  
  public void a(ah paramah)
  {
    if (paramah != null)
    {
      j = paramah;
      paramah = new h(2);
      if (!e.contains(paramah)) {
        a(paramah);
      }
    }
  }
  
  public void a(h paramh)
  {
    a(paramh, e.size());
  }
  
  public void a(h paramh, int paramInt)
  {
    e.add(paramInt, paramh);
    f.put(Integer.valueOf(a), Integer.valueOf(paramInt));
    if ((b instanceof com.estrongs.android.k.d)) {
      g.put((com.estrongs.android.k.d)b, paramh);
    }
    a = e.size();
  }
  
  public void b()
  {
    if (h != null) {
      h.h();
    }
    s.a().b(k);
  }
  
  public void c()
  {
    if (h != null) {
      h.c();
    }
  }
  
  public int getItemCount()
  {
    if (c == null) {
      return e.size();
    }
    return c.getItemCount() + e.size();
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt < e.size()) {
      return e.get(paramInt)).a;
    }
    return b + c.getItemViewType(paramInt - e.size());
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    if (getItemViewType(paramInt) == 0)
    {
      ((f)paramViewHolder).a(null);
      return;
    }
    if (getItemViewType(paramInt) == 1)
    {
      ((com.estrongs.android.ui.c.c.b)paramViewHolder).a(h.f());
      return;
    }
    if (getItemViewType(paramInt) == 2)
    {
      ((com.estrongs.android.ui.c.c.d)paramViewHolder).a(j);
      return;
    }
    if (getItemViewType(paramInt) == 3)
    {
      paramViewHolder = (g)paramViewHolder;
      paramViewHolder.a(new c(this));
      paramViewHolder.a((com.estrongs.android.k.d)e.get(paramInt)).b);
      return;
    }
    if (getItemViewType(paramInt) == 4)
    {
      ((com.estrongs.android.pop.app.a.a.a)paramViewHolder).a(new d(this, paramInt));
      return;
    }
    int m = e.size();
    c.onBindViewHolder(paramViewHolder, paramInt - m);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt == 0)
    {
      paramViewGroup = new f(d);
      paramViewGroup.a(i);
      return paramViewGroup;
    }
    if (paramInt == 1)
    {
      if (l == null) {
        l = new com.estrongs.android.ui.c.c.b(d);
      }
      return l;
    }
    if (paramInt == 2) {
      return new com.estrongs.android.ui.c.c.d(d);
    }
    if (paramInt == 3) {
      return new g(new UnLockCardView(d, "home"));
    }
    if (paramInt == 4) {
      return new com.estrongs.android.pop.app.a.a.a(d);
    }
    return c.onCreateViewHolder(paramViewGroup, paramInt - b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */