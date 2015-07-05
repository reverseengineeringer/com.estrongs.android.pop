package com.estrongs.io.archive.sevenzip;

import com.estrongs.android.util.am;
import com.estrongs.fs.impl.local.l;
import com.estrongs.fs.impl.local.r;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;

public class a
{
  private static int d = 7;
  protected boolean a = false;
  protected Object b = new Object();
  protected r c;
  
  static String a(String paramString)
  {
    paramString = paramString.replace("$", "\\$").replace("`", "\\`");
    return "\"" + paramString + "\"";
  }
  
  public static boolean c()
  {
    boolean bool4 = true;
    boolean bool3 = true;
    r localr = l.e();
    String str = am.j() + "/p7za --version ";
    str = str + "\n";
    bool2 = bool4;
    try
    {
      b.write(str);
      bool2 = bool4;
      b.flush();
      bool2 = bool4;
      b.write("exit\n");
      bool2 = bool4;
      b.flush();
      do
      {
        bool2 = bool4;
        str = c.readLine();
        bool1 = bool3;
        if (str == null) {
          break;
        }
        bool2 = bool4;
      } while (!str.startsWith("######version:"));
      bool2 = bool4;
      if (Integer.parseInt(str.substring("######version:".length())) < d) {}
      for (boolean bool1 = bool3;; bool1 = false)
      {
        bool2 = bool1;
        a.destroy();
        return bool1;
      }
      return bool2;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void a()
  {
    synchronized (b)
    {
      a = true;
    }
    try
    {
      c.a.destroy();
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  void b()
  {
    synchronized (b)
    {
      if (a == true) {
        throw new IOException();
      }
    }
    try
    {
      c.a.destroy();
      c = l.e();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */