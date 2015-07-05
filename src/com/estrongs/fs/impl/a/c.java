package com.estrongs.fs.impl.a;

import android.database.DatabaseUtils;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.impl.media.d;

public class c
  extends d
{
  protected h a(f paramf)
  {
    return new a(paramf);
  }
  
  protected String a()
  {
    return "_data like " + DatabaseUtils.sqlEscapeString("%.apk");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */