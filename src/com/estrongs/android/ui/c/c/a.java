package com.estrongs.android.ui.c.c;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;

public abstract class a
  extends RecyclerView.ViewHolder
{
  protected Context a;
  
  public a(Context paramContext, int paramInt)
  {
    super(LayoutInflater.from(paramContext).inflate(paramInt, null));
    a = paramContext;
    a(itemView);
  }
  
  protected abstract void a(View paramView);
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */