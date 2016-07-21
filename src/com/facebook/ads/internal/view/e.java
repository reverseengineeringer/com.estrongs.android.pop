package com.facebook.ads.internal.view;

import android.content.Context;
import android.webkit.WebView;

public class e
  extends WebView
{
  private boolean a;
  
  public e(Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean b()
  {
    return a;
  }
  
  public void destroy()
  {
    a = true;
    super.destroy();
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */