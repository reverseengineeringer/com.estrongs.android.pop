package jcifs.netbios;

import java.io.IOException;

public class NbtException
  extends IOException
{
  public static final int ACT_ERR = 6;
  public static final int CALLED_NOT_PRESENT = 130;
  public static final int CFT_ERR = 7;
  public static final int CONNECTION_REFUSED = -1;
  public static final int ERR_NAM_SRVC = 1;
  public static final int ERR_SSN_SRVC = 2;
  public static final int FMT_ERR = 1;
  public static final int IMP_ERR = 4;
  public static final int NOT_LISTENING_CALLED = 128;
  public static final int NOT_LISTENING_CALLING = 129;
  public static final int NO_RESOURCES = 131;
  public static final int RFS_ERR = 5;
  public static final int SRV_ERR = 2;
  public static final int SUCCESS = 0;
  public static final int UNSPECIFIED = 143;
  public int errorClass;
  public int errorCode;
  
  public NbtException(int paramInt1, int paramInt2)
  {
    super(getErrorString(paramInt1, paramInt2));
    errorClass = paramInt1;
    errorCode = paramInt2;
  }
  
  public static String getErrorString(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return "" + "unknown error class: " + paramInt1;
    case 0: 
      return "" + "SUCCESS";
    case 1: 
      str = "" + "ERR_NAM_SRVC/";
      switch (paramInt2)
      {
      }
      for (;;)
      {
        return str + "Unknown error code: " + paramInt2;
        str = str + "FMT_ERR: Format Error";
      }
    }
    String str = "" + "ERR_SSN_SRVC/";
    switch (paramInt2)
    {
    default: 
      return str + "Unknown error code: " + paramInt2;
    case -1: 
      return str + "Connection refused";
    case 128: 
      return str + "Not listening on called name";
    case 129: 
      return str + "Not listening for calling name";
    case 130: 
      return str + "Called name not present";
    case 131: 
      return str + "Called name present, but insufficient resources";
    }
    return str + "Unspecified error";
  }
  
  public String toString()
  {
    return new String("errorClass=" + errorClass + ",errorCode=" + errorCode + ",errorString=" + getErrorString(errorClass, errorCode));
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.NbtException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */