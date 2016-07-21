package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.Context;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.pop.app.analysis.b.g;
import com.estrongs.fs.h;

public class x
  extends RecyclerView.ViewHolder
{
  public ImageView a;
  public AppCompatCheckBox b;
  public TextView c;
  private Context d;
  
  public x(Context paramContext, View paramView)
  {
    super(paramView);
    d = paramContext;
    a = ((ImageView)paramView.findViewById(2131624306));
    b = ((AppCompatCheckBox)paramView.findViewById(2131624307));
    c = ((TextView)paramView.findViewById(2131624308));
  }
  
  public void a(g paramg)
  {
    e.a(b, a);
    c.setText(b.getName());
    b.setClickable(false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */