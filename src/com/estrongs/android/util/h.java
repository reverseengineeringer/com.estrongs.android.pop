package com.estrongs.android.util;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.location.Location;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.MediaStore.Audio.Media;
import android.provider.MediaStore.Images.Media;

public class h
{
  private static h a = new h();
  private static final String[] b = { "image/jpeg", "image/png" };
  private static Uri c = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
  private static Uri d = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
  private static String[] e = { "_id", "_data" };
  private static String f = "(mime_type=? or mime_type=?)";
  
  private int a(String paramString)
  {
    if (paramString == null) {
      return 0;
    }
    return ap.e(paramString).toLowerCase().hashCode();
  }
  
  private Uri a(ContentResolver paramContentResolver, String paramString1, String paramString2, long paramLong, Location paramLocation, int paramInt)
  {
    Object localObject = c(paramContentResolver, paramString1);
    if ((localObject != null) && (((Cursor)localObject).getCount() > 0) && (((Cursor)localObject).moveToFirst()))
    {
      paramContentResolver = ContentUris.withAppendedId(c, ((Cursor)localObject).getLong(0));
      ((Cursor)localObject).close();
      return paramContentResolver;
    }
    localObject = ap.d(paramString1);
    ContentValues localContentValues = new ContentValues(9);
    localContentValues.put("title", (String)localObject);
    localContentValues.put("_display_name", (String)localObject);
    localContentValues.put("description", paramString2);
    localContentValues.put("datetaken", Long.valueOf(paramLong));
    if (paramString1.endsWith(".png")) {
      localContentValues.put("mime_type", "image/png");
    }
    for (;;)
    {
      localContentValues.put("orientation", Integer.valueOf(paramInt));
      localContentValues.put("bucket_id", Integer.valueOf(a(paramString1)));
      localContentValues.put("bucket_display_name", ap.e(paramString1).toLowerCase());
      if (paramLocation != null)
      {
        localContentValues.put("latitude", Double.valueOf(paramLocation.getLatitude()));
        localContentValues.put("longitude", Double.valueOf(paramLocation.getLongitude()));
      }
      localContentValues.put("_data", paramString1);
      try
      {
        paramContentResolver = paramContentResolver.insert(c, localContentValues);
        return paramContentResolver;
      }
      catch (Exception paramContentResolver) {}
      localContentValues.put("mime_type", "image/jpeg");
    }
    return null;
  }
  
  public static h a()
  {
    return a;
  }
  
  private Cursor c(ContentResolver paramContentResolver, String paramString)
  {
    try
    {
      Uri localUri = c;
      paramString = "(mime_type=? or mime_type=?) and _data='" + paramString.replace("'", "''") + "'";
      String[] arrayOfString = b;
      paramContentResolver = MediaStore.Images.Media.query(paramContentResolver, localUri, new String[] { "_id", "bucket_id" }, paramString, arrayOfString, "_id ASC");
      return paramContentResolver;
    }
    catch (Throwable paramContentResolver) {}
    return null;
  }
  
  public Uri a(ContentResolver paramContentResolver, String paramString)
  {
    Object localObject = null;
    paramString = c(paramContentResolver, paramString);
    paramContentResolver = (ContentResolver)localObject;
    if (paramString != null)
    {
      paramContentResolver = (ContentResolver)localObject;
      if (paramString.moveToFirst())
      {
        paramContentResolver = ContentUris.withAppendedId(c, paramString.getLong(0)).buildUpon().appendQueryParameter("bucketId", "" + paramString.getInt(1)).build();
        paramString.close();
      }
    }
    return paramContentResolver;
  }
  
  public Uri a(ContentResolver paramContentResolver, String[] paramArrayOfString, String paramString)
  {
    Object localObject2;
    if ((paramString == null) || (paramArrayOfString == null) || (paramArrayOfString.length == 0) || (paramString.contains("/."))) {
      localObject2 = null;
    }
    int i;
    Object localObject1;
    do
    {
      return (Uri)localObject2;
      i = 0;
      localObject1 = null;
      localObject2 = localObject1;
    } while (i >= paramArrayOfString.length);
    String str = paramArrayOfString[i];
    if (str.contains("/.")) {}
    for (;;)
    {
      i += 1;
      break;
      if ((str.endsWith(".png")) || (str.endsWith(".jpg")) || (str.endsWith(".jpeg")))
      {
        localObject2 = c(paramContentResolver, str);
        if ((localObject2 != null) && (((Cursor)localObject2).getCount() > 0))
        {
          ((Cursor)localObject2).close();
        }
        else if (paramString.equals(str))
        {
          localObject2 = a(paramContentResolver, str, "", System.currentTimeMillis(), null, 0);
          localObject1 = localObject2;
          if (localObject2 != null) {
            localObject1 = ((Uri)localObject2).buildUpon().appendQueryParameter("bucketId", String.valueOf(a(str))).build();
          }
        }
        else
        {
          a(paramContentResolver, str, "", System.currentTimeMillis(), null, 0);
        }
      }
    }
  }
  
  /* Error */
  public Uri b(ContentResolver paramContentResolver, String paramString)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +12 -> 13
    //   4: aload_2
    //   5: ldc -22
    //   7: invokevirtual 238	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   10: ifeq +7 -> 17
    //   13: aconst_null
    //   14: astore_1
    //   15: aload_1
    //   16: areturn
    //   17: aload_2
    //   18: invokestatic 260	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   21: astore 4
    //   23: getstatic 34	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   26: astore_2
    //   27: new 179	java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial 180	java/lang/StringBuilder:<init>	()V
    //   34: ldc_w 262
    //   37: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload 4
    //   42: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: ldc -68
    //   47: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: astore 5
    //   55: aload_1
    //   56: aload_2
    //   57: iconst_1
    //   58: anewarray 23	java/lang/String
    //   61: dup
    //   62: iconst_0
    //   63: ldc 43
    //   65: aastore
    //   66: aload 5
    //   68: aconst_null
    //   69: aconst_null
    //   70: invokevirtual 265	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   73: astore_2
    //   74: aload_2
    //   75: ifnull +79 -> 154
    //   78: aload_2
    //   79: invokeinterface 78 1 0
    //   84: ifle +70 -> 154
    //   87: aload_2
    //   88: invokeinterface 82 1 0
    //   93: pop
    //   94: aload_2
    //   95: iconst_0
    //   96: invokeinterface 218 2 0
    //   101: istore_3
    //   102: getstatic 34	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   105: invokevirtual 266	android/net/Uri:toString	()Ljava/lang/String;
    //   108: astore_1
    //   109: new 179	java/lang/StringBuilder
    //   112: dup
    //   113: invokespecial 180	java/lang/StringBuilder:<init>	()V
    //   116: aload_1
    //   117: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: ldc_w 268
    //   123: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: iload_3
    //   127: invokevirtual 221	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   130: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: invokestatic 272	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   136: astore 4
    //   138: aload 4
    //   140: astore_1
    //   141: aload_2
    //   142: ifnull -127 -> 15
    //   145: aload_2
    //   146: invokeinterface 95 1 0
    //   151: aload 4
    //   153: areturn
    //   154: aload_0
    //   155: aload_1
    //   156: aload 4
    //   158: ldc -42
    //   160: invokestatic 252	java/lang/System:currentTimeMillis	()J
    //   163: aconst_null
    //   164: iconst_0
    //   165: invokespecial 254	com/estrongs/android/util/h:a	(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;I)Landroid/net/Uri;
    //   168: astore 4
    //   170: aload 4
    //   172: astore_1
    //   173: aload_2
    //   174: ifnull -159 -> 15
    //   177: aload_2
    //   178: invokeinterface 95 1 0
    //   183: aload 4
    //   185: areturn
    //   186: astore_2
    //   187: aconst_null
    //   188: astore_1
    //   189: aload_2
    //   190: invokevirtual 275	java/lang/Exception:printStackTrace	()V
    //   193: aload_1
    //   194: ifnull +9 -> 203
    //   197: aload_1
    //   198: invokeinterface 95 1 0
    //   203: aconst_null
    //   204: areturn
    //   205: astore_1
    //   206: aconst_null
    //   207: astore_2
    //   208: aload_2
    //   209: ifnull +9 -> 218
    //   212: aload_2
    //   213: invokeinterface 95 1 0
    //   218: aload_1
    //   219: athrow
    //   220: astore_1
    //   221: goto -13 -> 208
    //   224: astore 4
    //   226: aload_1
    //   227: astore_2
    //   228: aload 4
    //   230: astore_1
    //   231: goto -23 -> 208
    //   234: astore 4
    //   236: aload_2
    //   237: astore_1
    //   238: aload 4
    //   240: astore_2
    //   241: goto -52 -> 189
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	244	0	this	h
    //   0	244	1	paramContentResolver	ContentResolver
    //   0	244	2	paramString	String
    //   101	26	3	i	int
    //   21	163	4	localObject1	Object
    //   224	5	4	localObject2	Object
    //   234	5	4	localException	Exception
    //   53	14	5	str	String
    // Exception table:
    //   from	to	target	type
    //   23	74	186	java/lang/Exception
    //   23	74	205	finally
    //   78	138	220	finally
    //   154	170	220	finally
    //   189	193	224	finally
    //   78	138	234	java/lang/Exception
    //   154	170	234	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */