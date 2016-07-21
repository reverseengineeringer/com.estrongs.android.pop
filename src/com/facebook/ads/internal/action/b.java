package com.facebook.ads.internal.action;

import android.content.Context;
import android.net.Uri;

public class b
{
  public static a a(Context paramContext, Uri paramUri)
  {
    String str1 = paramUri.getAuthority();
    String str2 = paramUri.getQueryParameter("video_url");
    if ("store".equals(str1)) {
      if (str2 == null) {}
    }
    while (!"open_link".equals(str1))
    {
      return null;
      return new c(paramContext, paramUri);
    }
    return new d(paramContext, paramUri);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.action.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */