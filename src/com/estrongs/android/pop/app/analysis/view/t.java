package com.estrongs.android.pop.app.analysis.view;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

class t
  extends RecyclerView.ViewHolder
{
  private ProgressBar b;
  private ImageView c;
  private TextView d;
  
  public t(i parami, View paramView)
  {
    super(paramView);
    b = ((ProgressBar)paramView.findViewById(2131624229));
    c = ((ImageView)paramView.findViewById(2131624230));
    d = ((TextView)paramView.findViewById(2131624231));
  }
  
  public void a(s params)
  {
    if (a)
    {
      b.setVisibility(4);
      c.setVisibility(0);
    }
    for (;;)
    {
      d.setText(b);
      return;
      c.setVisibility(8);
      b.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */