package com.estrongs.android.ui.recycler;

import android.content.Context;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.estrongs.android.pop.app.analysis.y;
import com.estrongs.android.pop.utils.cl;

public class h
  extends RecyclerView.Adapter<RecyclerView.ViewHolder>
{
  private RecyclerView.Adapter<RecyclerView.ViewHolder> a;
  private GridLayoutManager b;
  private Context c;
  private y d;
  private int e = -1;
  private boolean f = cl.a();
  
  public h(Context paramContext, RecyclerView paramRecyclerView, y paramy)
  {
    a = paramRecyclerView.getAdapter();
    b = ((GridLayoutManager)paramRecyclerView.getLayoutManager());
    d = paramy;
    c = paramContext;
  }
  
  private void a()
  {
    d = null;
    m localm = (m)b.getSpanSizeLookup();
    if (localm != null) {
      localm.a(false);
    }
    notifyItemRemoved(0);
  }
  
  private void a(View paramView, y paramy)
  {
    TextView localTextView = (TextView)paramView.findViewById(2131625057);
    Object localObject = (TextView)paramView.findViewById(2131625059);
    localObject = (Button)paramView.findViewById(2131625060);
    localTextView.setText(paramy.c());
    paramView.setOnClickListener(new j(this));
    ((Button)localObject).setOnClickListener(new k(this));
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a(y paramy)
  {
    d = paramy;
  }
  
  public int getItemCount()
  {
    if (d == null) {
      return a.getItemCount();
    }
    return a.getItemCount() + 1;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (d == null) {}
    while (paramInt != 0) {
      return 1;
    }
    return 0;
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    if (getItemViewType(paramInt) == 1)
    {
      int i = paramInt;
      if (d != null) {
        i = paramInt - 1;
      }
      a.onBindViewHolder(paramViewHolder, i);
      return;
    }
    a(itemView, d);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt == 1) {
      return a.onCreateViewHolder(paramViewGroup, paramInt);
    }
    return new i(this, LayoutInflater.from(c).inflate(2130903286, paramViewGroup, false));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */