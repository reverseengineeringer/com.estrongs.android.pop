package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.app.imageviewer.gallery.e;

class az
  extends Thread
{
  az(ViewImage21 paramViewImage21, String paramString)
  {
    super(paramString);
  }
  
  public void run()
  {
    e locale = ViewImage21.q(a);
    if (locale == null)
    {
      a.runOnUiThread(new ba(this));
      return;
    }
    a.runOnUiThread(new bb(this, locale));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */