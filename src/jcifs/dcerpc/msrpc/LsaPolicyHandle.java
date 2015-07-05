package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcHandle;
import jcifs.dcerpc.rpc.policy_handle;
import jcifs.smb.SmbException;

public class LsaPolicyHandle
  extends rpc.policy_handle
{
  public LsaPolicyHandle(DcerpcHandle paramDcerpcHandle, String paramString, int paramInt)
  {
    String str = paramString;
    if (paramString == null) {
      str = "\\\\";
    }
    paramString = new MsrpcLsarOpenPolicy2(str, paramInt, this);
    paramDcerpcHandle.sendrecv(paramString);
    if (retval != 0) {
      throw new SmbException(retval, false);
    }
  }
  
  public void close() {}
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.LsaPolicyHandle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */