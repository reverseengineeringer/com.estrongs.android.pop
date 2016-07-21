package com.facebook.ads.internal.action;

import android.content.Context;
import android.net.Uri;
import com.facebook.ads.internal.util.b.a;
import com.facebook.ads.internal.util.g;
import com.facebook.ads.internal.util.o;
import com.facebook.ads.internal.util.s;

public abstract class a
{
  public abstract b.a a();
  
  protected void a(Context paramContext, Uri paramUri)
  {
    paramUri = paramUri.getQueryParameter("native_click_report_url");
    if (s.a(paramUri)) {
      return;
    }
    new o().execute(new String[] { paramUri });
    g.a(paramContext, "Click logged");
  }
  
  public abstract void b();
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.action.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */