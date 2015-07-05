package com.baidu.sapi2.shell;

public abstract interface SapiErrorCode
{
  public static final int ADMIN_DB_COMMUNICATE_ERROR = 100003;
  public static final int ANTIIF_COMMUNICATE_ERROR = 100002;
  public static final int ANTI_CHEAT_COMMUNICATE_ERROR = 100008;
  public static final int BDUSS_IS_EMPTY = 160102;
  public static final int BDUSS_IS_EXPIRED = 400021;
  public static final int BUGET_BREAK = 130016;
  public static final int CANNOT_LOGIN = 16;
  public static final int CERT_OVER_TIME = -5;
  public static final int CER_ID_NOT_EXIST = -6;
  public static final int CHEAT = 130001;
  public static final int DB_GATE_COMMUNICATION_ERROR = 100001;
  public static final int DOWNLOAD_LOGIN_SIGN_EXPIRED = 1;
  public static final int ERROR_UNKNOWN = -100;
  public static final int FILL_UNAME_CANNOT_BE_USE = 160105;
  public static final int FILL_UNAME_FORMAT_ERROR = 160110;
  public static final int FILL_UNAME_IS_EMPTY = 160100;
  public static final int FILL_UNAME_IS_EXIST = 160111;
  public static final int FILL_USER_PROFILE_BDUSS_EXPIRED = 1;
  public static final int FILL_USER_PROFILE_PHONE_UNAVAILABLE = 8;
  public static final int FILL_USER_PROFILE_USER_NORMALIZED = 61002;
  public static final int FORCE_OFFLINE_FAILED = 160106;
  public static final int GETTING_CERT = -104;
  public static final int GET_CERT_FAIL = -105;
  public static final int INTERFACE_TOO_OLD = 140008;
  public static final int INVALID_ARG = -103;
  public static final int IP_AUTHORITY_ERROR = 140005;
  public static final int IP_HAS_NO_AUTHORITY = -4;
  public static final int LOGA_SUCCEED = 110000;
  public static final int LOGIN_FAIL_OVER_LIMIT = 210001;
  public static final int LOGIN_INTERFACE_PARAM_ERROR = -1;
  public static final int LOGIN_MERGE_CONFIRM = 400401;
  public static final int LOGIN_PROTECT_VERIFY = 17;
  public static final int LOGIN_SIGNATURE_ERROR = -2;
  public static final int LOGIN_TOO_MUCH = 5;
  public static final int MULTI_LOGIN_OVER_LIMIT = 20;
  public static final int NEED_ACTIVATE_EMAIL = 110024;
  public static final int NEED_REQUIRED_ITEMS = 130025;
  public static final int NETWORK_FAILED = -200;
  public static final int NOT_INIT = -102;
  public static final int OTHER_PARAM_ERROR = 210003;
  public static final int PASSWORD_EXPIRED = 3;
  public static final int PASSWORD_FORMAT_ERROR = 120013;
  public static final int PASSWORD_NULL = 9;
  public static final int PASSWORD_WRONG = 4;
  public static final int PHONE_FORMAT_ERR = 130019;
  public static final int PHONE_NULL = 257;
  public static final int PHONE_NUM_BINDED = 130020;
  public static final int PHONE_NUM_NULL = 130018;
  public static final int PLEASE_INPUT_VERIFY_CODE = 257;
  public static final int PLS_GET_SMS_VERIFY_CODE = 130022;
  public static final int PWD_EMPTY = 130010;
  public static final int PWD_FORMAT_ERROR = 110013;
  public static final int QR_CODE_INVALID = 1;
  public static final int QR_LOGIN_INVALID_BDUSS = 2;
  public static final int QR_LOGIN_USER_NOT_NORMALIZED = 3;
  public static final int RE_LOGIN_FAILED = 160107;
  public static final int SAVE_CERT_FAIL = -106;
  public static final int SENT_SUCCEED = -101;
  public static final int SESSION_COMMUNICATE_ERROR = 100005;
  public static final int SET_PORTRAIT_FORMAT_ERROR = 1605001;
  public static final int SET_PORTRAIT_SYS_ERROR = 1605002;
  public static final int SIGNATURE_ERROR = 140003;
  public static final int SMS_CHEAT = 130017;
  public static final int SMS_COMMUNICATE_ERROR = 100014;
  public static final int SMS_FORMAT_ERROR = 1;
  public static final int SMS_LOGIN_TOO_MUCH = 190016;
  public static final int SMS_NOT_EXISTED = 2;
  public static final int SMS_VERIFY_CODE_EXPIRED = 130004;
  public static final int SMS_VERIFY_CODE_NULL = 130021;
  public static final int SMS_VERIFY_CODE_WRONG = 130003;
  public static final int SUCCEED = 0;
  public static final int SUCCEED_WAPPAS = 110000;
  public static final int TOKEN_CHECK_FAIL = 210002;
  public static final int TPL_APPID_GROUP_NOT_FOUND = -3;
  public static final int TPL_NOT_PERMIT = 210000;
  public static final int TPL_OR_APPID_ERROR = 140004;
  public static final int USERNAME_CANNOT_USE = 130007;
  public static final int USERNAME_EMPTY = 130005;
  public static final int USERNAME_EXIST = 110003;
  public static final int USERNAME_FORMAT_ERROR_LOGIN = 1;
  public static final int USERNAME_FORMAT_ERROR_REGIST = 110002;
  public static final int USERNAME_NOT_EXIST = 2;
  public static final int USER_DO_HAVE_NAME = 160104;
  public static final int USER_IS_NOT_ONLINE = 160103;
  public static final int VERIFY_CODE_INPUT_ERR = 110031;
  public static final int VERIFY_CODE_NOT_MATCH = 6;
  public static final int VERSION_TOO_OLD = 140008;
  public static final int VOICE_CHECK_USER_FORBIDDEN = 4;
  public static final int VOICE_CHECK_USER_NOT_NORMALIZED = 3;
  public static final int VOICE_LOGIN_VERIFY_FAILED = 71042;
  public static final int VOICE_REG_AUTH_EXPIRED = 62004;
  public static final int WEAK_PWD = 110012;
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.SapiErrorCode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */