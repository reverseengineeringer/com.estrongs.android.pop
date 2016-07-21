package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.e;
import java.util.Map;

@me
public class jj
  extends jr
{
  private final Map<String, String> a;
  private final Context b;
  
  public jj(qa paramqa, Map<String, String> paramMap)
  {
    super(paramqa, "storePicture");
    a = paramMap;
    b = paramqa.c();
  }
  
  DownloadManager.Request a(String paramString1, String paramString2)
  {
    paramString1 = new DownloadManager.Request(Uri.parse(paramString1));
    paramString1.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, paramString2);
    ae.g().a(paramString1);
    return paramString1;
  }
  
  String a(String paramString)
  {
    return Uri.parse(paramString).getLastPathSegment();
  }
  
  public void a()
  {
    if (b == null)
    {
      b("Activity context is not available");
      return;
    }
    if (!ae.e().e(b).c())
    {
      b("Feature is not supported by the device.");
      return;
    }
    String str1 = (String)a.get("iurl");
    if (TextUtils.isEmpty(str1))
    {
      b("Image url cannot be empty.");
      return;
    }
    if (!URLUtil.isValidUrl(str1))
    {
      b("Invalid image url: " + str1);
      return;
    }
    String str2 = a(str1);
    if (!ae.e().c(str2))
    {
      b("Image type not recognized: " + str2);
      return;
    }
    AlertDialog.Builder localBuilder = ae.e().d(b);
    localBuilder.setTitle(ae.h().a(e.store_picture_title, "Save image"));
    localBuilder.setMessage(ae.h().a(e.store_picture_message, "Allow Ad to store image in Picture gallery?"));
    localBuilder.setPositiveButton(ae.h().a(e.accept, "Accept"), new jk(this, str1, str2));
    localBuilder.setNegativeButton(ae.h().a(e.decline, "Decline"), new jl(this));
    localBuilder.create().show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */