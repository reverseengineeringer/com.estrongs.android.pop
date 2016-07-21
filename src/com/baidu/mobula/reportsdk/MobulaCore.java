package com.baidu.mobula.reportsdk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.util.CharArrayBuffer;
import org.json.JSONException;
import org.json.JSONObject;

public final class MobulaCore
  implements Handler.Callback
{
  public static final String KEY_MDU = "mdu";
  public static final String KEY_PROTOCAL = "rv";
  public static final String KEY_SECURITY = "s";
  public static final String KEY_SEQ = "seq";
  public static final String KEY_STYPE = "stype";
  public static final String KEY_TIMESTAMP = "ts";
  public static final int LEVEL_1 = 1;
  public static final int LEVEL_2 = 2;
  public static final int LEVEL_3 = 3;
  public static final int LEVEL_4 = 4;
  static final String LOG_TAG = "MobulaReport";
  public static final String MDU_TOOLBOX = "adsdk";
  static final int MSG_REPORT = 3;
  static final int MSG_SCHEDULE = 4;
  private static final String ORTS_URL_PROD = "http://rts.mobula.sdk.duapps.com/orts/rp?";
  private static final String ORTS_URL_TEST = "http://sandbox.duapps.com:8124/orts/rp?";
  public static final int PRIORITY_NORMAL = 1;
  public static final int PRIORITY_REAL_TIME = 0;
  private static final long REPORT_DELAYED = 5000L;
  private static final long ROLLBACK_INTERVAL = 604800000L;
  private static final String RPB_URL_PROD = "http://rts.mobula.sdk.duapps.com/orts/rpb?";
  private static final String RPB_URL_TEST = "http://sandbox.duapps.com:8124/orts/rpb?";
  private static final long SCHEDULE_INTERVAL = 3600000L;
  static final int SCHEDULE_TIMES = 3;
  private static final String SRC_PRIO_URL_PROD = "http://api.mobula.sdk.duapps.com/adunion/slot/getSrcPrio?";
  private static final String SRC_PRIO_URL_TEST = "http://sandbox.duapps.com:8124/adunion/slot/getSrcPrio?";
  public static final String STATS_PROTOCAL = "1.0";
  private static final int ST_200 = 200;
  private static final int ST_304 = 304;
  public static final String VALUE_STYPE_BEHAVIOR = "behavior";
  public static final String VALUE_STYPE_DAILIANG = "dailiang";
  public static final String VALUE_STYPE_FACEBOOK = "facebook";
  public static final String VALUE_STYPE_NATIVE = "native";
  public static final String VALUE_STYPE_OFFERWALL = "offerwall";
  public static final String VALUE_STYPE_ONLINE = "online";
  private static MobulaCore sInstance;
  private static String sRPBUrl = "http://rts.mobula.sdk.duapps.com/orts/rpb?";
  private static String sSrcUrl = "http://api.mobula.sdk.duapps.com/adunion/slot/getSrcPrio?";
  private static String sStatsUrl = "http://rts.mobula.sdk.duapps.com/orts/rp?";
  private Context mContext;
  private Handler mHandler;
  int scheduleTime = 0;
  
  private MobulaCore(Context paramContext)
  {
    mContext = paramContext;
    paramContext = new HandlerThread("stts", 10);
    paramContext.start();
    mHandler = new Handler(paramContext.getLooper(), this);
    mHandler.sendEmptyMessage(4);
  }
  
  private static void dumpResult(HttpResponse paramHttpResponse)
  {
    Object localObject = paramHttpResponse.getEntity();
    paramHttpResponse = ((HttpEntity)localObject).getContent();
    localObject = ((HttpEntity)localObject).getContentEncoding();
    if ((localObject != null) && (((Header)localObject).getValue().indexOf("gzip") != -1)) {
      paramHttpResponse = new GZIPInputStream(paramHttpResponse);
    }
    for (;;)
    {
      localObject = new InputStreamReader(paramHttpResponse, "UTF-8");
      CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(1024);
      char[] arrayOfChar = new char['Ѐ'];
      for (;;)
      {
        int i = ((Reader)localObject).read(arrayOfChar);
        if (i == -1)
        {
          MobulaUtils.closeQuietly(paramHttpResponse);
          paramHttpResponse = localCharArrayBuffer.toString();
          LogHelper.d("MobulaReport", "result = " + paramHttpResponse);
          try
          {
            paramHttpResponse = new JSONObject(paramHttpResponse).getJSONObject("responseHeader");
            if (paramHttpResponse.getInt("status") != 200) {
              throw new IOException(paramHttpResponse.getString("msg"));
            }
          }
          catch (JSONException paramHttpResponse) {}
          return;
        }
        localCharArrayBuffer.append(arrayOfChar, 0, i);
      }
    }
  }
  
  public static MobulaCore getInstance(Context paramContext)
  {
    init(paramContext);
    return sInstance;
  }
  
  public static void init(Context paramContext)
  {
    try
    {
      if (sInstance == null) {
        sInstance = new MobulaCore(paramContext.getApplicationContext());
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  /* Error */
  private boolean pushToServer(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aconst_null
    //   4: astore 8
    //   6: aload_0
    //   7: getfield 126	com/baidu/mobula/reportsdk/MobulaCore:mContext	Landroid/content/Context;
    //   10: aload_1
    //   11: invokestatic 288	com/baidu/mobula/reportsdk/HttpParamsHelper:commonParams	(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    //   14: astore 7
    //   16: invokestatic 294	java/lang/System:currentTimeMillis	()J
    //   19: invokestatic 298	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   22: astore 10
    //   24: aload 7
    //   26: new 300	org/apache/http/message/BasicNameValuePair
    //   29: dup
    //   30: ldc 10
    //   32: ldc 40
    //   34: invokespecial 302	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: invokeinterface 308 2 0
    //   42: pop
    //   43: aload 7
    //   45: new 300	org/apache/http/message/BasicNameValuePair
    //   48: dup
    //   49: ldc 13
    //   51: ldc 77
    //   53: invokespecial 302	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   56: invokeinterface 308 2 0
    //   61: pop
    //   62: aload 7
    //   64: new 300	org/apache/http/message/BasicNameValuePair
    //   67: dup
    //   68: ldc 25
    //   70: aload 10
    //   72: invokespecial 302	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   75: invokeinterface 308 2 0
    //   80: pop
    //   81: aload 7
    //   83: new 300	org/apache/http/message/BasicNameValuePair
    //   86: dup
    //   87: ldc 19
    //   89: lload 4
    //   91: invokestatic 312	java/lang/Long:toString	(J)Ljava/lang/String;
    //   94: invokespecial 302	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   97: invokeinterface 308 2 0
    //   102: pop
    //   103: aload 7
    //   105: new 300	org/apache/http/message/BasicNameValuePair
    //   108: dup
    //   109: ldc 22
    //   111: aload_2
    //   112: invokespecial 302	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   115: invokeinterface 308 2 0
    //   120: pop
    //   121: ldc_w 314
    //   124: invokestatic 319	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   127: astore 11
    //   129: aload 11
    //   131: aload_3
    //   132: invokevirtual 323	java/lang/String:getBytes	()[B
    //   135: invokevirtual 327	java/security/MessageDigest:update	([B)V
    //   138: aload 11
    //   140: aload 10
    //   142: invokevirtual 323	java/lang/String:getBytes	()[B
    //   145: invokevirtual 327	java/security/MessageDigest:update	([B)V
    //   148: aload 11
    //   150: aload_1
    //   151: invokevirtual 323	java/lang/String:getBytes	()[B
    //   154: invokevirtual 327	java/security/MessageDigest:update	([B)V
    //   157: aload 7
    //   159: new 300	org/apache/http/message/BasicNameValuePair
    //   162: dup
    //   163: ldc 16
    //   165: aload 11
    //   167: invokevirtual 330	java/security/MessageDigest:digest	()[B
    //   170: invokestatic 334	com/baidu/mobula/reportsdk/MobulaUtils:bytesToHexString	([B)Ljava/lang/String;
    //   173: invokespecial 302	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   176: invokeinterface 308 2 0
    //   181: pop
    //   182: aload 7
    //   184: ldc -62
    //   186: invokestatic 340	org/apache/http/client/utils/URLEncodedUtils:format	(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    //   189: astore 10
    //   191: aload 8
    //   193: astore 7
    //   195: aload 9
    //   197: astore_1
    //   198: aload_2
    //   199: ldc 84
    //   201: invokevirtual 344	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   204: ifeq +133 -> 337
    //   207: aload 8
    //   209: astore 7
    //   211: aload 9
    //   213: astore_1
    //   214: new 346	java/net/URI
    //   217: dup
    //   218: new 219	java/lang/StringBuilder
    //   221: dup
    //   222: getstatic 117	com/baidu/mobula/reportsdk/MobulaCore:sRPBUrl	Ljava/lang/String;
    //   225: invokestatic 349	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   228: invokespecial 224	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   231: aload 10
    //   233: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: invokespecial 350	java/net/URI:<init>	(Ljava/lang/String;)V
    //   242: astore_2
    //   243: aload 8
    //   245: astore 7
    //   247: aload 9
    //   249: astore_1
    //   250: aload_2
    //   251: aload_3
    //   252: aconst_null
    //   253: invokestatic 356	com/baidu/mobula/reportsdk/MobulaRequestHelper:executePostRequest	(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    //   256: astore_2
    //   257: aload_2
    //   258: astore 7
    //   260: aload_2
    //   261: astore_1
    //   262: aload_2
    //   263: invokeinterface 360 1 0
    //   268: invokeinterface 366 1 0
    //   273: istore 6
    //   275: aload_2
    //   276: astore 7
    //   278: aload_2
    //   279: astore_1
    //   280: ldc 37
    //   282: new 219	java/lang/StringBuilder
    //   285: dup
    //   286: ldc_w 368
    //   289: invokespecial 224	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   292: iload 6
    //   294: invokevirtual 371	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   297: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   300: invokestatic 235	com/baidu/mobula/reportsdk/LogHelper:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   303: iload 6
    //   305: sipush 200
    //   308: if_icmpne +88 -> 396
    //   311: aload_2
    //   312: astore 7
    //   314: aload_2
    //   315: astore_1
    //   316: invokestatic 375	com/baidu/mobula/reportsdk/LogHelper:isLogEnabled	()Z
    //   319: ifeq +12 -> 331
    //   322: aload_2
    //   323: astore 7
    //   325: aload_2
    //   326: astore_1
    //   327: aload_2
    //   328: invokestatic 377	com/baidu/mobula/reportsdk/MobulaCore:dumpResult	(Lorg/apache/http/HttpResponse;)V
    //   331: aload_2
    //   332: invokestatic 380	com/baidu/mobula/reportsdk/MobulaRequestHelper:consumEntity	(Lorg/apache/http/HttpResponse;)V
    //   335: iconst_1
    //   336: ireturn
    //   337: aload 8
    //   339: astore 7
    //   341: aload 9
    //   343: astore_1
    //   344: new 346	java/net/URI
    //   347: dup
    //   348: new 219	java/lang/StringBuilder
    //   351: dup
    //   352: getstatic 115	com/baidu/mobula/reportsdk/MobulaCore:sStatsUrl	Ljava/lang/String;
    //   355: invokestatic 349	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   358: invokespecial 224	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   361: aload 10
    //   363: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   369: invokespecial 350	java/net/URI:<init>	(Ljava/lang/String;)V
    //   372: astore_2
    //   373: goto -130 -> 243
    //   376: astore_2
    //   377: aload 7
    //   379: astore_1
    //   380: ldc 37
    //   382: ldc_w 382
    //   385: aload_2
    //   386: invokestatic 385	com/baidu/mobula/reportsdk/LogHelper:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   389: aload 7
    //   391: invokestatic 380	com/baidu/mobula/reportsdk/MobulaRequestHelper:consumEntity	(Lorg/apache/http/HttpResponse;)V
    //   394: iconst_0
    //   395: ireturn
    //   396: aload_2
    //   397: invokestatic 380	com/baidu/mobula/reportsdk/MobulaRequestHelper:consumEntity	(Lorg/apache/http/HttpResponse;)V
    //   400: iconst_0
    //   401: ireturn
    //   402: astore_2
    //   403: aload_1
    //   404: invokestatic 380	com/baidu/mobula/reportsdk/MobulaRequestHelper:consumEntity	(Lorg/apache/http/HttpResponse;)V
    //   407: aload_2
    //   408: athrow
    //   409: astore_1
    //   410: iconst_0
    //   411: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	412	0	this	MobulaCore
    //   0	412	1	paramString1	String
    //   0	412	2	paramString2	String
    //   0	412	3	paramString3	String
    //   0	412	4	paramLong	long
    //   273	36	6	i	int
    //   14	376	7	localObject1	Object
    //   4	334	8	localObject2	Object
    //   1	341	9	localObject3	Object
    //   22	340	10	str	String
    //   127	39	11	localMessageDigest	java.security.MessageDigest
    // Exception table:
    //   from	to	target	type
    //   198	207	376	java/lang/Exception
    //   214	243	376	java/lang/Exception
    //   250	257	376	java/lang/Exception
    //   262	275	376	java/lang/Exception
    //   280	303	376	java/lang/Exception
    //   316	322	376	java/lang/Exception
    //   327	331	376	java/lang/Exception
    //   344	373	376	java/lang/Exception
    //   198	207	402	finally
    //   214	243	402	finally
    //   250	257	402	finally
    //   262	275	402	finally
    //   280	303	402	finally
    //   316	322	402	finally
    //   327	331	402	finally
    //   344	373	402	finally
    //   380	389	402	finally
    //   121	182	409	java/security/NoSuchAlgorithmException
  }
  
  /* Error */
  private void report(Message paramMessage)
  {
    // Byte code:
    //   0: invokestatic 294	java/lang/System:currentTimeMillis	()J
    //   3: lstore 4
    //   5: new 391	org/json/JSONStringer
    //   8: dup
    //   9: invokespecial 392	org/json/JSONStringer:<init>	()V
    //   12: astore 18
    //   14: new 219	java/lang/StringBuilder
    //   17: dup
    //   18: invokespecial 393	java/lang/StringBuilder:<init>	()V
    //   21: astore 17
    //   23: lload 4
    //   25: ldc2_w 57
    //   28: lsub
    //   29: lstore 4
    //   31: aload_0
    //   32: getfield 126	com/baidu/mobula/reportsdk/MobulaCore:mContext	Landroid/content/Context;
    //   35: invokevirtual 397	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   38: aload_0
    //   39: getfield 126	com/baidu/mobula/reportsdk/MobulaCore:mContext	Landroid/content/Context;
    //   42: iconst_4
    //   43: invokestatic 403	com/baidu/mobula/reportsdk/MobulaCacheProvider:getUriByType	(Landroid/content/Context;I)Landroid/net/Uri;
    //   46: iconst_5
    //   47: anewarray 181	java/lang/String
    //   50: dup
    //   51: iconst_0
    //   52: ldc 25
    //   54: aastore
    //   55: dup
    //   56: iconst_1
    //   57: ldc_w 405
    //   60: aastore
    //   61: dup
    //   62: iconst_2
    //   63: ldc_w 407
    //   66: aastore
    //   67: dup
    //   68: iconst_3
    //   69: ldc 22
    //   71: aastore
    //   72: dup
    //   73: iconst_4
    //   74: ldc_w 409
    //   77: aastore
    //   78: ldc_w 411
    //   81: iconst_1
    //   82: anewarray 181	java/lang/String
    //   85: dup
    //   86: iconst_0
    //   87: lload 4
    //   89: invokestatic 298	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   92: aastore
    //   93: ldc_w 413
    //   96: invokevirtual 419	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   99: astore 9
    //   101: aload 9
    //   103: ifnonnull +26 -> 129
    //   106: aload 9
    //   108: ifnull +20 -> 128
    //   111: aload 9
    //   113: invokeinterface 424 1 0
    //   118: ifne +10 -> 128
    //   121: aload 9
    //   123: invokeinterface 427 1 0
    //   128: return
    //   129: aload 9
    //   131: astore 10
    //   133: aload 9
    //   135: invokeinterface 430 1 0
    //   140: iconst_1
    //   141: if_icmpge +37 -> 178
    //   144: aload 9
    //   146: astore 10
    //   148: aload 9
    //   150: invokeinterface 427 1 0
    //   155: aload 9
    //   157: ifnull -29 -> 128
    //   160: aload 9
    //   162: invokeinterface 424 1 0
    //   167: ifne -39 -> 128
    //   170: aload 9
    //   172: invokeinterface 427 1 0
    //   177: return
    //   178: aload 9
    //   180: astore 10
    //   182: aload 18
    //   184: invokevirtual 434	org/json/JSONStringer:array	()Lorg/json/JSONStringer;
    //   187: pop
    //   188: aconst_null
    //   189: astore_1
    //   190: aconst_null
    //   191: astore 8
    //   193: iconst_0
    //   194: istore_2
    //   195: aload 9
    //   197: astore 10
    //   199: aload_1
    //   200: astore 12
    //   202: aload 8
    //   204: astore 11
    //   206: aload 9
    //   208: invokeinterface 437 1 0
    //   213: ifne +248 -> 461
    //   216: aload 9
    //   218: astore 10
    //   220: aload_1
    //   221: astore 12
    //   223: aload 8
    //   225: astore 11
    //   227: aload 18
    //   229: invokevirtual 440	org/json/JSONStringer:endArray	()Lorg/json/JSONStringer;
    //   232: pop
    //   233: aload 9
    //   235: ifnull +20 -> 255
    //   238: aload 9
    //   240: invokeinterface 424 1 0
    //   245: ifne +10 -> 255
    //   248: aload 9
    //   250: invokeinterface 427 1 0
    //   255: aload 8
    //   257: astore 9
    //   259: iconst_0
    //   260: istore_3
    //   261: aload_1
    //   262: astore 8
    //   264: aload 9
    //   266: astore_1
    //   267: iload_2
    //   268: ifeq -140 -> 128
    //   271: iload_3
    //   272: ifne -144 -> 128
    //   275: aload_1
    //   276: ifnull -148 -> 128
    //   279: aload 8
    //   281: ifnull -153 -> 128
    //   284: aload 17
    //   286: aload 17
    //   288: invokevirtual 443	java/lang/StringBuilder:length	()I
    //   291: iconst_1
    //   292: isub
    //   293: invokevirtual 446	java/lang/StringBuilder:deleteCharAt	(I)Ljava/lang/StringBuilder;
    //   296: pop
    //   297: aload 18
    //   299: invokevirtual 447	org/json/JSONStringer:toString	()Ljava/lang/String;
    //   302: astore 9
    //   304: aload_0
    //   305: getfield 126	com/baidu/mobula/reportsdk/MobulaCore:mContext	Landroid/content/Context;
    //   308: invokestatic 453	com/baidu/mobula/reportsdk/MobulaConfig:getLastModified	(Landroid/content/Context;)J
    //   311: lstore 6
    //   313: aload_0
    //   314: aload_1
    //   315: aload 8
    //   317: aload 9
    //   319: lload 6
    //   321: invokespecial 455	com/baidu/mobula/reportsdk/MobulaCore:pushToServer	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    //   324: ifeq -196 -> 128
    //   327: aload_0
    //   328: getfield 126	com/baidu/mobula/reportsdk/MobulaCore:mContext	Landroid/content/Context;
    //   331: invokevirtual 397	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   334: aload_0
    //   335: getfield 126	com/baidu/mobula/reportsdk/MobulaCore:mContext	Landroid/content/Context;
    //   338: iconst_4
    //   339: invokestatic 403	com/baidu/mobula/reportsdk/MobulaCacheProvider:getUriByType	(Landroid/content/Context;I)Landroid/net/Uri;
    //   342: ldc_w 457
    //   345: iconst_1
    //   346: anewarray 181	java/lang/String
    //   349: dup
    //   350: iconst_0
    //   351: lload 4
    //   353: invokestatic 298	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   356: aastore
    //   357: invokevirtual 461	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   360: pop
    //   361: new 219	java/lang/StringBuilder
    //   364: dup
    //   365: ldc_w 463
    //   368: invokespecial 224	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   371: aload 17
    //   373: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   376: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   379: ldc_w 465
    //   382: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   385: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   388: astore_1
    //   389: aload_0
    //   390: getfield 126	com/baidu/mobula/reportsdk/MobulaCore:mContext	Landroid/content/Context;
    //   393: invokevirtual 397	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   396: aload_0
    //   397: getfield 126	com/baidu/mobula/reportsdk/MobulaCore:mContext	Landroid/content/Context;
    //   400: iconst_4
    //   401: invokestatic 403	com/baidu/mobula/reportsdk/MobulaCacheProvider:getUriByType	(Landroid/content/Context;I)Landroid/net/Uri;
    //   404: aload_1
    //   405: aconst_null
    //   406: invokevirtual 461	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   409: istore_2
    //   410: ldc 37
    //   412: new 219	java/lang/StringBuilder
    //   415: dup
    //   416: ldc_w 467
    //   419: invokespecial 224	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   422: iload_2
    //   423: invokevirtual 371	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   426: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   429: invokestatic 235	com/baidu/mobula/reportsdk/LogHelper:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   432: aload_0
    //   433: getfield 126	com/baidu/mobula/reportsdk/MobulaCore:mContext	Landroid/content/Context;
    //   436: lconst_1
    //   437: lload 6
    //   439: ladd
    //   440: invokestatic 471	com/baidu/mobula/reportsdk/MobulaConfig:setLastModified	(Landroid/content/Context;J)V
    //   443: return
    //   444: astore_1
    //   445: invokestatic 375	com/baidu/mobula/reportsdk/LogHelper:isLogEnabled	()Z
    //   448: ifeq -320 -> 128
    //   451: ldc 37
    //   453: ldc_w 473
    //   456: aload_1
    //   457: invokestatic 385	com/baidu/mobula/reportsdk/LogHelper:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   460: return
    //   461: aload 9
    //   463: astore 10
    //   465: aload_1
    //   466: astore 12
    //   468: aload 8
    //   470: astore 11
    //   472: aload 9
    //   474: iconst_0
    //   475: invokeinterface 477 2 0
    //   480: lstore 6
    //   482: aload 9
    //   484: astore 10
    //   486: aload_1
    //   487: astore 12
    //   489: aload 8
    //   491: astore 11
    //   493: aload 9
    //   495: iconst_1
    //   496: invokeinterface 481 2 0
    //   501: astore 19
    //   503: aload 9
    //   505: astore 10
    //   507: aload_1
    //   508: astore 12
    //   510: aload 8
    //   512: astore 11
    //   514: aload 9
    //   516: iconst_2
    //   517: invokeinterface 484 2 0
    //   522: astore 15
    //   524: aload 9
    //   526: astore 10
    //   528: aload_1
    //   529: astore 12
    //   531: aload 8
    //   533: astore 11
    //   535: aload 9
    //   537: iconst_3
    //   538: invokeinterface 484 2 0
    //   543: astore 16
    //   545: aload 8
    //   547: astore 13
    //   549: aload 8
    //   551: ifnonnull +275 -> 826
    //   554: aload 15
    //   556: astore 13
    //   558: goto +268 -> 826
    //   561: aload 14
    //   563: astore_1
    //   564: aload 13
    //   566: astore 8
    //   568: aload 9
    //   570: astore 10
    //   572: aload 14
    //   574: astore 12
    //   576: aload 13
    //   578: astore 11
    //   580: aload 13
    //   582: aload 15
    //   584: invokevirtual 487	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   587: ifeq -392 -> 195
    //   590: aload 14
    //   592: astore_1
    //   593: aload 13
    //   595: astore 8
    //   597: aload 9
    //   599: astore 10
    //   601: aload 14
    //   603: astore 12
    //   605: aload 13
    //   607: astore 11
    //   609: aload 14
    //   611: aload 16
    //   613: invokevirtual 487	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   616: ifeq -421 -> 195
    //   619: aload 9
    //   621: astore 10
    //   623: aload 14
    //   625: astore 12
    //   627: aload 13
    //   629: astore 11
    //   631: aload 18
    //   633: new 237	org/json/JSONObject
    //   636: dup
    //   637: new 181	java/lang/String
    //   640: dup
    //   641: aload 19
    //   643: iconst_3
    //   644: invokestatic 493	android/util/Base64:decode	([BI)[B
    //   647: invokespecial 495	java/lang/String:<init>	([B)V
    //   650: invokespecial 238	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   653: invokevirtual 499	org/json/JSONStringer:value	(Ljava/lang/Object;)Lorg/json/JSONStringer;
    //   656: pop
    //   657: aload 9
    //   659: astore 10
    //   661: aload 14
    //   663: astore 12
    //   665: aload 13
    //   667: astore 11
    //   669: aload 17
    //   671: lload 6
    //   673: invokevirtual 502	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   676: ldc_w 504
    //   679: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   682: pop
    //   683: iconst_1
    //   684: istore_2
    //   685: aload 14
    //   687: astore_1
    //   688: aload 13
    //   690: astore 8
    //   692: goto -497 -> 195
    //   695: astore 13
    //   697: aconst_null
    //   698: astore 9
    //   700: aconst_null
    //   701: astore 8
    //   703: aconst_null
    //   704: astore_1
    //   705: iconst_0
    //   706: istore_2
    //   707: aload 9
    //   709: astore 10
    //   711: ldc 37
    //   713: ldc_w 506
    //   716: aload 13
    //   718: invokestatic 385	com/baidu/mobula/reportsdk/LogHelper:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   721: aload 9
    //   723: ifnull +98 -> 821
    //   726: aload 9
    //   728: invokeinterface 424 1 0
    //   733: ifne +88 -> 821
    //   736: aload 9
    //   738: invokeinterface 427 1 0
    //   743: iconst_1
    //   744: istore_3
    //   745: goto -478 -> 267
    //   748: astore_1
    //   749: aconst_null
    //   750: astore 10
    //   752: aload 10
    //   754: ifnull +20 -> 774
    //   757: aload 10
    //   759: invokeinterface 424 1 0
    //   764: ifne +10 -> 774
    //   767: aload 10
    //   769: invokeinterface 427 1 0
    //   774: aload_1
    //   775: athrow
    //   776: astore_1
    //   777: invokestatic 375	com/baidu/mobula/reportsdk/LogHelper:isLogEnabled	()Z
    //   780: ifeq -652 -> 128
    //   783: ldc 37
    //   785: ldc_w 473
    //   788: aload_1
    //   789: invokestatic 385	com/baidu/mobula/reportsdk/LogHelper:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   792: return
    //   793: astore_1
    //   794: goto -42 -> 752
    //   797: astore 13
    //   799: aconst_null
    //   800: astore 8
    //   802: aconst_null
    //   803: astore_1
    //   804: iconst_0
    //   805: istore_2
    //   806: goto -99 -> 707
    //   809: astore 13
    //   811: aload 12
    //   813: astore 8
    //   815: aload 11
    //   817: astore_1
    //   818: goto -111 -> 707
    //   821: iconst_1
    //   822: istore_3
    //   823: goto -556 -> 267
    //   826: aload_1
    //   827: astore 14
    //   829: aload_1
    //   830: ifnonnull -269 -> 561
    //   833: aload 16
    //   835: astore 14
    //   837: goto -276 -> 561
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	840	0	this	MobulaCore
    //   0	840	1	paramMessage	Message
    //   194	612	2	i	int
    //   260	563	3	j	int
    //   3	349	4	l1	long
    //   311	361	6	l2	long
    //   191	623	8	localObject1	Object
    //   99	638	9	localObject2	Object
    //   131	637	10	localObject3	Object
    //   204	612	11	localObject4	Object
    //   200	612	12	localObject5	Object
    //   547	142	13	localObject6	Object
    //   695	22	13	localException1	Exception
    //   797	1	13	localException2	Exception
    //   809	1	13	localException3	Exception
    //   561	275	14	localObject7	Object
    //   522	61	15	str1	String
    //   543	291	16	str2	String
    //   21	649	17	localStringBuilder	StringBuilder
    //   12	620	18	localJSONStringer	org.json.JSONStringer
    //   501	141	19	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   327	443	444	java/lang/Exception
    //   31	101	695	java/lang/Exception
    //   31	101	748	finally
    //   327	443	776	java/lang/Throwable
    //   133	144	793	finally
    //   148	155	793	finally
    //   182	188	793	finally
    //   206	216	793	finally
    //   227	233	793	finally
    //   472	482	793	finally
    //   493	503	793	finally
    //   514	524	793	finally
    //   535	545	793	finally
    //   580	590	793	finally
    //   609	619	793	finally
    //   631	657	793	finally
    //   669	683	793	finally
    //   711	721	793	finally
    //   133	144	797	java/lang/Exception
    //   148	155	797	java/lang/Exception
    //   182	188	797	java/lang/Exception
    //   206	216	809	java/lang/Exception
    //   227	233	809	java/lang/Exception
    //   472	482	809	java/lang/Exception
    //   493	503	809	java/lang/Exception
    //   514	524	809	java/lang/Exception
    //   535	545	809	java/lang/Exception
    //   580	590	809	java/lang/Exception
    //   609	619	809	java/lang/Exception
    //   631	657	809	java/lang/Exception
    //   669	683	809	java/lang/Exception
  }
  
  public static void setEnvironment(String paramString)
  {
    if ("prod".equals(paramString))
    {
      sStatsUrl = "http://rts.mobula.sdk.duapps.com/orts/rp?";
      sRPBUrl = "http://rts.mobula.sdk.duapps.com/orts/rpb?";
      sSrcUrl = "http://api.mobula.sdk.duapps.com/adunion/slot/getSrcPrio?";
      LogHelper.setLogEnabled(false);
    }
    while ((!"dev".equals(paramString)) && (!"test".equals(paramString))) {
      return;
    }
    sStatsUrl = "http://sandbox.duapps.com:8124/orts/rp?";
    sRPBUrl = "http://sandbox.duapps.com:8124/orts/rpb?";
    sSrcUrl = "http://sandbox.duapps.com:8124/adunion/slot/getSrcPrio?";
    LogHelper.setLogEnabled(true);
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return false;
    case 3: 
      mHandler.removeMessages(3);
      report(paramMessage);
      scheduleTime += 1;
      if (3 > scheduleTime)
      {
        mHandler.sendEmptyMessage(3);
        return true;
      }
      scheduleTime = 0;
      return true;
    }
    mHandler.removeMessages(4);
    mHandler.sendEmptyMessage(3);
    mHandler.sendEmptyMessageDelayed(4, 3600000L);
    return true;
  }
  
  public void reportEvent(String paramString1, String paramString2, int paramInt)
  {
    String str = MobulaLicenseManager.getInstance(mContext).getLicense();
    if ((TextUtils.isEmpty(str)) || (TextUtils.isEmpty(paramString2))) {
      if (LogHelper.isLogEnabled()) {
        LogHelper.d("MobulaReport", "Discard ls=" + str + ";rp=" + paramString2);
      }
    }
    for (;;)
    {
      return;
      if (LogHelper.isLogEnabled()) {
        LogHelper.d("MobulaReport", "rept = " + paramString2);
      }
      ContentValues localContentValues = new ContentValues(3);
      localContentValues.put("ts", Long.valueOf(System.currentTimeMillis()));
      localContentValues.put("content", Base64.encode(paramString2.getBytes(), 3));
      localContentValues.put("ls", str);
      localContentValues.put("stype", paramString1);
      try
      {
        mContext.getContentResolver().insert(MobulaCacheProvider.getUriByType(mContext, 4), localContentValues);
        if (paramInt != 0) {
          continue;
        }
        mHandler.sendEmptyMessageDelayed(3, 5000L);
        return;
      }
      catch (Exception paramString1)
      {
        for (;;)
        {
          LogHelper.d("MobulaReport", "mDatabase reportEvent() exception: ", paramString1);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobula.reportsdk.MobulaCore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */