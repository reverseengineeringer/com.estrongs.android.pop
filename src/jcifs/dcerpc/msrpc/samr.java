package jcifs.dcerpc.msrpc;

public class samr
{
  public static final int ACB_AUTOLOCK = 1024;
  public static final int ACB_DISABLED = 1;
  public static final int ACB_DOMTRUST = 64;
  public static final int ACB_DONT_REQUIRE_PREAUTH = 65536;
  public static final int ACB_ENC_TXT_PWD_ALLOWED = 2048;
  public static final int ACB_HOMDIRREQ = 2;
  public static final int ACB_MNS = 32;
  public static final int ACB_NORMAL = 16;
  public static final int ACB_NOT_DELEGATED = 16384;
  public static final int ACB_PWNOEXP = 512;
  public static final int ACB_PWNOTREQ = 4;
  public static final int ACB_SMARTCARD_REQUIRED = 4096;
  public static final int ACB_SVRTRUST = 256;
  public static final int ACB_TEMPDUP = 8;
  public static final int ACB_TRUSTED_FOR_DELEGATION = 8192;
  public static final int ACB_USE_DES_KEY_ONLY = 32768;
  public static final int ACB_WSTRUST = 128;
  public static final int SE_GROUP_ENABLED = 4;
  public static final int SE_GROUP_ENABLED_BY_DEFAULT = 2;
  public static final int SE_GROUP_LOGON_ID = -1073741824;
  public static final int SE_GROUP_MANDATORY = 1;
  public static final int SE_GROUP_OWNER = 8;
  public static final int SE_GROUP_RESOURCE = 536870912;
  public static final int SE_GROUP_USE_FOR_DENY_ONLY = 16;
  
  public static String getSyntax()
  {
    return "12345778-1234-abcd-ef00-0123456789ac:1.0";
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.samr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */