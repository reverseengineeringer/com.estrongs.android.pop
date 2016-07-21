package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public class la<T>
  implements lb<List<T>>
{
  lb<T> a;
  
  public la(lb<T> paramlb)
  {
    if (paramlb == null) {
      throw new IllegalArgumentException("recordSerializer cannot be null");
    }
    a = paramlb;
  }
  
  public List<T> a(InputStream paramInputStream)
  {
    Object localObject;
    if (paramInputStream == null)
    {
      localObject = null;
      return (List<T>)localObject;
    }
    int j = new la.2(this, paramInputStream).readInt();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localObject = a.b(paramInputStream);
      if (localObject == null) {
        throw new IOException("Missing record.");
      }
      localArrayList.add(localObject);
      i += 1;
    }
  }
  
  public void a(OutputStream paramOutputStream, List<T> paramList)
  {
    int j = 0;
    if (paramOutputStream == null) {
      return;
    }
    la.1 local1 = new la.1(this, paramOutputStream);
    if (paramList != null) {}
    for (int i = paramList.size();; i = 0)
    {
      local1.writeInt(i);
      while (j < i)
      {
        a.a(paramOutputStream, paramList.get(j));
        j += 1;
      }
    }
    local1.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.la
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */