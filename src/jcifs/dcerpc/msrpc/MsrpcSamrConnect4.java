package jcifs.dcerpc.msrpc;

public class MsrpcSamrConnect4
  extends samr.SamrConnect4
{
  public MsrpcSamrConnect4(String paramString, int paramInt, SamrPolicyHandle paramSamrPolicyHandle)
  {
    super(paramString, 2, paramInt, paramSamrPolicyHandle);
    ptype = 0;
    flags = 3;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcSamrConnect4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */