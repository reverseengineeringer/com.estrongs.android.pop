package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcHandle;
import jcifs.dcerpc.rpc.policy_handle;
import jcifs.smb.SmbException;

public class SamrAliasHandle
  extends rpc.policy_handle
{
  public SamrAliasHandle(DcerpcHandle paramDcerpcHandle, SamrDomainHandle paramSamrDomainHandle, int paramInt1, int paramInt2)
  {
    paramSamrDomainHandle = new MsrpcSamrOpenAlias(paramSamrDomainHandle, paramInt1, paramInt2, this);
    paramDcerpcHandle.sendrecv(paramSamrDomainHandle);
    if (retval != 0) {
      throw new SmbException(retval, false);
    }
  }
  
  public void close() {}
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.SamrAliasHandle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */