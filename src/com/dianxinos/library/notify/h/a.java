package com.dianxinos.library.notify.h;

import android.text.TextUtils;
import com.dianxinos.library.b.b.b;
import com.dianxinos.library.notify.c;
import com.dianxinos.library.notify.data.k;
import com.dianxinos.library.notify.download.DownloadInfo;

public class a
{
  private static b a = b.a(c.a(), "notify_items", k.b());
  private static com.dianxinos.library.b.b.a b = a.a("config");
  
  public static DownloadInfo a(String paramString)
  {
    paramString = b.b(paramString, null);
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return DownloadInfo.fromString(paramString);
  }
  
  public static void a()
  {
    b.a();
  }
  
  public static boolean a(DownloadInfo paramDownloadInfo)
  {
    if (paramDownloadInfo == null) {
      return false;
    }
    String str = mUri;
    paramDownloadInfo = paramDownloadInfo.toJsonString();
    return b.a(str, paramDownloadInfo);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.h.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */