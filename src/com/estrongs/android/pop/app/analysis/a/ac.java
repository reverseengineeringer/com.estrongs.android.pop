package com.estrongs.android.pop.app.analysis.a;

import android.content.Context;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.estrongs.android.pop.app.analysis.b.aj;
import com.estrongs.android.pop.app.analysis.b.g;
import com.estrongs.android.pop.app.analysis.viewholders.x;

public class ac
  extends o<aj, g>
{
  private ae d;
  
  public ac(Context paramContext, ae paramae)
  {
    super(paramContext);
    d = paramae;
  }
  
  public RecyclerView.ViewHolder a(ViewGroup paramViewGroup)
  {
    paramViewGroup = LayoutInflater.from(c).inflate(2130903098, paramViewGroup, false);
    return new com.estrongs.android.pop.app.analysis.viewholders.v(c, paramViewGroup);
  }
  
  public void a(RecyclerView.ViewHolder paramViewHolder)
  {
    ((com.estrongs.android.pop.app.analysis.viewholders.v)paramViewHolder).a();
  }
  
  public void a(RecyclerView.ViewHolder paramViewHolder, u paramu, g paramg)
  {
    paramViewHolder = (x)paramViewHolder;
    paramViewHolder.a(paramg);
    b.setOnClickListener(new ad(this, paramu, paramg));
  }
  
  public void a(RecyclerView.ViewHolder paramViewHolder, v paramv, aj paramaj, boolean paramBoolean)
  {
    ((com.estrongs.android.pop.app.analysis.viewholders.v)paramViewHolder).a(paramaj, paramBoolean);
  }
  
  public RecyclerView.ViewHolder b(ViewGroup paramViewGroup)
  {
    paramViewGroup = LayoutInflater.from(c).inflate(2130903099, paramViewGroup, false);
    return new x(c, paramViewGroup);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.a.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */