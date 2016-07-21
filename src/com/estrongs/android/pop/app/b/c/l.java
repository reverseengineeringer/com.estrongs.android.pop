package com.estrongs.android.pop.app.b.c;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;

public abstract class l
  extends RecyclerView.ViewHolder
{
  protected Context n;
  
  public l(Context paramContext, int paramInt)
  {
    super(LayoutInflater.from(paramContext).inflate(paramInt, null));
    n = paramContext;
    a(itemView);
  }
  
  protected abstract void a(View paramView);
  
  public abstract void a(Object paramObject);
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.c.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */