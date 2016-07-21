package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class dj$a
  implements lb<dj>
{
  public dj a(InputStream paramInputStream)
  {
    kg.a(5, dj.e(), "AdsAsyncReportInfoSerializerV1 deserialize");
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new dj.a.1(this, paramInputStream);
    dj localdj = new dj(null);
    dj.a(localdj, paramInputStream.readUTF());
    dj.b(localdj, paramInputStream.readUTF());
    localdj.a(paramInputStream.readUTF());
    localdj.a(paramInputStream.readLong());
    dj.a(localdj, paramInputStream.readBoolean());
    localdj.b(paramInputStream.readBoolean());
    localdj.b(paramInputStream.readInt());
    return localdj;
  }
  
  public void a(OutputStream paramOutputStream, dj paramdj)
  {
    kg.a(5, dj.e(), "AdsAsyncReportInfoSerializerV1 serialize");
    throw new UnsupportedOperationException("Serialization not supported");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dj.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */