package com.flurry.sdk;

import android.net.Uri;

class gq$4
  implements kb<ln>
{
  gq$4(gq paramgq) {}
  
  public void a(ln paramln)
  {
    if (gq.a(a) == null) {}
    for (;;)
    {
      return;
      try
      {
        int i = a.getDuration();
        int j = a.getCurrentPosition();
        gq.b(a, a.getCurrentPosition());
        if ((i >= 0) && (gq.e(a) != null) && (a.isPlaying()) && ((j - gq.f(a) > 1000.0F) || (gq.f(a) <= 300.0F)))
        {
          gq.a(a, j);
          gq.e(a).a(gq.a(a).toString(), i, j);
          return;
        }
      }
      catch (Exception paramln)
      {
        kg.a(gq.k(), "Video view progress error: " + paramln.getMessage());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gq.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */