package com.google.android.gms.nearby.sharing;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bk;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

public class SharedContent
  implements SafeParcelable
{
  public static final Parcelable.Creator<SharedContent> CREATOR = new c();
  private final int a;
  @Deprecated
  private String b;
  private ViewableItem[] c;
  private LocalContent[] d;
  
  private SharedContent()
  {
    a = 2;
  }
  
  SharedContent(int paramInt, String paramString, ViewableItem[] paramArrayOfViewableItem, LocalContent[] paramArrayOfLocalContent)
  {
    a = paramInt;
    b = paramString;
    c = paramArrayOfViewableItem;
    d = paramArrayOfLocalContent;
  }
  
  int a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public ViewableItem[] c()
  {
    return c;
  }
  
  public LocalContent[] d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof SharedContent)) {
        return false;
      }
      paramObject = (SharedContent)paramObject;
    } while ((bk.a(c, c)) && (bk.a(d, d)) && (bk.a(b, b)));
    return false;
  }
  
  public int hashCode()
  {
    return bk.a(new Object[] { c, d, b });
  }
  
  public String toString()
  {
    return "SharedContent[viewableItems=" + Arrays.toString(c) + ", localContents=" + Arrays.toString(d) + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.nearby.sharing.SharedContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */