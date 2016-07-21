package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;

class ab
{
  public static Object a(Parcel paramParcel)
  {
    return MediaDescription.CREATOR.createFromParcel(paramParcel);
  }
  
  public static String a(Object paramObject)
  {
    return ((MediaDescription)paramObject).getMediaId();
  }
  
  public static void a(Object paramObject, Parcel paramParcel, int paramInt)
  {
    ((MediaDescription)paramObject).writeToParcel(paramParcel, paramInt);
  }
  
  public static CharSequence b(Object paramObject)
  {
    return ((MediaDescription)paramObject).getTitle();
  }
  
  public static CharSequence c(Object paramObject)
  {
    return ((MediaDescription)paramObject).getSubtitle();
  }
  
  public static CharSequence d(Object paramObject)
  {
    return ((MediaDescription)paramObject).getDescription();
  }
  
  public static Bitmap e(Object paramObject)
  {
    return ((MediaDescription)paramObject).getIconBitmap();
  }
  
  public static Uri f(Object paramObject)
  {
    return ((MediaDescription)paramObject).getIconUri();
  }
  
  public static Bundle g(Object paramObject)
  {
    return ((MediaDescription)paramObject).getExtras();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */