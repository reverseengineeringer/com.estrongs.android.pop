package com.estrongs.fs.impl.f;

import android.database.DatabaseUtils;
import com.estrongs.android.util.bg;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.impl.media.e;

public class d
  extends e
{
  private static d a;
  
  public static d b()
  {
    if (a == null) {
      a = new d();
    }
    return a;
  }
  
  protected h a(f paramf)
  {
    return new a(paramf);
  }
  
  protected String a()
  {
    Object localObject = bg.c();
    if (localObject == null) {
      return null;
    }
    localObject = ((String)localObject).split(";");
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < localObject.length)
    {
      if (i > 0) {
        localStringBuffer.append(" or ");
      }
      localStringBuffer.append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString("%" + localObject[i]));
      i += 1;
    }
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.f.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */