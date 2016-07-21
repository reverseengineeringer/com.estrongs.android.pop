package com.estrongs.android.pop.app.finder.a;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.estrongs.android.pop.app.finder.data.FinderGroupData;
import com.estrongs.android.pop.app.finder.data.FinderGroupData.GroupType;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class a
  extends RecyclerView.Adapter<com.estrongs.android.pop.app.finder.b.a>
{
  private List<FinderGroupData> a;
  private Context b;
  private b c;
  private int d = -1;
  
  public a(Context paramContext)
  {
    b = paramContext;
    a = new CopyOnWriteArrayList();
  }
  
  public com.estrongs.android.pop.app.finder.b.a a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = LayoutInflater.from(b).inflate(2130903233, paramViewGroup, false);
    return new com.estrongs.android.pop.app.finder.b.a(b, paramViewGroup);
  }
  
  public void a()
  {
    if ((d == -1) || (d > a.size())) {
      return;
    }
    notifyItemChanged(d);
  }
  
  public void a(b paramb)
  {
    c = paramb;
  }
  
  public void a(com.estrongs.android.pop.app.finder.b.a parama, int paramInt)
  {
    FinderGroupData localFinderGroupData = (FinderGroupData)a.get(paramInt);
    parama.a(c);
    parama.a(localFinderGroupData, paramInt);
    if (d == FinderGroupData.GroupType.Type) {
      d = paramInt;
    }
  }
  
  public void a(List<FinderGroupData> paramList)
  {
    a.clear();
    a.addAll(paramList);
  }
  
  public int getItemCount()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.finder.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */