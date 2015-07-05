package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcException;
import jcifs.dcerpc.DcerpcHandle;
import jcifs.dcerpc.rpc.policy_handle;

public class SamrPolicyHandle
  extends rpc.policy_handle
{
  public SamrPolicyHandle(DcerpcHandle paramDcerpcHandle, String paramString, int paramInt)
  {
    String str = paramString;
    if (paramString == null) {
      str = "\\\\";
    }
    paramString = new MsrpcSamrConnect4(str, paramInt, this);
    try
    {
      paramDcerpcHandle.sendrecv(paramString);
      return;
    }
    catch (DcerpcException paramString)
    {
      if (paramString.getErrorCode() != 469827586) {
        throw paramString;
      }
      paramDcerpcHandle.sendrecv(new MsrpcSamrConnect2(str, paramInt, this));
    }
  }
  
  public void close() {}
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.SamrPolicyHandle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */