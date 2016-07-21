package com.estrongs.android.ui.recycler;

import android.support.v7.widget.RecyclerView.ViewHolder;

class x
{
  public RecyclerView.ViewHolder a;
  public RecyclerView.ViewHolder b;
  public int c;
  public int d;
  public int e;
  public int f;
  
  private x(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2)
  {
    a = paramViewHolder1;
    b = paramViewHolder2;
  }
  
  private x(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this(paramViewHolder1, paramViewHolder2);
    c = paramInt1;
    d = paramInt2;
    e = paramInt3;
    f = paramInt4;
  }
  
  public String toString()
  {
    return "ChangeInfo{oldHolder=" + a + ", newHolder=" + b + ", fromX=" + c + ", fromY=" + d + ", toX=" + e + ", toY=" + f + '}';
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */