package jcifs.dcerpc.msrpc;

public class MsrpcLsarOpenPolicy2
  extends lsarpc.LsarOpenPolicy2
{
  public MsrpcLsarOpenPolicy2(String paramString, int paramInt, LsaPolicyHandle paramLsaPolicyHandle)
  {
    super(paramString, new lsarpc.LsarObjectAttributes(), paramInt, paramLsaPolicyHandle);
    object_attributes.length = 24;
    paramString = new lsarpc.LsarQosInfo();
    length = 12;
    impersonation_level = 2;
    context_mode = 1;
    effective_only = 0;
    object_attributes.security_quality_of_service = paramString;
    ptype = 0;
    flags = 3;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcLsarOpenPolicy2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */