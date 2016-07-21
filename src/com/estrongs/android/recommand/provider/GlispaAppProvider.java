package com.estrongs.android.recommand.provider;

import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import com.estrongs.android.recommand.m;
import com.estrongs.android.recommand.n;
import com.estrongs.android.recommand.o;
import com.estrongs.android.recommand.p;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.af;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class GlispaAppProvider
  implements n
{
  private static final String AD_SPACE_ID = "4586dd5c-4a79-4078-9436-a3d8dee8ac28";
  private static final String GLISPA_DATA_FILENAME = GLISPA_PATH + "data.json";
  private static final String GLISPA_PATH;
  private static final String REQUEST_URL = "http://rt.api.glispa.com/native/v1/ad";
  private static final String Tag = GlispaAppProvider.class.getSimpleName();
  private int mCacheSize;
  private long mFilledTimestamp;
  private af mListener = new GlispaAppProvider.1(this);
  private o mParam;
  private String mRequestData;
  private int mStatusCode;
  
  static
  {
    GLISPA_PATH = a.h + "/glispa/";
  }
  
  public GlispaAppProvider(o paramo)
  {
    mParam = paramo;
  }
  
  private String buildRequestData(int paramInt, Object[] paramArrayOfObject)
  {
    Object localObject = Settings.Secure.getString(FexApplication.a().getContentResolver(), "android_id");
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("os", "android");
      localJSONObject.put("osv", Build.VERSION.RELEASE);
      localJSONObject.put("id", localObject);
      localJSONObject.put("language", Locale.getDefault().getDisplayLanguage());
      localObject = new JSONArray();
      if (paramArrayOfObject != null)
      {
        int j = paramArrayOfObject.length;
        int i = 0;
        while (i < j)
        {
          ((JSONArray)localObject).put(paramArrayOfObject[i]);
          i += 1;
        }
        localJSONObject.put("instapps", localObject);
      }
      paramArrayOfObject = new JSONObject();
      paramArrayOfObject.put("device", localJSONObject);
      localJSONObject = new JSONObject();
      localJSONObject.put("id", "4586dd5c-4a79-4078-9436-a3d8dee8ac28");
      localObject = new JSONArray();
      ((JSONArray)localObject).put("title");
      ((JSONArray)localObject).put("icon_72");
      localJSONObject.put("fields", localObject);
      localJSONObject.put("count", paramInt);
      paramArrayOfObject.put("ad", localJSONObject);
      paramArrayOfObject = paramArrayOfObject.toString();
      return paramArrayOfObject;
    }
    catch (JSONException paramArrayOfObject)
    {
      paramArrayOfObject.printStackTrace();
    }
    return null;
  }
  
  private void fill(List<p> paramList)
  {
    mStatusCode = 3001;
    aa localaa = new aa("http://rt.api.glispa.com/native/v1/ad");
    d = Thread.currentThread();
    e = paramList;
    localaa.i();
    localaa.a(mRequestData.getBytes());
    localaa.a(new String[] { "Content-Type", "application/json" });
    localaa.a(GLISPA_DATA_FILENAME);
    localaa.a(mListener);
    localaa.a(localaa);
    localaa.c();
  }
  
  private void parseCallbacksSection(JSONObject paramJSONObject, m paramm)
  {
    int j = 0;
    paramJSONObject = paramJSONObject.optJSONObject("callbacks");
    if (paramJSONObject != null)
    {
      Object localObject = paramJSONObject.optJSONArray("impression");
      int i;
      if ((localObject != null) && (((JSONArray)localObject).length() != 0))
      {
        String[] arrayOfString = new String[((JSONArray)localObject).length()];
        i = 0;
        while (i < ((JSONArray)localObject).length())
        {
          arrayOfString[i] = ((JSONArray)localObject).optString(i);
          i += 1;
        }
        paramm.a(arrayOfString);
      }
      paramJSONObject = paramJSONObject.optJSONArray("click");
      if ((paramJSONObject != null) && (paramJSONObject.length() != 0))
      {
        localObject = new String[paramJSONObject.length()];
        i = j;
        while (i < paramJSONObject.length())
        {
          localObject[i] = paramJSONObject.optString(i);
          i += 1;
        }
        paramm.b((String[])localObject);
      }
    }
  }
  
  private void parseDataSection(JSONObject paramJSONObject, m paramm)
  {
    paramJSONObject = paramJSONObject.optJSONObject("data");
    if (paramJSONObject != null)
    {
      b = paramJSONObject.optString("title", null);
      c = paramJSONObject.optString("icon_72", null);
    }
  }
  
  private List<m> parseResponse()
  {
    Object localObject1 = Collections.emptyList();
    Object localObject2 = readResponse();
    try
    {
      localObject2 = new JSONObject((String)localObject2);
      localObject2 = ((JSONObject)localObject2).optJSONArray("ads");
      if (localObject2 == null) {
        return (List<m>)localObject1;
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      return (List<m>)localObject1;
    }
    localObject1 = new ArrayList();
    int i = 0;
    while (i < localJSONException.length())
    {
      JSONObject localJSONObject = localJSONException.optJSONObject(i);
      if (localJSONObject != null)
      {
        m localm = new m();
        a = localJSONObject.optString("appid", null);
        localm.a(localJSONObject.optString("curl", null));
        localm.b(localJSONObject.optString("pcurl", null));
        parseCallbacksSection(localJSONObject, localm);
        parseDataSection(localJSONObject, localm);
        ((List)localObject1).add(localm);
      }
      i += 1;
    }
    return (List<m>)localObject1;
  }
  
  /* Error */
  private String readResponse()
  {
    // Byte code:
    //   0: new 308	java/io/File
    //   3: dup
    //   4: getstatic 61	com/estrongs/android/recommand/provider/GlispaAppProvider:GLISPA_DATA_FILENAME	Ljava/lang/String;
    //   7: invokespecial 309	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: astore 5
    //   12: aload 5
    //   14: invokevirtual 313	java/io/File:exists	()Z
    //   17: ifeq +11 -> 28
    //   20: aload 5
    //   22: invokevirtual 316	java/io/File:isFile	()Z
    //   25: ifne +14 -> 39
    //   28: getstatic 36	com/estrongs/android/recommand/provider/GlispaAppProvider:Tag	Ljava/lang/String;
    //   31: ldc_w 318
    //   34: invokestatic 323	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: aconst_null
    //   38: areturn
    //   39: aload 5
    //   41: invokevirtual 326	java/io/File:length	()J
    //   44: lstore_3
    //   45: new 328	java/io/FileInputStream
    //   48: dup
    //   49: aload 5
    //   51: invokespecial 331	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   54: astore 6
    //   56: lload_3
    //   57: l2i
    //   58: istore_1
    //   59: aload 6
    //   61: astore 5
    //   63: iload_1
    //   64: newarray <illegal type>
    //   66: astore 7
    //   68: iconst_0
    //   69: istore_1
    //   70: aload 6
    //   72: astore 5
    //   74: aload 6
    //   76: aload 7
    //   78: iload_1
    //   79: lload_3
    //   80: l2i
    //   81: iload_1
    //   82: isub
    //   83: invokevirtual 335	java/io/FileInputStream:read	([BII)I
    //   86: istore_2
    //   87: iload_2
    //   88: iconst_m1
    //   89: if_icmpeq +16 -> 105
    //   92: iload_1
    //   93: iload_2
    //   94: iadd
    //   95: istore_2
    //   96: iload_2
    //   97: istore_1
    //   98: iload_2
    //   99: i2l
    //   100: lload_3
    //   101: lcmp
    //   102: ifne -32 -> 70
    //   105: aload 6
    //   107: astore 5
    //   109: aload 6
    //   111: invokevirtual 338	java/io/FileInputStream:close	()V
    //   114: aconst_null
    //   115: invokestatic 343	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   118: new 195	java/lang/String
    //   121: dup
    //   122: aload 7
    //   124: invokespecial 345	java/lang/String:<init>	([B)V
    //   127: areturn
    //   128: astore 7
    //   130: aconst_null
    //   131: astore 6
    //   133: aload 6
    //   135: astore 5
    //   137: aload 7
    //   139: invokevirtual 346	java/lang/Exception:printStackTrace	()V
    //   142: aload 6
    //   144: invokestatic 343	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   147: aconst_null
    //   148: areturn
    //   149: astore 5
    //   151: aconst_null
    //   152: astore 7
    //   154: aload 5
    //   156: astore 6
    //   158: aload 7
    //   160: invokestatic 343	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   163: aload 6
    //   165: athrow
    //   166: astore 6
    //   168: aload 5
    //   170: astore 7
    //   172: goto -14 -> 158
    //   175: astore 7
    //   177: goto -44 -> 133
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	180	0	this	GlispaAppProvider
    //   58	40	1	i	int
    //   86	13	2	j	int
    //   44	57	3	l	long
    //   10	126	5	localObject1	Object
    //   149	20	5	localObject2	Object
    //   54	110	6	localObject3	Object
    //   166	1	6	localObject4	Object
    //   66	57	7	arrayOfByte	byte[]
    //   128	10	7	localException1	Exception
    //   152	19	7	localObject5	Object
    //   175	1	7	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   39	56	128	java/lang/Exception
    //   39	56	149	finally
    //   63	68	166	finally
    //   74	87	166	finally
    //   109	114	166	finally
    //   137	142	166	finally
    //   63	68	175	java/lang/Exception
    //   74	87	175	java/lang/Exception
    //   109	114	175	java/lang/Exception
  }
  
  public void destroy() {}
  
  public o getParam()
  {
    return mParam;
  }
  
  public int getStatusCode()
  {
    return mStatusCode;
  }
  
  public void init()
  {
    mCacheSize = mParam.d;
    mFilledTimestamp = 0L;
    mRequestData = buildRequestData(mCacheSize, null);
  }
  
  public boolean isExpired()
  {
    if (mFilledTimestamp == 0L) {}
    while (System.currentTimeMillis() / 1000L >= mFilledTimestamp + mParam.h) {
      return true;
    }
    return false;
  }
  
  public List<p> load()
  {
    ArrayList localArrayList = new ArrayList();
    fill(localArrayList);
    try
    {
      localArrayList.wait(20000L);
      return localArrayList;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        l.e(Tag, "network error!");
      }
    }
    finally {}
  }
  
  public List<p> load(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject != null) {
      mRequestData = buildRequestData(mCacheSize, paramArrayOfObject);
    }
    return load();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.recommand.provider.GlispaAppProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */