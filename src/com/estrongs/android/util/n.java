package com.estrongs.android.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.ui.view.ag;

public class n
{
  public static void a(Context paramContext)
  {
    a(paramContext, "contact@estrongs.com", null, null);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramString2 = new Intent();
    paramString2.setType("text/plain");
    paramString2.setAction("android.intent.action.SENDTO");
    paramString2.setData(Uri.fromParts("mailto", paramString1, null));
    try
    {
      paramContext.startActivity(paramString2);
      return;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      ag.a(paramContext, paramContext.getString(2131428397), 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */