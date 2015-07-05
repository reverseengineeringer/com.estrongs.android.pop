package com.dropbox.client2;

import java.io.Serializable;
import java.util.Map;

public class DropboxAPI$Account
  implements Serializable
{
  private static final long serialVersionUID = 2097522622341535732L;
  public final String country;
  public final String displayName;
  public final long quota;
  public final long quotaNormal;
  public final long quotaShared;
  public final String referralLink;
  public final long uid;
  
  protected DropboxAPI$Account(String paramString1, String paramString2, long paramLong1, String paramString3, long paramLong2, long paramLong3, long paramLong4)
  {
    country = paramString1;
    displayName = paramString2;
    uid = paramLong1;
    referralLink = paramString3;
    quota = paramLong2;
    quotaNormal = paramLong3;
    quotaShared = paramLong4;
  }
  
  protected DropboxAPI$Account(Map<String, Object> paramMap)
  {
    country = ((String)paramMap.get("country"));
    displayName = ((String)paramMap.get("display_name"));
    uid = DropboxAPI.getFromMapAsLong(paramMap, "uid");
    referralLink = ((String)paramMap.get("referral_link"));
    paramMap = (Map)paramMap.get("quota_info");
    quota = DropboxAPI.getFromMapAsLong(paramMap, "quota");
    quotaNormal = DropboxAPI.getFromMapAsLong(paramMap, "normal");
    quotaShared = DropboxAPI.getFromMapAsLong(paramMap, "shared");
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.Account
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */