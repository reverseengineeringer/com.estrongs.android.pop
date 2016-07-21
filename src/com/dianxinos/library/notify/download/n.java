package com.dianxinos.library.notify.download;

import android.net.Uri;
import android.provider.BaseColumns;

public final class n
  implements BaseColumns
{
  public static final Uri a = Uri.parse("content://downloads/my_downloads");
  public static final Uri b = Uri.parse("content://downloads/all_downloads");
  public static final Uri c = Uri.parse("content://downloads/public_downloads");
  
  public static boolean a(int paramInt)
  {
    return (paramInt >= 400) && (paramInt < 600);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */