package jcifs.dcerpc.msrpc;

public class MsrpcSamrOpenAlias
  extends samr.SamrOpenAlias
{
  public MsrpcSamrOpenAlias(SamrDomainHandle paramSamrDomainHandle, int paramInt1, int paramInt2, SamrAliasHandle paramSamrAliasHandle)
  {
    super(paramSamrDomainHandle, paramInt1, paramInt2, paramSamrAliasHandle);
    ptype = 0;
    flags = 3;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcSamrOpenAlias
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */