package com.estrongs.android.b.a.b.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.b.a.o;
import com.estrongs.android.pop.app.ad.j;
import com.estrongs.android.pop.app.cleaner.i;
import com.estrongs.android.ui.d.g;

public class a
  implements o
{
  private void a(Context paramContext)
  {
    try
    {
      paramContext = com.estrongs.android.j.c.a(paramContext);
      paramContext.c("clean", "Clean_ad_click_pv");
      paramContext.a("Clean_ad_click_pv");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public View a(ViewGroup paramViewGroup, Context paramContext)
  {
    return LayoutInflater.from(paramContext).inflate(2130903072, paramViewGroup, false);
  }
  
  public String a()
  {
    return "ad";
  }
  
  public void a(View paramView, com.estrongs.android.b.a.a parama, Context paramContext, int paramInt, i parami)
  {
    paramView = (ViewGroup)paramView;
    paramView.removeAllViews();
    Object localObject = parama.c("ad");
    if ((localObject instanceof j))
    {
      localObject = (j)localObject;
      View localView = ((j)localObject).a();
      com.estrongs.android.pop.app.ad.a.a().a((j)localObject, true);
      com.estrongs.android.pop.app.ad.a.a().a(new b(this, paramContext));
      if (localView.getParent() != null) {
        ((ViewGroup)localView.getParent()).removeView(localView);
      }
      paramView.addView(localView, new LinearLayout.LayoutParams(-1, -1));
      paramView = (ImageView)localView.findViewById(2131624143);
      paramView.setImageDrawable(g.a(paramView.getDrawable(), paramContext.getResources().getColor(2131558538)));
      paramView.setOnClickListener(new c(this, paramContext, parami, parama));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */