package org.apache.commons.net.ftp;

@Deprecated
public final class FTPSCommand
{
  public static final int ADAT = 1;
  public static final int AUTH = 0;
  public static final int AUTHENTICATION_SECURITY_DATA = 1;
  public static final int AUTHENTICATION_SECURITY_MECHANISM = 0;
  public static final int CCC = 4;
  public static final int CLEAR_COMMAND_CHANNEL = 4;
  public static final int DATA_CHANNEL_PROTECTION_LEVEL = 3;
  public static final int PBSZ = 2;
  public static final int PROT = 3;
  public static final int PROTECTION_BUFFER_SIZE = 2;
  private static final String[] _commands = { "AUTH", "ADAT", "PBSZ", "PROT", "CCC" };
  
  public static final String getCommand(int paramInt)
  {
    return _commands[paramInt];
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPSCommand
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */