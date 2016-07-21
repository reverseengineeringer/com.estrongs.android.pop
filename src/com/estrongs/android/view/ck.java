package com.estrongs.android.view;

import android.support.v7.widget.RecyclerView.Adapter;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.ui.drag.DragGrid;
import com.estrongs.android.ui.drag.d;
import java.util.LinkedList;
import java.util.List;

public class ck<T>
  extends RecyclerView.Adapter<ci>
{
  protected List<T> b = new LinkedList();
  protected cn c;
  protected d d;
  
  public ck(cg paramcg) {}
  
  public ci a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = c.a();
    return c.b(paramViewGroup);
  }
  
  public T a(int paramInt)
  {
    if ((b == null) || (paramInt < 0) || (paramInt >= b.size())) {
      return null;
    }
    return (T)b.get(paramInt);
  }
  
  public List<T> a()
  {
    return b;
  }
  
  public void a(d paramd)
  {
    d = paramd;
  }
  
  public void a(ci paramci, int paramInt)
  {
    itemView.setBackgroundResource(2130837674);
    m = a(paramInt);
    if (d != null)
    {
      DragGrid localDragGrid = (DragGrid)itemView;
      localDragGrid.setDragController(d);
      d.a(localDragGrid);
    }
    c.a(paramci, paramInt);
    itemView.setFocusable(true);
    itemView.setOnClickListener(new cl(this, paramci, paramInt));
    if (e.k != null)
    {
      itemView.setOnLongClickListener(new cm(this, paramInt));
      return;
    }
    itemView.setOnLongClickListener(null);
  }
  
  public void a(cn paramcn)
  {
    c = paramcn;
  }
  
  public void a(List<T> paramList)
  {
    b = paramList;
    notifyDataSetChanged();
  }
  
  public int getItemCount()
  {
    if (b == null) {
      return 0;
    }
    return b.size();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */