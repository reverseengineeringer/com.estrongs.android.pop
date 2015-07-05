package jcifs.dcerpc;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import jcifs.smb.WinError;
import jcifs.util.Hexdump;

public class DcerpcException
  extends IOException
  implements DcerpcError, WinError
{
  private int error;
  private Throwable rootCause;
  
  DcerpcException(int paramInt)
  {
    super(getMessageByDcerpcError(paramInt));
    error = paramInt;
  }
  
  public DcerpcException(String paramString)
  {
    super(paramString);
  }
  
  public DcerpcException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    rootCause = paramThrowable;
  }
  
  static String getMessageByDcerpcError(int paramInt)
  {
    int i = 0;
    int j = DCERPC_FAULT_CODES.length;
    while (j >= i)
    {
      int k = (i + j) / 2;
      if (paramInt > DCERPC_FAULT_CODES[k]) {
        i = k + 1;
      } else if (paramInt < DCERPC_FAULT_CODES[k]) {
        j = k - 1;
      } else {
        return DCERPC_FAULT_MESSAGES[k];
      }
    }
    return "0x" + Hexdump.toHexString(paramInt, 8);
  }
  
  public int getErrorCode()
  {
    return error;
  }
  
  public Throwable getRootCause()
  {
    return rootCause;
  }
  
  public String toString()
  {
    if (rootCause != null)
    {
      StringWriter localStringWriter = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      rootCause.printStackTrace(localPrintWriter);
      return super.toString() + "\n" + localStringWriter;
    }
    return super.toString();
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.DcerpcException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */