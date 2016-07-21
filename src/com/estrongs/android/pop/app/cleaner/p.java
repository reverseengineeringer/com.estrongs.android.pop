package com.estrongs.android.pop.app.cleaner;

import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import com.estrongs.android.ui.recycler.n;
import java.util.ArrayList;

public class p
  extends n
{
  private int e = 0;
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  protected void a(RecyclerView.ViewHolder paramViewHolder)
  {
    Object localObject = itemView;
    a.add(paramViewHolder);
    localObject = cn.s((View)localObject);
    ((ex)localObject).b(0.0F).c(0.0F).a(getAddDuration()).a(new q(this, paramViewHolder, (ex)localObject)).c();
  }
  
  public boolean animateAdd(RecyclerView.ViewHolder paramViewHolder)
  {
    boolean bool = super.animateAdd(paramViewHolder);
    cn.b(itemView, e);
    cn.a(itemView, 0.0F);
    return bool;
  }
  
  public long getAddDuration()
  {
    return 500L;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */