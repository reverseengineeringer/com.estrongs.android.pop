package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public final class MediaDescriptionCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new z();
  private final String a;
  private final CharSequence b;
  private final CharSequence c;
  private final CharSequence d;
  private final Bitmap e;
  private final Uri f;
  private final Bundle g;
  private final Uri h;
  private Object i;
  
  private MediaDescriptionCompat(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    c = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    d = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    e = ((Bitmap)paramParcel.readParcelable(null));
    f = ((Uri)paramParcel.readParcelable(null));
    g = paramParcel.readBundle();
    h = ((Uri)paramParcel.readParcelable(null));
  }
  
  private MediaDescriptionCompat(String paramString, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Uri paramUri1, Bundle paramBundle, Uri paramUri2)
  {
    a = paramString;
    b = paramCharSequence1;
    c = paramCharSequence2;
    d = paramCharSequence3;
    e = paramBitmap;
    f = paramUri1;
    g = paramBundle;
    h = paramUri2;
  }
  
  public static MediaDescriptionCompat a(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21)) {
      return null;
    }
    aa localaa = new aa();
    localaa.a(ab.a(paramObject));
    localaa.a(ab.b(paramObject));
    localaa.b(ab.c(paramObject));
    localaa.c(ab.d(paramObject));
    localaa.a(ab.e(paramObject));
    localaa.a(ab.f(paramObject));
    Bundle localBundle = ab.g(paramObject);
    Object localObject;
    if (localBundle == null)
    {
      localObject = null;
      if (localObject == null) {
        break label163;
      }
      if ((!localBundle.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG")) || (localBundle.size() != 2)) {
        break label151;
      }
      localBundle = null;
      label110:
      localaa.a(localBundle);
      if (localObject == null) {
        break label166;
      }
      localaa.b((Uri)localObject);
    }
    for (;;)
    {
      localObject = localaa.a();
      i = paramObject;
      return (MediaDescriptionCompat)localObject;
      localObject = (Uri)localBundle.getParcelable("android.support.v4.media.description.MEDIA_URI");
      break;
      label151:
      localBundle.remove("android.support.v4.media.description.MEDIA_URI");
      localBundle.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
      label163:
      break label110;
      label166:
      if (Build.VERSION.SDK_INT >= 23) {
        localaa.b(ad.h(paramObject));
      }
    }
  }
  
  public Object a()
  {
    if ((i != null) || (Build.VERSION.SDK_INT < 21)) {
      return i;
    }
    Object localObject = ac.a();
    ac.a(localObject, a);
    ac.a(localObject, b);
    ac.b(localObject, c);
    ac.c(localObject, d);
    ac.a(localObject, e);
    ac.a(localObject, f);
    Bundle localBundle2 = g;
    Bundle localBundle1 = localBundle2;
    if (Build.VERSION.SDK_INT < 23)
    {
      localBundle1 = localBundle2;
      if (h != null)
      {
        localBundle1 = localBundle2;
        if (localBundle2 == null)
        {
          localBundle1 = new Bundle();
          localBundle1.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
        }
        localBundle1.putParcelable("android.support.v4.media.description.MEDIA_URI", h);
      }
    }
    ac.a(localObject, localBundle1);
    if (Build.VERSION.SDK_INT >= 23) {
      ae.b(localObject, h);
    }
    i = ac.a(localObject);
    return i;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return b + ", " + c + ", " + d;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (Build.VERSION.SDK_INT < 21)
    {
      paramParcel.writeString(a);
      TextUtils.writeToParcel(b, paramParcel, paramInt);
      TextUtils.writeToParcel(c, paramParcel, paramInt);
      TextUtils.writeToParcel(d, paramParcel, paramInt);
      paramParcel.writeParcelable(e, paramInt);
      paramParcel.writeParcelable(f, paramInt);
      paramParcel.writeBundle(g);
      paramParcel.writeParcelable(h, paramInt);
      return;
    }
    ab.a(a(), paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaDescriptionCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */