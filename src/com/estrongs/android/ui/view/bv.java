package com.estrongs.android.ui.view;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.RecommAcitivity;
import com.estrongs.android.pop.app.b;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;

class bv
  implements View.OnClickListener
{
  bv(RecommendListView paramRecommendListView) {}
  
  public void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    if ((aa)[i].q == 1) || (aa)[i].q == 5))
    {
      RecommendListView.a(a, i);
      aa)[i].q = 0;
      RecommendListView.a(a, (View)RecommendListView.b(a).get(i), RecommendListView.a(a)[i]);
    }
    for (;;)
    {
      paramView.invalidate();
      return;
      label261:
      Intent localIntent2;
      if ((aa)[i].q == 0) || (aa)[i].q == 2))
      {
        if (aa)[i].v != 3)
        {
          if (RecommendListView.a(a)[i].c() != null)
          {
            aa)[i].y = true;
            Intent localIntent1 = new Intent("android.intent.action.VIEW");
            localIntent1.setData(Uri.parse(RecommendListView.a(a)[i].c()));
            try
            {
              if (!(RecommendListView.c(a) instanceof RecommAcitivity)) {
                break label261;
              }
              ((RecommAcitivity)RecommendListView.c(a)).a(localIntent1);
            }
            catch (ActivityNotFoundException localActivityNotFoundException)
            {
              ag.a(RecommendListView.c(a), RecommendListView.c(a).getText(2131427842), 1);
            }
            continue;
            RecommendListView.c(a).startActivity(localActivityNotFoundException);
          }
          else
          {
            aa)[i].u = 0L;
            aa)[i].q = 5;
            RecommendListView.a(a, (View)RecommendListView.b(a).get(i), RecommendListView.a(a)[i]);
            n.b().c(RecommendListView.a(a)[i]);
          }
        }
        else
        {
          localIntent2 = RecommendListView.c(a).getPackageManager().getLaunchIntentForPackage(aa)[i].f);
          if (localIntent2 != null) {
            RecommendListView.c(a).startActivity(localIntent2);
          }
        }
      }
      else if (aa)[i].q == 3)
      {
        localIntent2 = b.a(n.a(aa)[i].f));
        RecommendListView.c(a).startActivity(localIntent2);
      }
      else if (aa)[i].q == 4)
      {
        n.b().c(RecommendListView.a(a)[i]);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */