package jcifs.smb;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import jcifs.util.Hexdump;

public class SmbException
  extends IOException
  implements DosError, NtStatus, WinError
{
  private Throwable rootCause;
  private int status;
  
  SmbException() {}
  
  SmbException(int paramInt, Throwable paramThrowable)
  {
    super(getMessageByCode(paramInt));
    status = getStatusByCode(paramInt);
    rootCause = paramThrowable;
  }
  
  public SmbException(int paramInt, boolean paramBoolean) {}
  
  SmbException(String paramString)
  {
    super(paramString);
    status = -1073741823;
  }
  
  SmbException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    rootCause = paramThrowable;
    status = -1073741823;
  }
  
  static String getMessageByCode(int paramInt)
  {
    if (paramInt == 0) {
      return "NT_STATUS_SUCCESS";
    }
    int k;
    if ((paramInt & 0xC0000000) == -1073741824)
    {
      i = 1;
      j = NT_STATUS_CODES.length - 1;
      for (;;)
      {
        if (j < i) {
          break label136;
        }
        k = (i + j) / 2;
        if (paramInt > NT_STATUS_CODES[k])
        {
          i = k + 1;
        }
        else
        {
          if (paramInt >= NT_STATUS_CODES[k]) {
            break;
          }
          j = k - 1;
        }
      }
      return NT_STATUS_MESSAGES[k];
    }
    int j = DOS_ERROR_CODES.length - 1;
    int i = 0;
    while (j >= i)
    {
      k = (i + j) / 2;
      if (paramInt > DOS_ERROR_CODES[k][0]) {
        i = k + 1;
      } else if (paramInt < DOS_ERROR_CODES[k][0]) {
        j = k - 1;
      } else {
        return DOS_ERROR_MESSAGES[k];
      }
    }
    label136:
    return "0x" + Hexdump.toHexString(paramInt, 8);
  }
  
  static String getMessageByWinerrCode(int paramInt)
  {
    int i = 0;
    int j = WINERR_CODES.length - 1;
    while (j >= i)
    {
      int k = (i + j) / 2;
      if (paramInt > WINERR_CODES[k]) {
        i = k + 1;
      } else if (paramInt < WINERR_CODES[k]) {
        j = k - 1;
      } else {
        return WINERR_MESSAGES[k];
      }
    }
    return paramInt + "";
  }
  
  static int getStatusByCode(int paramInt)
  {
    if ((0xC0000000 & paramInt) != 0) {
      return paramInt;
    }
    int j = DOS_ERROR_CODES.length - 1;
    int i = 0;
    while (j >= i)
    {
      int k = (i + j) / 2;
      if (paramInt > DOS_ERROR_CODES[k][0]) {
        i = k + 1;
      } else if (paramInt < DOS_ERROR_CODES[k][0]) {
        j = k - 1;
      } else {
        return DOS_ERROR_CODES[k][1];
      }
    }
    return -1073741823;
  }
  
  public int getNtStatus()
  {
    return status;
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
 * Qualified Name:     jcifs.smb.SmbException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */