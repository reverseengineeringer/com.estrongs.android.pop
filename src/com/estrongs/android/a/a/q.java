package com.estrongs.android.a.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Files;
import com.estrongs.android.a.b.a;
import com.estrongs.android.cleaner.j;
import com.estrongs.android.pop.FexApplication;
import java.util.List;

public class q
  implements n
{
  private String a;
  private int b;
  private long c;
  private final Uri d;
  
  public q(Uri paramUri)
  {
    d = paramUri;
    a = null;
  }
  
  public q(String paramString)
  {
    d = MediaStore.Files.getContentUri("external");
    a = paramString;
  }
  
  public final a a()
  {
    return new a(c);
  }
  
  public void a(String paramString)
  {
    Object localObject1 = j.d();
    if ((paramString != null) && (((List)localObject1).contains(paramString)))
    {
      localObject1 = new StringBuilder();
      if (a != null)
      {
        localObject1 = new StringBuilder(a);
        ((StringBuilder)localObject1).append(" and ");
      }
      ((StringBuilder)localObject1).append("_data").append(" like '").append(paramString).append("/%'");
      a = ((StringBuilder)localObject1).toString();
    }
    try
    {
      paramString = FexApplication.a().getContentResolver();
      localObject1 = d;
      String str = a;
      paramString = paramString.query((Uri)localObject1, new String[] { "count(_size)", "sum(_size)" }, str, null, null);
      if ((paramString == null) || (paramString != null)) {
        paramString.close();
      }
    }
    finally
    {
      try
      {
        if (paramString.moveToFirst())
        {
          b = paramString.getInt(0);
          c = paramString.getLong(1);
        }
        if (paramString != null) {
          paramString.close();
        }
        return;
      }
      finally {}
      localObject2 = finally;
      paramString = null;
    }
    throw ((Throwable)localObject2);
  }
  
  public void b() {}
  
  public final int c()
  {
    return b;
  }
  
  public final long d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */