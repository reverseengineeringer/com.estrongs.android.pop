package jcifs.dcerpc.msrpc;

public class MsrpcGetMembersInAlias
  extends samr.SamrGetMembersInAlias
{
  public MsrpcGetMembersInAlias(SamrAliasHandle paramSamrAliasHandle, lsarpc.LsarSidArray paramLsarSidArray)
  {
    super(paramSamrAliasHandle, paramLsarSidArray);
    sids = paramLsarSidArray;
    ptype = 0;
    flags = 3;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcGetMembersInAlias
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */