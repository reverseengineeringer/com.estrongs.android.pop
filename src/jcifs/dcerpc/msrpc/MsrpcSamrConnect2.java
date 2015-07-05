package jcifs.dcerpc.msrpc;

public class MsrpcSamrConnect2
  extends samr.SamrConnect2
{
  public MsrpcSamrConnect2(String paramString, int paramInt, SamrPolicyHandle paramSamrPolicyHandle)
  {
    super(paramString, paramInt, paramSamrPolicyHandle);
    ptype = 0;
    flags = 3;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcSamrConnect2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */