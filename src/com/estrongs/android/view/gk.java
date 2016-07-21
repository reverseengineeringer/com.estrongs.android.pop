package com.estrongs.android.view;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import com.estrongs.android.pop.app.DownloaderActivity;

class gk
  implements DownloadListener
{
  gk(WebViewWrapper paramWebViewWrapper) {}
  
  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    paramString1 = Uri.parse(paramString1);
    paramString2 = new Intent(a.ag, DownloaderActivity.class);
    paramString2.putExtra("islocalopen", true);
    paramString2.setData(paramString1);
    a.a(paramString2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.gk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */