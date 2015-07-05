package com.estrongs.fs.impl.usb.fs;

import com.estrongs.android.util.v;
import com.estrongs.fs.impl.usb.UsbFsException;
import com.estrongs.fs.impl.usb.UsbFsException.ERROR_CODE;
import com.estrongs.fs.impl.usb.fs.ntfs.y;
import java.nio.ByteBuffer;

public class b
{
  public static a a(String paramString, com.estrongs.fs.impl.usb.a.d paramd, com.estrongs.fs.impl.usb.driver.a parama)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(512);
    parama.a(0L, localByteBuffer);
    if (com.estrongs.fs.impl.usb.fs.a.d.a(localByteBuffer.array())) {
      return new com.estrongs.fs.impl.usb.fs.a.d(paramString, parama, localByteBuffer);
    }
    if (y.a(localByteBuffer.array())) {
      return new y(paramString, parama, localByteBuffer);
    }
    v.a("createFileSystem unsupported partition type " + paramd.a());
    throw new UsbFsException("unsupported partition type", UsbFsException.ERROR_CODE.USB_ERROR_TYPE_NOT_SUPPORTE);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */