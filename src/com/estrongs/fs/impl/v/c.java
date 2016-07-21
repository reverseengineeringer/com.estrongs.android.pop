package com.estrongs.fs.impl.v;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.DatabaseUtils;
import android.provider.MediaStore.Video.Media;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.io.File;

public class c
  extends com.estrongs.fs.impl.media.c
{
  private static c g;
  
  private c()
  {
    c = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
    d = "_data";
    e = "title";
  }
  
  public static c b()
  {
    if (g == null) {
      g = new c();
    }
    return g;
  }
  
  public static boolean e(String paramString)
  {
    if (paramString.equals("video://")) {}
    for (paramString = ap.g();; paramString = paramString.substring("video://".length()))
    {
      return new File(paramString).exists();
      if (!paramString.startsWith("video://")) {
        break;
      }
    }
    return false;
  }
  
  public int a(String paramString1, String paramString2)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put(d, paramString2);
      paramString1 = d + "=" + DatabaseUtils.sqlEscapeString(paramString1);
      int i = FexApplication.a().getContentResolver().update(c, localContentValues, paramString1, null);
      return i;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return 0;
  }
  
  protected h a(File paramFile)
  {
    return new a(paramFile);
  }
  
  protected String a()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.v.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */