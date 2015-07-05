package com.estrongs.android.ui.c;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class e
  implements View.OnClickListener
{
  e(a parama, View paramView, String paramString, ImageView paramImageView) {}
  
  public void onClick(View paramView)
  {
    if (a.getVisibility() == 0)
    {
      a.setVisibility(8);
      ad.a(FexApplication.a()).d(b, false);
      c.setImageResource(2130837511);
      return;
    }
    a.setVisibility(0);
    ad.a(FexApplication.a()).d(b, true);
    c.setImageResource(2130837512);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */