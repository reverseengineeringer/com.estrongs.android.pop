package com.flurry.sdk;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class kq<T>
  extends WeakReference<T>
{
  public kq(T paramT)
  {
    super(paramT);
  }
  
  public boolean equals(Object paramObject)
  {
    Object localObject = get();
    if ((paramObject instanceof Reference)) {
      return localObject.equals(((Reference)paramObject).get());
    }
    return localObject.equals(paramObject);
  }
  
  public int hashCode()
  {
    Object localObject = get();
    if (localObject == null) {
      return super.hashCode();
    }
    return localObject.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */