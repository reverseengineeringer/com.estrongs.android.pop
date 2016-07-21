package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class dj$b
  implements lb<dj>
{
  public dj a(InputStream paramInputStream)
  {
    kg.a(5, dj.e(), "AdsAsyncReportInfoSerializerV2 deserialize");
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new dj.b.1(this, paramInputStream);
    dj localdj = new dj(null);
    localdj.a(paramInputStream.readLong());
    localdj.b(paramInputStream.readBoolean());
    localdj.b(paramInputStream.readInt());
    localdj.b(paramInputStream.readUTF());
    localdj.c(paramInputStream.readUTF());
    dj.a(localdj, paramInputStream.readUTF());
    dj.b(localdj, paramInputStream.readUTF());
    dj.a(localdj, paramInputStream.readBoolean());
    return localdj;
  }
  
  public void a(OutputStream paramOutputStream, dj paramdj)
  {
    kg.a(5, dj.e(), "AdsAsyncReportInfoSerializerV2 deserialize");
    throw new UnsupportedOperationException("Serialization not supported");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dj.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */