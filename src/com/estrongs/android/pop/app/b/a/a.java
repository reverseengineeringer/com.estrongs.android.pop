package com.estrongs.android.pop.app.b.a;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ViewGroup;
import com.estrongs.android.h.f;
import com.estrongs.android.pop.app.b.b;
import com.estrongs.android.pop.app.b.c.d;
import com.estrongs.android.pop.app.b.c.e;
import com.estrongs.android.pop.app.b.c.j;
import com.estrongs.android.pop.app.b.c.l;
import java.util.ArrayList;
import java.util.List;

public class a
  extends RecyclerView.Adapter<RecyclerView.ViewHolder>
{
  private List<b> a;
  private Context b;
  private boolean c;
  private boolean d;
  
  public a(Context paramContext)
  {
    b = paramContext;
    a = new ArrayList();
    c = true;
    d = false;
  }
  
  public void a(List<b> paramList)
  {
    a.clear();
    a.addAll(paramList);
  }
  
  public void a(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public int getItemCount()
  {
    if ((c) && (a.size() != 0)) {
      return a.size() + 1;
    }
    return a.size();
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((c) && (paramInt != 0) && (paramInt == a.size())) {
      return 100;
    }
    return a.get(paramInt)).c;
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    if ((paramViewHolder instanceof d))
    {
      ((l)paramViewHolder).a(Boolean.valueOf(d));
      return;
    }
    ((l)paramViewHolder).a(a.get(paramInt));
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return new com.estrongs.android.pop.app.b.c.a(b);
    case 2: 
    case 4: 
    case 6: 
    case 50: 
      return new com.estrongs.android.pop.app.b.c.a(b);
    case 1: 
    case 3: 
      if (f.b()) {
        return new e(b);
      }
      return new com.estrongs.android.pop.app.b.c.a(b);
    case 51: 
    case 52: 
      return new j(b);
    }
    return new d(b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */