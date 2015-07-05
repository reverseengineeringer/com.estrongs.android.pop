package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcHandle;
import jcifs.dcerpc.rpc.policy_handle;
import jcifs.dcerpc.rpc.sid_t;
import jcifs.smb.SmbException;

public class SamrDomainHandle
  extends rpc.policy_handle
{
  public SamrDomainHandle(DcerpcHandle paramDcerpcHandle, SamrPolicyHandle paramSamrPolicyHandle, int paramInt, rpc.sid_t paramsid_t)
  {
    paramSamrPolicyHandle = new MsrpcSamrOpenDomain(paramSamrPolicyHandle, paramInt, paramsid_t, this);
    paramDcerpcHandle.sendrecv(paramSamrPolicyHandle);
    if (retval != 0) {
      throw new SmbException(retval, false);
    }
  }
  
  public void close() {}
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.SamrDomainHandle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */