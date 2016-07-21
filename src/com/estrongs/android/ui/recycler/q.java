package com.estrongs.android.ui.recycler;

import android.support.v4.view.cn;
import android.support.v7.widget.RecyclerView.ViewHolder;
import java.util.ArrayList;

class q
  implements Runnable
{
  q(n paramn, ArrayList paramArrayList) {}
  
  public void run()
  {
    int m = 0;
    int k = 0;
    int i = -1;
    int j;
    RecyclerView.ViewHolder localViewHolder;
    for (;;)
    {
      j = m;
      if (k >= a.size()) {
        break;
      }
      localViewHolder = (RecyclerView.ViewHolder)a.get(k);
      j = i;
      if (i == -1) {
        j = localViewHolder.getAdapterPosition();
      }
      i = j;
      if (j > localViewHolder.getAdapterPosition()) {
        i = localViewHolder.getAdapterPosition();
      }
      k += 1;
    }
    while (j < a.size())
    {
      localViewHolder = (RecyclerView.ViewHolder)a.get(j);
      cn.a(itemView, new r(this, localViewHolder), (localViewHolder.getAdapterPosition() - i) * n.c(b));
      j += 1;
    }
    a.clear();
    n.d(b).remove(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */