package com.jcraft.jsch;

public abstract interface HostKeyRepository
{
  public abstract int a(String paramString, byte[] paramArrayOfByte);
  
  public abstract String a();
  
  public abstract void a(HostKey paramHostKey, UserInfo paramUserInfo);
  
  public abstract void a(String paramString1, String paramString2, byte[] paramArrayOfByte);
  
  public abstract HostKey[] a(String paramString1, String paramString2);
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.HostKeyRepository
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */