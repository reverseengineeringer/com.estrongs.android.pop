package com.estrongs.android.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;

public class p
{
  public static void a(Context paramContext)
  {
    a(paramContext, "kunw@estrongs.com", null, null);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, CharSequence paramCharSequence)
  {
    Intent localIntent = new Intent();
    localIntent.setType("text/plain");
    localIntent.setAction("android.intent.action.SENDTO");
    localIntent.setData(Uri.fromParts("mailto", paramString1, null));
    if (paramString2 != null) {
      localIntent.putExtra("android.intent.extra.SUBJECT", paramString2);
    }
    if (paramCharSequence != null) {
      localIntent.putExtra("android.intent.extra.TEXT", paramCharSequence);
    }
    try
    {
      if ((paramContext instanceof FileExplorerActivity))
      {
        ((FileExplorerActivity)paramContext).a(localIntent);
        return;
      }
      paramContext.startActivity(localIntent);
      return;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      ak.a(paramContext, paramContext.getString(2131231103), 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */