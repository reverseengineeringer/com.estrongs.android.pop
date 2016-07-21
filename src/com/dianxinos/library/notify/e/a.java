package com.dianxinos.library.notify.e;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;

public class a
{
  private static a a;
  private Context b;
  private android.a.a.a c = null;
  
  private a(Context paramContext)
  {
    b = paramContext;
  }
  
  public static a a(Context paramContext)
  {
    if (a == null) {
      a = new a(paramContext);
    }
    return a;
  }
  
  private void a(Context paramContext, Uri paramUri, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(paramUri, "application/vnd.android.package-archive");
    localIntent.putExtra("android.intent.extra.INSTALLER_PACKAGE_NAME", paramString);
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  public void a(Context paramContext, Uri paramUri, String paramString, Handler paramHandler, int paramInt, boolean paramBoolean)
  {
    a(paramContext, paramUri, paramString);
  }
  
  public boolean a(Context paramContext, String paramString, Handler paramHandler, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString))
    {
      if (e.c) {
        j.c("param deletePackageName must not be null");
      }
      return false;
    }
    if (e.c) {
      j.b("start system uninstaller to uninstall package:" + paramString);
    }
    paramString = new Intent("android.intent.action.DELETE", Uri.fromParts("package", paramString, null));
    paramString.setFlags(268435456);
    paramContext.startActivity(paramString);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */