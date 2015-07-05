package com.estrongs.old.fs.impl.sftp;

import com.jcraft.jsch.UIKeyboardInteractive;
import com.jcraft.jsch.UserInfo;

public class a
  implements UIKeyboardInteractive, UserInfo
{
  String a = null;
  
  public a(String paramString)
  {
    a = paramString;
  }
  
  public String a()
  {
    return a;
  }
  
  public boolean a(String paramString)
  {
    return true;
  }
  
  public String[] a(String paramString1, String paramString2, String paramString3, String[] paramArrayOfString, boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfString == null)
    {
      paramString1 = null;
      return paramString1;
    }
    int j = paramArrayOfString.length;
    paramString2 = new String[j];
    int i = 0;
    for (;;)
    {
      paramString1 = paramString2;
      if (i >= j) {
        break;
      }
      paramString2[i] = a;
      i += 1;
    }
  }
  
  public String b()
  {
    return null;
  }
  
  public boolean b(String paramString)
  {
    return true;
  }
  
  public boolean c(String paramString)
  {
    return true;
  }
  
  public void d(String paramString) {}
}

/* Location:
 * Qualified Name:     com.estrongs.old.fs.impl.sftp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */