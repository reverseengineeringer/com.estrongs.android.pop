package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.b.a.a;

public class ab
  extends n
{
  public TextView a;
  public TextView b;
  private LinearLayout c;
  private TextView d;
  private ImageView e;
  
  public ab(View paramView)
  {
    super(paramView);
    a = ((TextView)paramView.findViewById(2131624158));
    b = ((TextView)paramView.findViewById(2131624159));
    c = ((LinearLayout)paramView.findViewById(2131624160));
    d = ((TextView)paramView.findViewById(2131624121));
    e = ((ImageView)paramView.findViewById(2131624161));
  }
  
  public void a(a parama, Context paramContext)
  {
    if ((parama != null) && (parama.q()))
    {
      c.setBackgroundResource(2130837586);
      d.setTextColor(paramContext.getResources().getColor(2131558745));
      e.setImageResource(2130837668);
      return;
    }
    c.setBackgroundResource(2131558728);
    d.setTextColor(paramContext.getResources().getColor(2131558455));
    e.setImageResource(2130837665);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */