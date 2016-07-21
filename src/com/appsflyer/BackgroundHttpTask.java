package com.appsflyer;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import java.util.Map;

public class BackgroundHttpTask
  extends AsyncTask<String, Void, String>
{
  public Map<String, String> a;
  private String b = null;
  private boolean c = false;
  private Context d;
  
  public BackgroundHttpTask(Context paramContext)
  {
    d = paramContext;
  }
  
  /* Error */
  protected String a(String... paramVarArgs)
  {
    // Byte code:
    //   0: new 37	java/net/URL
    //   3: dup
    //   4: aload_1
    //   5: iconst_0
    //   6: aaload
    //   7: invokespecial 40	java/net/URL:<init>	(Ljava/lang/String;)V
    //   10: astore_1
    //   11: invokestatic 45	com/appsflyer/AppsFlyerProperties:a	()Lcom/appsflyer/AppsFlyerProperties;
    //   14: invokevirtual 49	com/appsflyer/AppsFlyerProperties:e	()Z
    //   17: ifne +43 -> 60
    //   20: ldc 51
    //   22: new 53	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   29: ldc 56
    //   31: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: aload_1
    //   35: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   38: ldc 65
    //   40: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_0
    //   44: getfield 67	com/appsflyer/BackgroundHttpTask:a	Ljava/util/Map;
    //   47: invokevirtual 73	java/lang/Object:toString	()Ljava/lang/String;
    //   50: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: invokestatic 80	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   59: pop
    //   60: aload_1
    //   61: invokevirtual 84	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   64: checkcast 86	javax/net/ssl/HttpsURLConnection
    //   67: astore_1
    //   68: aload_1
    //   69: sipush 30000
    //   72: invokevirtual 90	javax/net/ssl/HttpsURLConnection:setReadTimeout	(I)V
    //   75: aload_1
    //   76: sipush 30000
    //   79: invokevirtual 93	javax/net/ssl/HttpsURLConnection:setConnectTimeout	(I)V
    //   82: aload_1
    //   83: ldc 95
    //   85: invokevirtual 98	javax/net/ssl/HttpsURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   88: aload_1
    //   89: iconst_1
    //   90: invokevirtual 102	javax/net/ssl/HttpsURLConnection:setDoInput	(Z)V
    //   93: aload_1
    //   94: iconst_1
    //   95: invokevirtual 105	javax/net/ssl/HttpsURLConnection:setDoOutput	(Z)V
    //   98: aload_1
    //   99: ldc 107
    //   101: ldc 109
    //   103: invokevirtual 113	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   106: aload_1
    //   107: invokevirtual 117	javax/net/ssl/HttpsURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   110: astore_2
    //   111: new 119	java/io/BufferedWriter
    //   114: dup
    //   115: new 121	java/io/OutputStreamWriter
    //   118: dup
    //   119: aload_2
    //   120: ldc 123
    //   122: invokespecial 126	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   125: invokespecial 129	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   128: astore_3
    //   129: aload_3
    //   130: aload_0
    //   131: getfield 67	com/appsflyer/BackgroundHttpTask:a	Ljava/util/Map;
    //   134: invokestatic 134	com/appsflyer/AppsFlyerLib:a	(Ljava/util/Map;)Ljava/lang/String;
    //   137: invokevirtual 137	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   140: aload_3
    //   141: invokevirtual 140	java/io/BufferedWriter:flush	()V
    //   144: aload_3
    //   145: invokevirtual 143	java/io/BufferedWriter:close	()V
    //   148: aload_2
    //   149: invokevirtual 146	java/io/OutputStream:close	()V
    //   152: aload_1
    //   153: invokevirtual 149	javax/net/ssl/HttpsURLConnection:connect	()V
    //   156: aload_1
    //   157: invokevirtual 153	javax/net/ssl/HttpsURLConnection:getResponseCode	()I
    //   160: sipush 200
    //   163: if_icmpne +97 -> 260
    //   166: new 155	java/io/BufferedReader
    //   169: dup
    //   170: new 157	java/io/InputStreamReader
    //   173: dup
    //   174: aload_1
    //   175: invokevirtual 161	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   178: invokespecial 164	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   181: invokespecial 167	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   184: astore_1
    //   185: aload_1
    //   186: invokevirtual 170	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   189: astore_2
    //   190: aload_2
    //   191: ifnull +74 -> 265
    //   194: aload_0
    //   195: new 53	java/lang/StringBuilder
    //   198: dup
    //   199: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   202: aload_0
    //   203: getfield 21	com/appsflyer/BackgroundHttpTask:b	Ljava/lang/String;
    //   206: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: aload_2
    //   210: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: putfield 21	com/appsflyer/BackgroundHttpTask:b	Ljava/lang/String;
    //   219: goto -34 -> 185
    //   222: astore_1
    //   223: invokestatic 45	com/appsflyer/AppsFlyerProperties:a	()Lcom/appsflyer/AppsFlyerProperties;
    //   226: invokevirtual 49	com/appsflyer/AppsFlyerProperties:e	()Z
    //   229: ifne +31 -> 260
    //   232: ldc 51
    //   234: new 53	java/lang/StringBuilder
    //   237: dup
    //   238: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   241: ldc -84
    //   243: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: aload_1
    //   247: invokevirtual 173	java/net/MalformedURLException:toString	()Ljava/lang/String;
    //   250: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   256: invokestatic 80	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   259: pop
    //   260: aload_0
    //   261: getfield 21	com/appsflyer/BackgroundHttpTask:b	Ljava/lang/String;
    //   264: areturn
    //   265: invokestatic 45	com/appsflyer/AppsFlyerProperties:a	()Lcom/appsflyer/AppsFlyerProperties;
    //   268: invokevirtual 49	com/appsflyer/AppsFlyerProperties:e	()Z
    //   271: ifne -11 -> 260
    //   274: ldc 51
    //   276: ldc -81
    //   278: invokestatic 80	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   281: pop
    //   282: goto -22 -> 260
    //   285: astore_1
    //   286: invokestatic 45	com/appsflyer/AppsFlyerProperties:a	()Lcom/appsflyer/AppsFlyerProperties;
    //   289: invokevirtual 49	com/appsflyer/AppsFlyerProperties:e	()Z
    //   292: ifne -32 -> 260
    //   295: ldc 51
    //   297: new 53	java/lang/StringBuilder
    //   300: dup
    //   301: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   304: ldc -79
    //   306: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   309: aload_1
    //   310: invokevirtual 178	java/net/ProtocolException:toString	()Ljava/lang/String;
    //   313: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   319: invokestatic 80	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   322: pop
    //   323: goto -63 -> 260
    //   326: astore_1
    //   327: invokestatic 45	com/appsflyer/AppsFlyerProperties:a	()Lcom/appsflyer/AppsFlyerProperties;
    //   330: invokevirtual 49	com/appsflyer/AppsFlyerProperties:e	()Z
    //   333: ifne -73 -> 260
    //   336: ldc 51
    //   338: new 53	java/lang/StringBuilder
    //   341: dup
    //   342: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   345: ldc -76
    //   347: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: aload_1
    //   351: invokevirtual 181	java/io/IOException:toString	()Ljava/lang/String;
    //   354: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   357: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   360: invokestatic 80	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   363: pop
    //   364: goto -104 -> 260
    //   367: astore_1
    //   368: invokestatic 45	com/appsflyer/AppsFlyerProperties:a	()Lcom/appsflyer/AppsFlyerProperties;
    //   371: invokevirtual 49	com/appsflyer/AppsFlyerProperties:e	()Z
    //   374: ifne -114 -> 260
    //   377: ldc 51
    //   379: new 53	java/lang/StringBuilder
    //   382: dup
    //   383: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   386: ldc -73
    //   388: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   391: aload_1
    //   392: invokevirtual 184	java/lang/Exception:toString	()Ljava/lang/String;
    //   395: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   398: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   401: invokestatic 80	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   404: pop
    //   405: goto -145 -> 260
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	408	0	this	BackgroundHttpTask
    //   0	408	1	paramVarArgs	String[]
    //   110	100	2	localObject	Object
    //   128	17	3	localBufferedWriter	java.io.BufferedWriter
    // Exception table:
    //   from	to	target	type
    //   0	60	222	java/net/MalformedURLException
    //   60	185	222	java/net/MalformedURLException
    //   185	190	222	java/net/MalformedURLException
    //   194	219	222	java/net/MalformedURLException
    //   265	282	222	java/net/MalformedURLException
    //   0	60	285	java/net/ProtocolException
    //   60	185	285	java/net/ProtocolException
    //   185	190	285	java/net/ProtocolException
    //   194	219	285	java/net/ProtocolException
    //   265	282	285	java/net/ProtocolException
    //   0	60	326	java/io/IOException
    //   60	185	326	java/io/IOException
    //   185	190	326	java/io/IOException
    //   194	219	326	java/io/IOException
    //   265	282	326	java/io/IOException
    //   0	60	367	java/lang/Exception
    //   60	185	367	java/lang/Exception
    //   185	190	367	java/lang/Exception
    //   194	219	367	java/lang/Exception
    //   265	282	367	java/lang/Exception
  }
  
  protected void a(String paramString)
  {
    if (c)
    {
      Log.i("AppsFlyer_3.2", "Connection error");
      return;
    }
    Log.i("AppsFlyer_3.2", "Connection call succeeded");
  }
  
  protected void onCancelled() {}
  
  protected void onPreExecute() {}
}

/* Location:
 * Qualified Name:     com.appsflyer.BackgroundHttpTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */