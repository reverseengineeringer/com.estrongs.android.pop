package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.ui.view.ag;

class kl
  implements View.OnClickListener
{
  kl(RecommItemDetailAcitivity paramRecommItemDetailAcitivity) {}
  
  public void onClick(View paramView)
  {
    int i = RecommItemDetailAcitivity.c(a);
    if ((aa).q == 1) || (aa).q == 5))
    {
      RecommItemDetailAcitivity.a(a, i);
      aa).q = 0;
      RecommItemDetailAcitivity.d(a);
    }
    for (;;)
    {
      paramView.invalidate();
      return;
      Intent localIntent2;
      if ((aa).q == 0) || (aa).q == 2))
      {
        if (aa).v != 3)
        {
          if (RecommItemDetailAcitivity.a(a).c() != null)
          {
            aa).y = true;
            Intent localIntent1 = new Intent("android.intent.action.VIEW");
            localIntent1.setData(Uri.parse(RecommItemDetailAcitivity.a(a).c()));
            try
            {
              a.startActivity(localIntent1);
            }
            catch (ActivityNotFoundException localActivityNotFoundException)
            {
              ag.a(a, a.getText(2131427842), 1);
            }
          }
          else
          {
            aa).u = 0L;
            aa).q = 5;
            RecommItemDetailAcitivity.d(a);
            n.b().c(RecommItemDetailAcitivity.a(a));
          }
        }
        else
        {
          localIntent2 = a.getPackageManager().getLaunchIntentForPackage(aa).f);
          if (localIntent2 != null) {
            a.startActivity(localIntent2);
          }
        }
      }
      else if (aa).q == 3)
      {
        localIntent2 = b.a(n.a(aa).f));
        a.startActivity(localIntent2);
      }
      else if (aa).q == 4)
      {
        n.b().c(RecommItemDetailAcitivity.a(a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.kl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */