package com.flurry.sdk;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build.VERSION;
import android.view.View;

class fh$4
  extends ly
{
  fh$4(fh paramfh, View paramView, String paramString) {}
  
  public void a()
  {
    if (Build.VERSION.SDK_INT < 16)
    {
      a.setBackgroundDrawable(new BitmapDrawable(BitmapFactory.decodeFile(b)));
      return;
    }
    a.setBackground(new BitmapDrawable(BitmapFactory.decodeFile(b)));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fh.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */