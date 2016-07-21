package android.support.design.internal;

import android.support.design.g;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;

class j
  extends m
{
  public j(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, View.OnClickListener paramOnClickListener)
  {
    super(paramLayoutInflater.inflate(g.design_navigation_item, paramViewGroup, false));
    itemView.setOnClickListener(paramOnClickListener);
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */