package com.estrongs.fs.impl.usb;

import com.estrongs.android.exception.AbstractException;

public class UsbFsException
  extends AbstractException
{
  public UsbFsException.ERROR_CODE errorCode = UsbFsException.ERROR_CODE.USB_ERROR_NONE;
  
  public UsbFsException() {}
  
  public UsbFsException(String paramString, UsbFsException.ERROR_CODE paramERROR_CODE)
  {
    super(paramString);
    errorCode = paramERROR_CODE;
  }
  
  public UsbFsException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public UsbFsException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.UsbFsException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */