package com.estrongs.android.pop.app.editor;

import android.content.Context;
import com.estrongs.android.util.am;
import com.estrongs.fs.impl.local.l;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class a
{
  public static a a(Context paramContext, File paramFile)
  {
    return a(paramContext, paramFile, null);
  }
  
  public static a a(Context paramContext, File paramFile, String paramString)
  {
    if (paramFile == null) {
      return null;
    }
    if ((am.bl(paramFile.getAbsolutePath())) || (!l.a(paramContext, false))) {
      return new d(paramFile, paramString);
    }
    return new ar(paramFile);
  }
  
  public static boolean a(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (am.ba(paramString))
    {
      bool1 = bool2;
      if (!am.bl(paramString)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public abstract int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public abstract long a();
  
  public abstract void a(long paramLong);
  
  public abstract long b();
  
  public abstract void c();
  
  public abstract InputStream d();
  
  public abstract OutputStream e();
  
  public abstract boolean f();
  
  public abstract String g();
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */