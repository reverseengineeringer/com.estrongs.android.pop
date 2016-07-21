package com.dianxinos.library.notify.f;

import android.content.Context;
import android.os.Environment;
import com.dianxinos.library.notify.c;
import com.dianxinos.library.notify.j.g;
import java.io.File;

public class a
{
  private static final File a = new File(b, "/.estrongs/dianxin");
  private static final File b;
  private static final File c = c.a().getFilesDir();
  private static final File d = new File(a, g.c());
  
  static
  {
    b = Environment.getExternalStorageDirectory();
  }
  
  public static File a(String paramString)
  {
    return a(".cache", paramString, false);
  }
  
  private static File a(String paramString1, String paramString2, boolean paramBoolean)
  {
    File localFile;
    if (paramBoolean)
    {
      localFile = c;
      paramString1 = new File(new File(localFile, paramString1), g.b());
      if (paramString2 == null) {
        break label70;
      }
      paramString2 = paramString2.trim();
      if (paramString2.length() <= 0) {
        break label70;
      }
      paramString1 = new File(paramString1, paramString2);
    }
    label70:
    for (;;)
    {
      g.a(paramString1.getPath());
      return paramString1;
      localFile = d;
      break;
    }
  }
  
  public static File a(boolean paramBoolean, String paramString)
  {
    return a(".cache", paramString, paramBoolean);
  }
  
  public static File b(boolean paramBoolean, String paramString)
  {
    return a("download", paramString, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */