package org.apache.commons.net.ftp;

public final class FTPCommand
{
  public static final int ABOR = 21;
  public static final int ABORT = 21;
  public static final int ACCOUNT = 2;
  public static final int ACCT = 2;
  public static final int ALLO = 17;
  public static final int ALLOCATE = 17;
  public static final int APPE = 16;
  public static final int APPEND = 16;
  public static final int CDUP = 4;
  public static final int CHANGE_TO_PARENT_DIRECTORY = 4;
  public static final int CHANGE_WORKING_DIRECTORY = 3;
  public static final int CWD = 3;
  public static final int DATA_PORT = 8;
  public static final int DELE = 22;
  public static final int DELETE = 22;
  public static final int EPRT = 37;
  public static final int EPSV = 36;
  public static final int FEAT = 34;
  public static final int FEATURES = 34;
  public static final int FILE_STRUCTURE = 11;
  public static final int GET_MOD_TIME = 33;
  public static final int HELP = 31;
  private static final int LAST = 39;
  public static final int LIST = 26;
  public static final int LOGOUT = 7;
  public static final int MAKE_DIRECTORY = 24;
  public static final int MDTM = 33;
  public static final int MFMT = 35;
  public static final int MKD = 24;
  public static final int MLSD = 38;
  public static final int MLST = 39;
  public static final int MODE = 12;
  public static final int MOD_TIME = 33;
  public static final int NAME_LIST = 27;
  public static final int NLST = 27;
  public static final int NOOP = 32;
  public static final int PASS = 1;
  public static final int PASSIVE = 9;
  public static final int PASSWORD = 1;
  public static final int PASV = 9;
  public static final int PORT = 8;
  public static final int PRINT_WORKING_DIRECTORY = 25;
  public static final int PWD = 25;
  public static final int QUIT = 7;
  public static final int REIN = 6;
  public static final int REINITIALIZE = 6;
  public static final int REMOVE_DIRECTORY = 23;
  public static final int RENAME_FROM = 19;
  public static final int RENAME_TO = 20;
  public static final int REPRESENTATION_TYPE = 10;
  public static final int REST = 18;
  public static final int RESTART = 18;
  public static final int RETR = 13;
  public static final int RETRIEVE = 13;
  public static final int RMD = 23;
  public static final int RNFR = 19;
  public static final int RNTO = 20;
  public static final int SET_MOD_TIME = 35;
  public static final int SITE = 28;
  public static final int SITE_PARAMETERS = 28;
  public static final int SMNT = 5;
  public static final int STAT = 30;
  public static final int STATUS = 30;
  public static final int STOR = 14;
  public static final int STORE = 14;
  public static final int STORE_UNIQUE = 15;
  public static final int STOU = 15;
  public static final int STRU = 11;
  public static final int STRUCTURE_MOUNT = 5;
  public static final int SYST = 29;
  public static final int SYSTEM = 29;
  public static final int TRANSFER_MODE = 12;
  public static final int TYPE = 10;
  public static final int USER = 0;
  public static final int USERNAME = 0;
  private static final String[] _commands = { "USER", "PASS", "ACCT", "CWD", "CDUP", "SMNT", "REIN", "QUIT", "PORT", "PASV", "TYPE", "STRU", "MODE", "RETR", "STOR", "STOU", "APPE", "ALLO", "REST", "RNFR", "RNTO", "ABOR", "DELE", "RMD", "MKD", "PWD", "LIST", "NLST", "SITE", "SYST", "STAT", "HELP", "NOOP", "MDTM", "FEAT", "MFMT", "EPSV", "EPRT", "MLSD", "MLST" };
  
  static void checkArray()
  {
    if (_commands.length != 40) {
      throw new RuntimeException("Incorrect _commands array. Should have length " + 40 + " found " + _commands.length);
    }
  }
  
  public static final String getCommand(int paramInt)
  {
    return _commands[paramInt];
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPCommand
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */