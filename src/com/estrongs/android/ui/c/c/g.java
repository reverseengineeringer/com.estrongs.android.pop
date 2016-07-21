package com.estrongs.android.ui.c.c;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ViewGroup.LayoutParams;
import com.estrongs.android.k.d;
import com.estrongs.android.pop.app.unlock.UnLockCardView;

public class g
  extends RecyclerView.ViewHolder
{
  private UnLockCardView a;
  
  public g(UnLockCardView paramUnLockCardView)
  {
    super(paramUnLockCardView);
    a = paramUnLockCardView;
    a.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
  }
  
  public void a(d paramd)
  {
    a.a(paramd);
  }
  
  public void a(com.estrongs.android.pop.app.unlock.g paramg)
  {
    a.a = paramg;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.c.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */