package com.jcraft.jsch;

public class HostKey
{
  private static final byte[] f = Util.b("ssh-dss");
  private static final byte[] g = Util.b("ssh-rsa");
  protected String a;
  protected String b;
  protected int c;
  protected byte[] d;
  protected String e;
  
  public HostKey(String paramString, int paramInt, byte[] paramArrayOfByte)
  {
    this(paramString, paramInt, paramArrayOfByte, null);
  }
  
  public HostKey(String paramString1, int paramInt, byte[] paramArrayOfByte, String paramString2)
  {
    this("", paramString1, paramInt, paramArrayOfByte, paramString2);
  }
  
  public HostKey(String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte, String paramString3)
  {
    a = paramString1;
    b = paramString2;
    if (paramInt == 0) {
      if (paramArrayOfByte[8] == 100) {
        c = 1;
      }
    }
    for (;;)
    {
      d = paramArrayOfByte;
      e = paramString3;
      return;
      if (paramArrayOfByte[8] == 114)
      {
        c = 2;
      }
      else
      {
        throw new JSchException("invalid key type");
        c = paramInt;
      }
    }
  }
  
  public HostKey(String paramString, byte[] paramArrayOfByte)
  {
    this(paramString, 0, paramArrayOfByte);
  }
  
  private boolean b(String paramString)
  {
    String str = b;
    int j = str.length();
    int k = paramString.length();
    int m;
    for (int i = 0;; i = m + 1)
    {
      if (i >= j) {}
      do
      {
        return false;
        m = str.indexOf(',', i);
        if (m != -1) {
          break;
        }
      } while (k != j - i);
      return str.regionMatches(true, i, paramString, 0, k);
      if ((k == m - i) && (str.regionMatches(true, i, paramString, 0, k))) {
        return true;
      }
    }
  }
  
  public String a()
  {
    return b;
  }
  
  boolean a(String paramString)
  {
    return b(paramString);
  }
  
  public String b()
  {
    if (c == 1) {
      return Util.b(f);
    }
    if (c == 2) {
      return Util.b(g);
    }
    return "UNKNOWN";
  }
  
  public String c()
  {
    return Util.b(Util.b(d, 0, d.length));
  }
  
  public String d()
  {
    return e;
  }
  
  public String e()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.HostKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */