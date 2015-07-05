package jcifs.dcerpc.msrpc;

import jcifs.smb.SID;

public class MsrpcLookupSids
  extends lsarpc.LsarLookupSids
{
  SID[] sids;
  
  public MsrpcLookupSids(LsaPolicyHandle paramLsaPolicyHandle, SID[] paramArrayOfSID)
  {
    super(paramLsaPolicyHandle, new LsarSidArrayX(paramArrayOfSID), new lsarpc.LsarRefDomainList(), new lsarpc.LsarTransNameArray(), (short)1, paramArrayOfSID.length);
    sids = paramArrayOfSID;
    ptype = 0;
    flags = 3;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcLookupSids
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */