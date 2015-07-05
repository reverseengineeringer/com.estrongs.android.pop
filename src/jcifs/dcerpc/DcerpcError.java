package jcifs.dcerpc;

public abstract interface DcerpcError
{
  public static final int DCERPC_FAULT_ACCESS_DENIED = 5;
  public static final int DCERPC_FAULT_CANT_PERFORM = 1752;
  public static final int[] DCERPC_FAULT_CODES = { 1, 5, 1752, 1783, 469762054, 469762074, 469827586, 469827587, 469827595 };
  public static final int DCERPC_FAULT_CONTEXT_MISMATCH = 469762074;
  public static final int DCERPC_FAULT_INVALID_TAG = 469762054;
  public static final String[] DCERPC_FAULT_MESSAGES = { "DCERPC_FAULT_OTHER", "DCERPC_FAULT_ACCESS_DENIED", "DCERPC_FAULT_CANT_PERFORM", "DCERPC_FAULT_NDR", "DCERPC_FAULT_INVALID_TAG", "DCERPC_FAULT_CONTEXT_MISMATCH", "DCERPC_FAULT_OP_RNG_ERROR", "DCERPC_FAULT_UNK_IF", "DCERPC_FAULT_PROTO_ERROR" };
  public static final int DCERPC_FAULT_NDR = 1783;
  public static final int DCERPC_FAULT_OP_RNG_ERROR = 469827586;
  public static final int DCERPC_FAULT_OTHER = 1;
  public static final int DCERPC_FAULT_PROTO_ERROR = 469827595;
  public static final int DCERPC_FAULT_UNK_IF = 469827587;
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.DcerpcError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */