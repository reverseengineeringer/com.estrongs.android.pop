package com.facebook.ads.internal.action;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.internal.util.b.a;

public class d
  extends a
{
  private static final String a = d.class.getSimpleName();
  private final Context b;
  private final Uri c;
  
  public d(Context paramContext, Uri paramUri)
  {
    b = paramContext;
    c = paramUri;
  }
  
  public b.a a()
  {
    return b.a.b;
  }
  
  public void b()
  {
    a(b, c);
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(c.getQueryParameter("link")));
    localIntent.addFlags(268435456);
    try
    {
      b.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      Log.d(a, "Failed to open market url: " + c.toString(), localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.action.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */