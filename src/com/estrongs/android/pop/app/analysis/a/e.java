package com.estrongs.android.pop.app.analysis.a;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import com.estrongs.android.pop.app.analysis.viewholders.r;

public class e
  extends i
{
  private h o;
  
  public e(Context paramContext, int paramInt, String paramString)
  {
    super(paramContext, paramInt, paramString);
  }
  
  public void a(h paramh)
  {
    o = paramh;
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    com.estrongs.android.pop.app.analysis.b.g localg = a(paramInt);
    f localf = new f(this, localg);
    r localr = (r)paramViewHolder;
    localr.a(localg);
    h.setOnClickListener(localf);
    itemView.setOnClickListener(new g(this, localg));
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = LayoutInflater.from(a).inflate(2130903095, paramViewGroup, false);
    return new r(a, paramViewGroup, i);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */