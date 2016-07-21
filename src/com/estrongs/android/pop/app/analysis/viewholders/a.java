package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.j.c;
import com.flurry.android.ads.FlurryAdNative;

public class a
  extends n
{
  public a(View paramView)
  {
    super(paramView);
  }
  
  private void a(Context paramContext)
  {
    try
    {
      paramContext = c.a(paramContext);
      paramContext.a("A_ad_click");
      paramContext.c("analysis", "A_ad_click");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public void a(com.estrongs.android.b.a.a parama, Context paramContext)
  {
    ViewGroup localViewGroup = (ViewGroup)itemView;
    localViewGroup.removeAllViews();
    parama = (FlurryAdNative)parama.c("ad");
    parama = com.estrongs.android.pop.app.ad.a.a.a().a(parama, new b(this, paramContext));
    if (parama.getParent() != null) {
      ((ViewGroup)parama.getParent()).removeView(parama);
    }
    localViewGroup.addView(parama, new LinearLayout.LayoutParams(-1, -1));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */