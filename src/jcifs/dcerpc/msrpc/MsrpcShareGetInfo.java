package jcifs.dcerpc.msrpc;

import jcifs.smb.ACE;
import jcifs.smb.SecurityDescriptor;

public class MsrpcShareGetInfo
  extends srvsvc.ShareGetInfo
{
  public MsrpcShareGetInfo(String paramString1, String paramString2)
  {
    super(paramString1, paramString2, 502, new srvsvc.ShareInfo502());
    ptype = 0;
    flags = 3;
  }
  
  public ACE[] getSecurity()
  {
    srvsvc.ShareInfo502 localShareInfo502 = (srvsvc.ShareInfo502)info;
    if (security_descriptor != null) {
      return SecurityDescriptorsecurity_descriptor, 0, sd_size).aces;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcShareGetInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */