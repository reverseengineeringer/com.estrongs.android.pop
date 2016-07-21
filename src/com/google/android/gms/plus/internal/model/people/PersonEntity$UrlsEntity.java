package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.response.FastJsonResponse.Field;
import com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class PersonEntity$UrlsEntity
  extends FastSafeParcelableJsonResponse
  implements com.google.android.gms.plus.a.b.j
{
  public static final j a = new j();
  private static final HashMap<String, FastJsonResponse.Field<?, ?>> g = new HashMap();
  final Set<Integer> b;
  final int c;
  String d;
  int e;
  String f;
  private final int h = 4;
  
  static
  {
    g.put("label", FastJsonResponse.Field.d("label", 5));
    g.put("type", FastJsonResponse.Field.a("type", 6, new StringToIntConverter().a("home", 0).a("work", 1).a("blog", 2).a("profile", 3).a("other", 4).a("otherProfile", 5).a("contributor", 6).a("website", 7), false));
    g.put("value", FastJsonResponse.Field.d("value", 4));
  }
  
  public PersonEntity$UrlsEntity()
  {
    c = 1;
    b = new HashSet();
  }
  
  PersonEntity$UrlsEntity(Set<Integer> paramSet, int paramInt1, String paramString1, int paramInt2, String paramString2, int paramInt3)
  {
    b = paramSet;
    c = paramInt1;
    d = paramString1;
    e = paramInt2;
    f = paramString2;
  }
  
  protected boolean a(FastJsonResponse.Field paramField)
  {
    return b.contains(Integer.valueOf(paramField.g()));
  }
  
  protected Object b(FastJsonResponse.Field paramField)
  {
    switch (paramField.g())
    {
    default: 
      throw new IllegalStateException("Unknown safe parcelable id=" + paramField.g());
    case 5: 
      return d;
    case 6: 
      return Integer.valueOf(e);
    }
    return f;
  }
  
  public int describeContents()
  {
    j localj = a;
    return 0;
  }
  
  public HashMap<String, FastJsonResponse.Field<?, ?>> e()
  {
    return g;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof UrlsEntity)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (UrlsEntity)paramObject;
    Iterator localIterator = g.values().iterator();
    while (localIterator.hasNext())
    {
      FastJsonResponse.Field localField = (FastJsonResponse.Field)localIterator.next();
      if (a(localField))
      {
        if (((UrlsEntity)paramObject).a(localField))
        {
          if (!b(localField).equals(((UrlsEntity)paramObject).b(localField))) {
            return false;
          }
        }
        else {
          return false;
        }
      }
      else if (((UrlsEntity)paramObject).a(localField)) {
        return false;
      }
    }
    return true;
  }
  
  @Deprecated
  public int f()
  {
    return 4;
  }
  
  public UrlsEntity g()
  {
    return this;
  }
  
  public int hashCode()
  {
    Iterator localIterator = g.values().iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      FastJsonResponse.Field localField = (FastJsonResponse.Field)localIterator.next();
      if (!a(localField)) {
        break label68;
      }
      int j = localField.g();
      i = b(localField).hashCode() + (i + j);
    }
    label68:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j localj = a;
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.model.people.PersonEntity.UrlsEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */