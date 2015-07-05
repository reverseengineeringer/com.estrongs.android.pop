package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.app.imageviewer.gallery.e;

class ba
  extends Thread
{
  ba(ViewImage21 paramViewImage21, String paramString)
  {
    super(paramString);
  }
  
  public void run()
  {
    e locale = ViewImage21.p(a);
    if (locale == null)
    {
      a.runOnUiThread(new bb(this));
      return;
    }
    a.runOnUiThread(new bc(this, locale));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */