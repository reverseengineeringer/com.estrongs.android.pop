package com.estrongs.android.pop.app;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;

class ky
  implements View.OnClickListener
{
  ky(RecommItemDetailAcitivity paramRecommItemDetailAcitivity) {}
  
  public void onClick(View paramView)
  {
    int i = RecommItemDetailAcitivity.b(a);
    if ((aa).q == 1) || (aa).q == 5))
    {
      RecommItemDetailAcitivity.a(a, i);
      aa).q = 0;
      RecommItemDetailAcitivity.c(a);
    }
    for (;;)
    {
      paramView.invalidate();
      return;
      Object localObject;
      if ((aa).q == 0) || (aa).q == 2) || (aa).q == 7))
      {
        if (aa).v != 3)
        {
          if (RecommItemDetailAcitivity.a(a).c() != null)
          {
            aa).y = true;
            localObject = RecommItemDetailAcitivity.a(a).c();
            if (((String)localObject).startsWith("market://"))
            {
              RecommItemDetailAcitivity.a(a, RecommItemDetailAcitivity.a(a).c(), null);
            }
            else
            {
              aa).q = 6;
              a.findViewById(2131625452).setVisibility(8);
              a.findViewById(2131624391).setVisibility(0);
              new kz(this, (String)localObject).start();
            }
          }
          else
          {
            aa).u = 0L;
            aa).q = 5;
            RecommItemDetailAcitivity.c(a);
            n.b().c(RecommItemDetailAcitivity.a(a));
          }
        }
        else
        {
          localObject = a.getPackageManager().getLaunchIntentForPackage(aa).f);
          if (localObject != null) {
            a.startActivity((Intent)localObject);
          }
        }
      }
      else if (aa).q == 3)
      {
        localObject = b.a(n.a(aa).f));
        a.startActivity((Intent)localObject);
      }
      else if (aa).q == 4)
      {
        n.b().c(RecommItemDetailAcitivity.a(a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */