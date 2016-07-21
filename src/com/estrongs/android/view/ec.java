package com.estrongs.android.view;

import android.support.v7.widget.RecyclerView.AdapterDataObserver;

class ec
  extends RecyclerView.AdapterDataObserver
{
  ec(eb parameb) {}
  
  public void onChanged()
  {
    super.onChanged();
    if ((a.i.getItemCount() == 0) && (a.x))
    {
      a.n_();
      return;
    }
    a.U();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */