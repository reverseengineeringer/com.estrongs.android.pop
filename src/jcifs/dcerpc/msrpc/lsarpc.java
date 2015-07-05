package jcifs.dcerpc.msrpc;

public class lsarpc
{
  public static final int POLICY_INFO_ACCOUNT_DOMAIN = 5;
  public static final int POLICY_INFO_AUDIT_EVENTS = 2;
  public static final int POLICY_INFO_DNS_DOMAIN = 12;
  public static final int POLICY_INFO_MODIFICATION = 9;
  public static final int POLICY_INFO_PRIMARY_DOMAIN = 3;
  public static final int POLICY_INFO_SERVER_ROLE = 6;
  public static final int SID_NAME_ALIAS = 4;
  public static final int SID_NAME_DELETED = 6;
  public static final int SID_NAME_DOMAIN = 3;
  public static final int SID_NAME_DOM_GRP = 2;
  public static final int SID_NAME_INVALID = 7;
  public static final int SID_NAME_UNKNOWN = 8;
  public static final int SID_NAME_USER = 1;
  public static final int SID_NAME_USE_NONE = 0;
  public static final int SID_NAME_WKN_GRP = 5;
  
  public static String getSyntax()
  {
    return "12345778-1234-abcd-ef00-0123456789ab:0.0";
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */