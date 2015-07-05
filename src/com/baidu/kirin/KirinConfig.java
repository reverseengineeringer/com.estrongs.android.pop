package com.baidu.kirin;

public class KirinConfig
{
  public static final String ATSETTING = "atSetting";
  public static final String ATSTART = "atStart";
  public static final String CLIENT_STATIC_DATA_FILE = "kirin_static_data_";
  public static int CONFIRM_UPDATE = 3;
  public static final int CONNECT_TIME_OUT = 3000;
  public static int DEBUG = 0;
  public static boolean DEBUG_MODE = false;
  public static final String DEFAULT_OPEN_PEROID = "00:00:00|23:59:59";
  public static int DEFAULT_POP_INTERVAL = 0;
  public static int DEFAULT_UPDATE_INTERVAL = 0;
  public static int ERROR = 0;
  public static int FORCE_UPDATE = 4;
  public static int INFO = 0;
  public static final String KIRIN_MODULE_NAME = "/kirinsdk/";
  public static int LATER_UPDATE = 0;
  public static int LOG_LEVEL = 0;
  public static int NOT_UPDATE = 0;
  public static final String NO_RESULT = "N/A";
  public static int NO_YET_UPDATE = 0;
  public static final String POST_CHOICE = "/kirinsdk/updatecommit";
  public static String PREURL;
  public static final int READ_TIME_OUT = 5000;
  public static final String UPDATE_QUERY = "/kirinsdk/updatequery";
  public static int WARNING;
  
  static
  {
    DEBUG = 1;
    INFO = 2;
    WARNING = 3;
    ERROR = 4;
    LOG_LEVEL = DEBUG;
    DEFAULT_UPDATE_INTERVAL = 86400;
    DEFAULT_POP_INTERVAL = DEFAULT_UPDATE_INTERVAL * 7;
    PREURL = "http://tipsdk.baidu.com";
    NO_YET_UPDATE = 0;
    NOT_UPDATE = 1;
    LATER_UPDATE = 2;
  }
}

/* Location:
 * Qualified Name:     com.baidu.kirin.KirinConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */