package com.estrongs.android.view;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import com.estrongs.android.pop.app.DownloaderActivity;

class ef
  implements DownloadListener
{
  ef(WebViewWrapper paramWebViewWrapper) {}
  
  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    paramString1 = Uri.parse(paramString1);
    paramString2 = new Intent(a.ad, DownloaderActivity.class);
    paramString2.setData(paramString1);
    a.a(paramString2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */