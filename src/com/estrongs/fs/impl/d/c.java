package com.estrongs.fs.impl.d;

import android.database.DatabaseUtils;
import com.estrongs.android.util.bc;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.impl.media.d;

public class c
  extends d
{
  private static c a;
  
  public static c b()
  {
    if (a == null) {
      a = new c();
    }
    return a;
  }
  
  protected h a(f paramf)
  {
    return new a(paramf);
  }
  
  protected String a()
  {
    Object localObject = bc.c();
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
 * Qualified Name:     com.estrongs.fs.impl.d.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */