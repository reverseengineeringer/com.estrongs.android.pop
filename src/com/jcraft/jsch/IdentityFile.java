package com.jcraft.jsch;

class IdentityFile
  implements Identity
{
  private JSch a;
  private KeyPair b;
  private String c;
  
  private IdentityFile(JSch paramJSch, String paramString, KeyPair paramKeyPair)
  {
    a = paramJSch;
    c = paramString;
    b = paramKeyPair;
  }
  
  static IdentityFile a(String paramString1, String paramString2, JSch paramJSch)
  {
    return new IdentityFile(paramJSch, paramString1, KeyPair.a(paramJSch, paramString1, paramString2));
  }
  
  static IdentityFile a(String paramString, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, JSch paramJSch)
  {
    return new IdentityFile(paramJSch, paramString, KeyPair.a(paramJSch, paramArrayOfByte1, paramArrayOfByte2));
  }
  
  public boolean a(byte[] paramArrayOfByte)
  {
    return b.c(paramArrayOfByte);
  }
  
  public byte[] a()
  {
    return b.c();
  }
  
  public String b()
  {
    return new String(b.b());
  }
  
  public byte[] b(byte[] paramArrayOfByte)
  {
    return b.a(paramArrayOfByte);
  }
  
  public String c()
  {
    return c;
  }
  
  public boolean d()
  {
    return b.d();
  }
  
  public void e()
  {
    b.e();
    b = null;
  }
  
  public KeyPair f()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.IdentityFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */