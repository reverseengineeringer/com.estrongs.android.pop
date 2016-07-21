package com.duapps.ad.offerwall.a;

import com.duapps.ad.base.l;

class e
  implements Runnable
{
  e(c paramc) {}
  
  public void run()
  {
    if (b.d(a.a) != null)
    {
      l.c("DownloadAdsManager", "Download ads poll data... , size:" + a.a.a());
      b.d(a.a).b(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */