package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import com.estrongs.android.ui.view.ak;

class ds
  implements Runnable
{
  ds(dr paramdr, boolean paramBoolean, String paramString) {}
  
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
      ak.a(c.b, b, 1);
      return;
      Intent localIntent = c.b.getIntent();
      localIntent.setClass(c.b, ImageCommentActivity.class);
      c.b.startActivity(localIntent);
      break;
      c.b.findViewById(2131625363).setVisibility(8);
      c.b.findViewById(2131625359).setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */