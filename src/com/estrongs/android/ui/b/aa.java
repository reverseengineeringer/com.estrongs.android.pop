package com.estrongs.android.ui.b;

import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import com.estrongs.android.view.ck;

class aa
  extends RecyclerView.AdapterDataObserver
{
  aa(u paramu) {}
  
  public void onChanged()
  {
    super.onChanged();
    if ((u.n(a).getItemCount() == 0) && (u.o(a)))
    {
      u.p(a);
      return;
    }
    u.q(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */