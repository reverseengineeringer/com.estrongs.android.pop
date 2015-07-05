package com.estrongs.android.pop.app.imageviewer;

import android.graphics.BitmapFactory.Options;

class d
{
  public BitmapManager.State a = BitmapManager.State.ALLOW;
  public BitmapFactory.Options b;
  
  public String toString()
  {
    String str;
    if (a == BitmapManager.State.CANCEL) {
      str = "Cancel";
    }
    for (;;)
    {
      return "thread state = " + str + ", options = " + b;
      if (a == BitmapManager.State.ALLOW) {
        str = "Allow";
      } else {
        str = "?";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */