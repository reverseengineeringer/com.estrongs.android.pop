package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import com.estrongs.android.ui.view.ag;

class dt
  implements Runnable
{
  dt(ds paramds, boolean paramBoolean, String paramString) {}
  
  public void run()
  {
    if (a) {
      if (ImageCommentPostActivity.c(c.b))
      {
        c.b.setResult(-1);
        c.b.finish();
      }
    }
    for (;;)
    {
      ag.a(c.b, b, 1);
      return;
      Intent localIntent = c.b.getIntent();
      localIntent.setClass(c.b, ImageCommentActivity.class);
      c.b.startActivity(localIntent);
      break;
      c.b.findViewById(2131362614).setVisibility(8);
      c.b.findViewById(2131362610).setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */