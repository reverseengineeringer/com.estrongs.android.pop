package com.estrongs.android.pop.app.cleaner;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.v4.view.cn;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.cleaner.h;
import com.estrongs.android.pop.app.cleaner.a.b;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.dialog.hf;
import com.estrongs.android.ui.dialog.o;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.TripleStateCheckBox;
import com.estrongs.android.util.l;
import com.estrongs.fs.impl.b.d;
import com.estrongs.fs.util.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ab
  extends RecyclerView.Adapter<RecyclerView.ViewHolder>
{
  private final int a = 12;
  private Context b;
  private com.estrongs.android.view.w c;
  private ArrayList<aj> d;
  private ArrayList<aj> e;
  private ArrayList<RecyclerView.ViewHolder> f = new ArrayList();
  private boolean g = false;
  private int h = 0;
  private boolean i = false;
  
  public ab(Context paramContext, com.estrongs.android.view.w paramw)
  {
    b = paramContext;
    c = paramw;
    e = new ArrayList();
    d = new ArrayList();
  }
  
  private aj a(h paramh, aj paramaj)
  {
    aj localaj = new aj();
    b = paramh;
    if (paramaj == null) {}
    for (f = true;; f = false)
    {
      d = paramaj;
      return localaj;
    }
  }
  
  private void a(com.estrongs.android.pop.app.cleaner.a.a parama, aj paramaj, int paramInt)
  {
    h localh = b;
    a.setText(localh.m());
    b.setText(j.c(localh.j()));
    d.setChecked(e(localh));
    if (e)
    {
      parama.a(false);
      e.setVisibility(4);
    }
    for (;;)
    {
      c.setOnClickListener(new ad(this, paramaj));
      return;
      parama.a(true);
      if (paramInt != getItemCount() - 1) {
        e.setVisibility(0);
      } else {
        e.setVisibility(4);
      }
    }
  }
  
  private void a(b paramb, aj paramaj, int paramInt)
  {
    int j = 0;
    h localh = b;
    b.setText(localh.m());
    e.setText(j.c(localh.j()));
    b.a(a);
    l.e("test", "status  " + paramInt + " : " + localh.h());
    if (localh.h() == 1)
    {
      c.setVisibility(0);
      d.setText(2131231188);
      d.setVisibility(0);
      paramInt = j;
      switch (localh.q())
      {
      default: 
        paramInt = j;
      }
    }
    for (;;)
    {
      g.setChecked(paramInt);
      f.setOnClickListener(new ae(this, paramaj));
      return;
      if (localh.h() == 2)
      {
        c.setVisibility(0);
        d.setText(2131231195);
        d.setVisibility(0);
        break;
      }
      if (localh.h() == 3)
      {
        c.setVisibility(8);
        d.setText(2131231191);
        d.setVisibility(0);
        break;
      }
      if (localh.h() == 4)
      {
        c.setVisibility(8);
        d.setText(2131231194);
        d.setVisibility(0);
        break;
      }
      if (localh.h() == 8)
      {
        c.setVisibility(8);
        d.setText(2131231187);
        d.setVisibility(0);
        break;
      }
      if (localh.h() == 5)
      {
        c.setVisibility(8);
        d.setText(2131231189);
        d.setVisibility(0);
        break;
      }
      if (localh.h() == 6)
      {
        c.setVisibility(8);
        d.setText(2131231190);
        d.setVisibility(0);
        break;
      }
      if (localh.h() == 7)
      {
        c.setVisibility(8);
        d.setText(2131231193);
        d.setVisibility(0);
        break;
      }
      if (localh.h() == 9)
      {
        c.setVisibility(8);
        d.setText(2131231192);
        d.setVisibility(0);
        break;
      }
      c.setVisibility(8);
      d.setVisibility(8);
      break;
      paramInt = 1;
      continue;
      paramInt = 2;
    }
  }
  
  private void a(aj paramaj)
  {
    int j = e.indexOf(paramaj);
    if (j >= 0) {
      notifyItemChanged(j);
    }
  }
  
  private void a(aj paramaj, boolean paramBoolean)
  {
    h localh = b;
    new cv(b).a(b.getString(2131231714)).b(b.getString(2131231183)).b(2131231273, new af(this, paramBoolean, paramaj, localh)).c(2131231269, null).c();
    i = true;
  }
  
  private int b(int paramInt)
  {
    return at.a(b).c(paramInt);
  }
  
  private void b(h paramh)
  {
    String str = paramh.d();
    switch (paramh.g())
    {
    default: 
    case 1: 
    case 2: 
      do
      {
        return;
        paramh = c(paramh);
      } while (paramh == null);
      new o((Activity)b, paramh).a();
      return;
    }
    paramh = new hf((Activity)b, str, true);
    paramh.a(true);
    paramh.a();
  }
  
  private void b(aj paramaj)
  {
    if (!e) {
      return;
    }
    ArrayList localArrayList = c;
    e.removeAll(localArrayList);
    int j = a + 1;
    while (j < e.size())
    {
      e.get(j)).a = j;
      j += 1;
    }
    e = false;
    c = null;
    notifyItemRangeRemoved(a + 1, localArrayList.size());
  }
  
  private void b(aj paramaj, boolean paramBoolean)
  {
    if (e) {}
    h localh;
    do
    {
      return;
      localh = b;
    } while ((localh.l() == null) || (localh.l().size() == 0));
    ArrayList localArrayList = new ArrayList();
    int k = a;
    int j = 0;
    if (j < localh.l().size())
    {
      Object localObject = (h)localh.l().get(j);
      if ((paramBoolean) && (localh.q() != 2)) {}
      for (;;)
      {
        j += 1;
        break;
        localObject = a((h)localObject, paramaj);
        k += 1;
        a = k;
        localArrayList.add(localObject);
      }
    }
    c = localArrayList;
    e.addAll(a + 1, localArrayList);
    j = a + localArrayList.size();
    while (j < e.size())
    {
      e.get(j)).a = j;
      j += 1;
    }
    e = true;
    notifyItemRangeInserted(a + 1, localArrayList.size());
  }
  
  private d c(h paramh)
  {
    PackageManager localPackageManager = b.getPackageManager();
    try
    {
      paramh = localPackageManager.getApplicationInfo(paramh.e(), 0);
      if (paramh == null) {
        return null;
      }
    }
    catch (PackageManager.NameNotFoundException paramh)
    {
      for (;;)
      {
        paramh.printStackTrace();
        paramh = null;
      }
    }
    return new d(sourceDir, com.estrongs.fs.w.b, com.estrongs.android.pop.utils.w.a(localPackageManager, paramh), paramh);
  }
  
  private void c(aj paramaj)
  {
    Object localObject;
    if (e)
    {
      localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        localObject = (aj)localIterator.next();
        h localh = b;
        if (localh.q() != 2)
        {
          localh.d(2);
          notifyItemChanged(a);
        }
      }
    }
    Iterator localIterator = b.l().iterator();
    while (localIterator.hasNext())
    {
      localObject = (h)localIterator.next();
      if (((h)localObject).q() != 2) {
        ((h)localObject).d(2);
      }
    }
    notifyItemChanged(a);
  }
  
  private int d(h paramh)
  {
    int j = 0;
    if (paramh.l() == null) {
      return 0;
    }
    for (;;)
    {
      synchronized (paramh.l())
      {
        paramh = paramh.l().iterator();
        if (paramh.hasNext())
        {
          if (((h)paramh.next()).a()) {
            j += 1;
          }
        }
        else {
          return j;
        }
      }
    }
  }
  
  private void d()
  {
    c.a(c.v().c());
  }
  
  private void d(aj paramaj)
  {
    Object localObject;
    if (e)
    {
      localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        localObject = (aj)localIterator.next();
        h localh = b;
        if (localh.q() != 0)
        {
          localh.d(0);
          notifyItemChanged(a);
        }
      }
    }
    Iterator localIterator = b.l().iterator();
    while (localIterator.hasNext())
    {
      localObject = (h)localIterator.next();
      if (((h)localObject).q() != 0) {
        ((h)localObject).d(0);
      }
    }
    notifyItemChanged(a);
  }
  
  private int e(h paramh)
  {
    if (paramh.l() == null) {
      return 0;
    }
    for (;;)
    {
      synchronized (paramh.l())
      {
        int k = paramh.l().size();
        paramh = paramh.l().iterator();
        int j = 0;
        if (paramh.hasNext())
        {
          h localh = (h)paramh.next();
          if (localh.q() == 2) {
            j += 1;
          } else if (localh.q() == 1) {
            return 1;
          }
        }
        else
        {
          if (j == 0) {
            return 0;
          }
          if (j == k) {
            return 2;
          }
          return 1;
        }
      }
    }
  }
  
  public aj a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < e.size())) {
      return (aj)e.get(paramInt);
    }
    return null;
  }
  
  public List<h> a()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = d.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = nextb;
      if ((((h)localObject2).g() == 8) || (((h)localObject2).g() == 2))
      {
        if (d((h)localObject2) > 0) {
          localArrayList.add(localObject2);
        }
      }
      else
      {
        localObject2 = ((h)localObject2).l().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          h localh = (h)((Iterator)localObject2).next();
          if (localh.q() != 0) {
            localArrayList.add(localh);
          }
        }
      }
    }
    int k = localArrayList.size() / 12;
    if (k < 1) {
      return localArrayList;
    }
    localObject1 = new ArrayList();
    int j = 0;
    while (j < localArrayList.size())
    {
      localObject2 = (h)localArrayList.get(j);
      if ((j % k == 0) || (((h)localObject2).b() == 1)) {
        ((ArrayList)localObject1).add(localObject2);
      }
      j += 1;
    }
    return (List<h>)localObject1;
  }
  
  public void a(h paramh)
  {
    paramh = a(paramh, null);
    a = d.size();
    d.add(paramh);
    e.add(paramh);
  }
  
  public void b()
  {
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext())
    {
      aj localaj = (aj)localIterator.next();
      if ((f) && (!e)) {
        b(localaj, false);
      }
    }
  }
  
  public boolean c()
  {
    if (d == null) {
      return true;
    }
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = nextb;
      if (localObject != null)
      {
        localObject = ((h)localObject).l();
        if ((localObject != null) && (!((List)localObject).isEmpty())) {
          return false;
        }
      }
    }
    return true;
  }
  
  public int getItemCount()
  {
    return e.size();
  }
  
  public int getItemViewType(int paramInt)
  {
    return ab.b();
  }
  
  public void onAttachedToRecyclerView(RecyclerView paramRecyclerView)
  {
    super.onAttachedToRecyclerView(paramRecyclerView);
    h = paramRecyclerView.getWidth();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    int j = getItemViewType(paramInt);
    aj localaj = a(paramInt);
    if (localaj == null) {
      return;
    }
    itemView.setTag(localaj);
    if (j == 1) {
      a((com.estrongs.android.pop.app.cleaner.a.a)paramViewHolder, localaj, paramInt);
    }
    for (;;)
    {
      itemView.setOnClickListener(new ac(this));
      return;
      a((b)paramViewHolder, localaj, paramInt);
    }
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt == 1)
    {
      paramViewGroup = new com.estrongs.android.pop.app.cleaner.a.a(LayoutInflater.from(b).inflate(2130903296, paramViewGroup, false));
      a.setTextColor(b(2131558538));
      b.setTextColor(b(2131558538));
      return paramViewGroup;
    }
    paramViewGroup = new b(LayoutInflater.from(b).inflate(2130903297, paramViewGroup, false));
    b.setTextColor(b(2131558540));
    e.setTextColor(b(2131558537));
    c.setTextColor(b(2131558537));
    d.setTextColor(b(2131558537));
    return paramViewGroup;
  }
  
  public void onViewAttachedToWindow(RecyclerView.ViewHolder paramViewHolder)
  {
    super.onViewAttachedToWindow(paramViewHolder);
    if (g) {
      return;
    }
    View localView = itemView;
    f.add(paramViewHolder);
    if (com.estrongs.android.pop.ac.a() >= 14) {
      cn.a(itemView, h);
    }
    cn.a(localView, new ag(this, paramViewHolder, localView), paramViewHolder.getAdapterPosition() * 50);
  }
  
  public void onViewRecycled(RecyclerView.ViewHolder paramViewHolder)
  {
    super.onViewRecycled(paramViewHolder);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */