package com.jcraft.jsch;

public class ChannelSftp$LsEntry
  implements Comparable
{
  private String b;
  private String c;
  private SftpATTRS d;
  
  ChannelSftp$LsEntry(ChannelSftp paramChannelSftp, String paramString1, String paramString2, SftpATTRS paramSftpATTRS)
  {
    a(paramString1);
    b(paramString2);
    a(paramSftpATTRS);
  }
  
  public String a()
  {
    return b;
  }
  
  void a(SftpATTRS paramSftpATTRS)
  {
    d = paramSftpATTRS;
  }
  
  void a(String paramString)
  {
    b = paramString;
  }
  
  public SftpATTRS b()
  {
    return d;
  }
  
  void b(String paramString)
  {
    c = paramString;
  }
  
  public int compareTo(Object paramObject)
  {
    if ((paramObject instanceof LsEntry)) {
      return b.compareTo(((LsEntry)paramObject).a());
    }
    throw new ClassCastException("a decendent of LsEntry must be given.");
  }
  
  public String toString()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelSftp.LsEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */