package com.estrongs.android.ui.view;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.b;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;

class ce
  implements View.OnClickListener
{
  ce(RecommendListView paramRecommendListView) {}
  
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
      Object localObject;
      if ((aa)[i].q == 0) || (aa)[i].q == 2) || (aa)[i].q == 7))
      {
        if (aa)[i].v != 3)
        {
          if (RecommendListView.a(a)[i].c() != null)
          {
            aa)[i].y = true;
            String str = RecommendListView.a(a)[i].c();
            localObject = str;
            if (str.startsWith("https://play.google.com/store/apps/details")) {
              localObject = str.replaceFirst("https://play.google.com/store/apps/details", "market://details");
            }
            if (((String)localObject).startsWith("market://details"))
            {
              RecommendListView.a(a, i, (String)localObject, null);
            }
            else
            {
              aa)[i].q = 6;
              RecommendListView.c(a).notifyDataSetChanged();
              new cf(this, (String)localObject, i).start();
            }
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
          localObject = RecommendListView.d(a).getPackageManager().getLaunchIntentForPackage(aa)[i].f);
          if (localObject != null) {
            RecommendListView.d(a).startActivity((Intent)localObject);
          }
        }
      }
      else if (aa)[i].q == 3)
      {
        localObject = b.a(n.a(aa)[i].f));
        RecommendListView.d(a).startActivity((Intent)localObject);
      }
      else if (aa)[i].q == 4)
      {
        n.b().c(RecommendListView.a(a)[i]);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */