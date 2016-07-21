package com.estrongs.android.pop.app.cleaner;

import android.app.Activity;
import android.os.Build.VERSION;
import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.b.a.b;
import com.estrongs.android.b.a.f;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.unlock.UnLockCardView;
import com.estrongs.android.pop.app.unlock.s;
import com.estrongs.android.pop.app.unlock.y;
import com.estrongs.android.pop.utils.cl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public class i
  extends RecyclerView.Adapter<RecyclerView.ViewHolder>
{
  protected ArrayList<RecyclerView.ViewHolder> a = new ArrayList();
  HashMap<String, Integer> b = new HashMap();
  private final int c = -1;
  private List<com.estrongs.android.b.a.a> d;
  private boolean e = false;
  private int f = 0;
  private Runnable g;
  private boolean h = false;
  private boolean i = cl.a();
  private Activity j;
  private long k;
  private Map<com.estrongs.android.k.d, com.estrongs.android.b.a.a> l;
  private y m;
  private b n = new o(this);
  
  public i(Activity paramActivity, long paramLong)
  {
    j = paramActivity;
    k = paramLong;
    d = new CopyOnWriteArrayList();
    l = new HashMap();
    m = new j(this);
    s.a().a(m);
  }
  
  private void a(RecyclerView.ViewHolder paramViewHolder)
  {
    Object localObject = itemView;
    a.add(paramViewHolder);
    if (Build.VERSION.SDK_INT >= 14)
    {
      cn.k((View)localObject, 0.0F);
      cn.f((View)localObject, 90.0F);
      localObject = cn.s((View)localObject);
      ((ex)localObject).d(0.0F).a(1000L).a(new com.estrongs.android.ui.a.a()).a(new m(this, (ex)localObject, paramViewHolder)).c();
      return;
    }
    com.estrongs.android.ui.a.d locald = new com.estrongs.android.ui.a.d(90.0F, 0.0F, 0.0F, 0.0F, 0.0F, false, true);
    locald.setDuration(1000L);
    locald.setInterpolator(new com.estrongs.android.ui.a.a());
    locald.setAnimationListener(new n(this, paramViewHolder, (View)localObject));
    ((View)localObject).startAnimation(locald);
  }
  
  private void a(String paramString)
  {
    if (paramString == null) {
      return;
    }
    try
    {
      c localc = c.a(j);
      localc.a(paramString);
      localc.c("clean", paramString);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private String b(int paramInt)
  {
    Iterator localIterator = b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((Integer)localEntry.getValue()).intValue() == paramInt) {
        return (String)localEntry.getKey();
      }
    }
    return "";
  }
  
  private void b(List<com.estrongs.android.b.a.a> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (com.estrongs.android.b.a.a)paramList.next();
      String str = ((com.estrongs.android.b.a.a)localObject).l();
      localObject = ((com.estrongs.android.b.a.a)localObject).m();
      if ((!TextUtils.isEmpty(str)) && (str.equals("recommend"))) {
        a("C_recom_show");
      } else if ((!TextUtils.isEmpty(str)) && (str.equals("ad"))) {
        a("Clean_ad_show_pv");
      } else if ((!TextUtils.isEmpty(str)) && (str.equals("function")) && (!TextUtils.isEmpty((CharSequence)localObject)) && (((String)localObject).equals("sdanalyst"))) {
        a("Clean_function_sdanalyze_show_pv");
      }
    }
  }
  
  private void c(List<com.estrongs.android.b.a.a> paramList)
  {
    Iterator localIterator = paramList.iterator();
    int i1 = 0;
    com.estrongs.android.b.a.a locala;
    if (localIterator.hasNext())
    {
      locala = (com.estrongs.android.b.a.a)localIterator.next();
      if ((locala.l().equals("ad")) && (locala.c("ad") == null)) {
        localIterator.remove();
      }
    }
    for (;;)
    {
      break;
      if ((locala.l().equals("ad")) && (locala.c("ad") != null))
      {
        i1 = 1;
        continue;
        if (i1 != 0)
        {
          paramList = paramList.iterator();
          while (paramList.hasNext()) {
            if (((com.estrongs.android.b.a.a)paramList.next()).l().equals("rate")) {
              paramList.remove();
            }
          }
        }
        return;
      }
    }
  }
  
  private void d(List<com.estrongs.android.b.a.a> paramList)
  {
    if (i) {}
    label25:
    label86:
    label87:
    for (;;)
    {
      return;
      int i1 = com.estrongs.android.pop.app.ad.a.a().c().size();
      paramList = paramList.iterator();
      if (paramList.hasNext())
      {
        com.estrongs.android.b.a.a locala = (com.estrongs.android.b.a.a)paramList.next();
        if (!locala.l().equals("ad")) {
          break label86;
        }
        locala.a("ad", com.estrongs.android.pop.app.ad.a.a().e());
        i1 -= 1;
        h = true;
      }
      for (;;)
      {
        if (i1 == 0) {
          break label87;
        }
        break label25;
        break;
      }
    }
  }
  
  private void e(List<com.estrongs.android.b.a.a> paramList)
  {
    b.clear();
    int i1 = 0;
    while (i1 < paramList.size())
    {
      String str = ((com.estrongs.android.b.a.a)paramList.get(i1)).l();
      if (!b.containsKey(str)) {
        b.put(str, Integer.valueOf(i1));
      }
      i1 += 1;
    }
  }
  
  private void f(List<com.estrongs.android.b.a.a> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      com.estrongs.android.b.a.a locala = (com.estrongs.android.b.a.a)paramList.next();
      if (locala.l().equals("unlock"))
      {
        l.put(r, locala);
        try
        {
          JSONObject localJSONObject = new JSONObject();
          localJSONObject.put("positon", "clean");
          localJSONObject.put("feature", r.g());
          localJSONObject.put("action", "show");
          c.a(j).a("unlockc", localJSONObject);
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
  }
  
  public com.estrongs.android.b.a.a a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < d.size())) {
      return (com.estrongs.android.b.a.a)d.get(paramInt);
    }
    return null;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (d != null)
    {
      int i2 = paramInt1;
      int i1 = paramInt2;
      if (paramInt2 >= d.size() - 1)
      {
        i1 = d.size() - 1;
        i2 = paramInt1;
      }
      while (i2 < i1)
      {
        Object localObject = (com.estrongs.android.b.a.a)d.get(i2);
        if ((((com.estrongs.android.b.a.a)localObject).l().equals("ad")) && ((((com.estrongs.android.b.a.a)localObject).c("ad") instanceof com.estrongs.android.pop.app.ad.j)))
        {
          localObject = (com.estrongs.android.pop.app.ad.j)((com.estrongs.android.b.a.a)localObject).c("ad");
          if (localObject != null) {
            ((com.estrongs.android.pop.app.ad.j)localObject).a();
          }
        }
        i2 += 1;
      }
    }
  }
  
  public void a(com.estrongs.android.b.a.a parama)
  {
    int i1 = d.indexOf(parama);
    d.remove(i1);
    notifyItemRemoved(i1);
  }
  
  public void a(List<com.estrongs.android.b.a.a> paramList)
  {
    b.clear();
    d.clear();
    d.size();
    d(paramList);
    c(paramList);
    b(paramList);
    e(paramList);
    f(paramList);
    d.addAll(paramList);
    notifyDataSetChanged();
  }
  
  public boolean a()
  {
    return h;
  }
  
  public void b()
  {
    s.a().b(m);
  }
  
  public int getItemCount()
  {
    if (d == null) {
      return 0;
    }
    return d.size();
  }
  
  public int getItemViewType(int paramInt)
  {
    return ((Integer)b.get(((com.estrongs.android.b.a.a)d.get(paramInt)).l())).intValue();
  }
  
  public void onAttachedToRecyclerView(RecyclerView paramRecyclerView)
  {
    super.onAttachedToRecyclerView(paramRecyclerView);
    f = paramRecyclerView.getWidth();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    int i1 = getItemViewType(paramInt);
    Object localObject = (com.estrongs.android.b.a.a)d.get(paramInt);
    if (i1 == -1)
    {
      localObject = (TextView)itemView.findViewById(2131625173);
      long l1 = k;
      if (0L < l1)
      {
        ((TextView)localObject).setText(j.getString(2131231205) + com.estrongs.fs.util.j.c(l1));
        ((TextView)itemView.findViewById(2131624200)).setText(2131231199);
      }
    }
    do
    {
      return;
      ((TextView)localObject).setText(j.getString(2131231182));
      break;
      if (((com.estrongs.android.b.a.a)localObject).l() == "unlock")
      {
        paramViewHolder = (com.estrongs.android.ui.c.c.g)paramViewHolder;
        paramViewHolder.a(new l(this));
        paramViewHolder.a(r);
        return;
      }
      localObject = f.a().a(((com.estrongs.android.b.a.a)d.get(paramInt)).l());
    } while (localObject == null);
    ((com.estrongs.android.b.a.o)localObject).a(itemView, a(paramInt), j, paramInt, this);
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt, List<Object> paramList)
  {
    super.onBindViewHolder(paramViewHolder, paramInt, paramList);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    View localView = null;
    Object localObject = b(paramInt);
    if (paramInt == -1) {
      localView = LayoutInflater.from(j).inflate(2130903323, paramViewGroup, false);
    }
    for (;;)
    {
      return new k(this, localView);
      if ("unlock".equals(localObject)) {
        return new com.estrongs.android.ui.c.c.g(new UnLockCardView(j, "clean"));
      }
      localObject = f.a().a((String)localObject);
      if (localObject != null) {
        localView = ((com.estrongs.android.b.a.o)localObject).a(paramViewGroup, j);
      }
    }
  }
  
  public void onViewAttachedToWindow(RecyclerView.ViewHolder paramViewHolder)
  {
    super.onViewAttachedToWindow(paramViewHolder);
    if (e) {
      return;
    }
    a(paramViewHolder);
  }
  
  public void onViewRecycled(RecyclerView.ViewHolder paramViewHolder)
  {
    super.onViewRecycled(paramViewHolder);
    if (b(paramViewHolder.getItemViewType()).equals("ad")) {
      ((ViewGroup)itemView).removeAllViews();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */