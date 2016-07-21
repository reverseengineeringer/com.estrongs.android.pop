package com.estrongs.android.pop.app.analysis.view;

import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

class u
  extends RecyclerView.Adapter<RecyclerView.ViewHolder>
{
  private u(i parami) {}
  
  public int getItemCount()
  {
    return i.d(a).size();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    ((t)paramViewHolder).a((s)i.d(a).get(paramInt));
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    return new t(a, LayoutInflater.from(i.m(a)).inflate(2130903090, paramViewGroup, false));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */