package com.baidu.mobstat;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

public class CooperService
  extends bf
  implements ICooperService
{
  private static CooperService a;
  private bo b = new bo();
  
  static CooperService a()
  {
    try
    {
      if (a == null) {
        a = new CooperService();
      }
      CooperService localCooperService = a;
      return localCooperService;
    }
    finally {}
  }
  
  private static String a(Context paramContext)
  {
    String str = cu.i(paramContext);
    paramContext = str;
    if (!TextUtils.isEmpty(str)) {
      paramContext = str.replaceAll(":", "");
    }
    return paramContext;
  }
  
  private static String a(String paramString, Context paramContext)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (!paramString.equals("000000000000000"));
    return a(paramContext);
  }
  
  private static String b(Context paramContext)
  {
    String str = cu.j(paramContext);
    paramContext = str;
    if (!TextUtils.isEmpty(str)) {
      paramContext = str.replaceAll(":", "");
    }
    return paramContext;
  }
  
  private String c(Context paramContext)
  {
    try
    {
      cr.a("----------getAppChannel");
      if ((b.m == null) || (b.m.equals("")))
      {
        boolean bool = be.a().g(paramContext);
        cr.a("----------setChannelWithCode=" + bool);
        if (bool)
        {
          b.m = be.a().f(paramContext);
          cr.a("----------mHeadObject.channel=" + b.m);
        }
        if ((!bool) || (b.m == null) || (b.m.equals(""))) {
          b.m = cu.a(paramContext, "BaiduMobAd_CHANNEL");
        }
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        cr.a(paramContext);
      }
    }
    return b.m;
  }
  
  public boolean checkCellLocationSetting(Context paramContext)
  {
    return "true".equalsIgnoreCase(cu.a(paramContext, "BaiduMobAd_CELL_LOCATION"));
  }
  
  public boolean checkGPSLocationSetting(Context paramContext)
  {
    return "true".equals(cu.a(paramContext, "BaiduMobAd_GPS_LOCATION"));
  }
  
  public boolean checkWifiLocationSetting(Context paramContext)
  {
    return "true".equalsIgnoreCase(cu.a(paramContext, "BaiduMobAd_WIFI_LOCATION"));
  }
  
  public String getAppChannel(Context paramContext)
  {
    return c(paramContext);
  }
  
  public String getAppKey(Context paramContext)
  {
    if (b.e == null) {
      b.e = cu.a(paramContext, "BaiduMobAd_STAT_ID");
    }
    return b.e;
  }
  
  public int getAppVersionCode(Context paramContext)
  {
    if (b.h == -1) {
      b.h = cu.e(paramContext);
    }
    return b.h;
  }
  
  public String getAppVersionName(Context paramContext)
  {
    if (TextUtils.isEmpty(b.i)) {
      b.i = cu.f(paramContext);
    }
    return b.i;
  }
  
  public String getCUID(Context paramContext, boolean paramBoolean)
  {
    if (b.g == null)
    {
      b.g = be.a().e(paramContext);
      if ((b.g != null) && (!"".equalsIgnoreCase(b.g))) {}
    }
    try
    {
      b.g = cw.a(paramContext);
      Matcher localMatcher = Pattern.compile("\\s*|\t|\r|\n").matcher(b.g);
      b.g = localMatcher.replaceAll("");
      b.g = getSecretValue(b.g);
      be.a().b(paramContext, b.g);
      if (paramBoolean) {
        return b.g;
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        cr.c(paramContext.getMessage());
      }
      try
      {
        paramContext = b.g;
        if (!TextUtils.isEmpty(paramContext))
        {
          paramContext = new String(ck.b(2, cm.a(paramContext.getBytes())));
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
      }
    }
    return null;
  }
  
  /* Error */
  public String getDeviceId(TelephonyManager paramTelephonyManager, Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 19	com/baidu/mobstat/CooperService:b	Lcom/baidu/mobstat/bo;
    //   4: getfield 211	com/baidu/mobstat/bo:j	Ljava/lang/String;
    //   7: astore_3
    //   8: aload_3
    //   9: invokestatic 36	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   12: ifne +11 -> 23
    //   15: aload_0
    //   16: getfield 19	com/baidu/mobstat/CooperService:b	Lcom/baidu/mobstat/bo;
    //   19: getfield 211	com/baidu/mobstat/bo:j	Ljava/lang/String;
    //   22: areturn
    //   23: invokestatic 77	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   26: aload_2
    //   27: invokevirtual 213	com/baidu/mobstat/be:i	(Landroid/content/Context;)Z
    //   30: ifeq +23 -> 53
    //   33: aload_0
    //   34: getfield 19	com/baidu/mobstat/CooperService:b	Lcom/baidu/mobstat/bo;
    //   37: aload_0
    //   38: aload_2
    //   39: invokevirtual 216	com/baidu/mobstat/CooperService:getMacIDForTv	(Landroid/content/Context;)Ljava/lang/String;
    //   42: putfield 211	com/baidu/mobstat/bo:j	Ljava/lang/String;
    //   45: aload_0
    //   46: getfield 19	com/baidu/mobstat/CooperService:b	Lcom/baidu/mobstat/bo;
    //   49: getfield 211	com/baidu/mobstat/bo:j	Ljava/lang/String;
    //   52: areturn
    //   53: aload_1
    //   54: ifnonnull +11 -> 65
    //   57: aload_0
    //   58: getfield 19	com/baidu/mobstat/CooperService:b	Lcom/baidu/mobstat/bo;
    //   61: getfield 211	com/baidu/mobstat/bo:j	Ljava/lang/String;
    //   64: areturn
    //   65: ldc -95
    //   67: invokestatic 167	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   70: astore 4
    //   72: aload_1
    //   73: invokevirtual 220	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   76: astore 5
    //   78: aload_3
    //   79: astore_1
    //   80: aload 5
    //   82: ifnull +24 -> 106
    //   85: aload 4
    //   87: aload 5
    //   89: invokevirtual 171	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   92: ldc 40
    //   94: invokevirtual 176	java/util/regex/Matcher:replaceAll	(Ljava/lang/String;)Ljava/lang/String;
    //   97: astore_1
    //   98: aload_1
    //   99: aload_2
    //   100: invokestatic 222	com/baidu/mobstat/CooperService:a	(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    //   103: astore_3
    //   104: aload_3
    //   105: astore_1
    //   106: aload_1
    //   107: astore_3
    //   108: aload_1
    //   109: ifnonnull +8 -> 117
    //   112: aload_2
    //   113: invokestatic 55	com/baidu/mobstat/CooperService:a	(Landroid/content/Context;)Ljava/lang/String;
    //   116: astore_3
    //   117: aload_3
    //   118: astore_1
    //   119: aload_2
    //   120: invokestatic 225	com/baidu/mobstat/cu:q	(Landroid/content/Context;)Z
    //   123: ifeq +26 -> 149
    //   126: aload_3
    //   127: invokestatic 36	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   130: ifne +14 -> 144
    //   133: aload_3
    //   134: astore_1
    //   135: aload_3
    //   136: ldc 49
    //   138: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   141: ifeq +8 -> 149
    //   144: aload_2
    //   145: invokestatic 227	com/baidu/mobstat/CooperService:b	(Landroid/content/Context;)Ljava/lang/String;
    //   148: astore_1
    //   149: aload_1
    //   150: invokestatic 36	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   153: ifne +14 -> 167
    //   156: aload_1
    //   157: astore_3
    //   158: aload_1
    //   159: ldc 49
    //   161: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   164: ifeq +11 -> 175
    //   167: invokestatic 77	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   170: aload_2
    //   171: invokevirtual 230	com/baidu/mobstat/be:d	(Landroid/content/Context;)Ljava/lang/String;
    //   174: astore_3
    //   175: aload_3
    //   176: invokestatic 36	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   179: ifne +14 -> 193
    //   182: aload_3
    //   183: astore_1
    //   184: aload_3
    //   185: ldc 49
    //   187: invokevirtual 53	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   190: ifeq +90 -> 280
    //   193: new 83	java/lang/StringBuilder
    //   196: dup
    //   197: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   200: new 232	java/util/Date
    //   203: dup
    //   204: invokespecial 233	java/util/Date:<init>	()V
    //   207: invokevirtual 237	java/util/Date:getTime	()J
    //   210: invokevirtual 240	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   213: ldc 40
    //   215: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   221: astore_1
    //   222: new 83	java/lang/StringBuilder
    //   225: dup
    //   226: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   229: ldc -14
    //   231: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: aload_1
    //   235: invokevirtual 246	java/lang/String:hashCode	()I
    //   238: invokevirtual 249	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   241: ldc -5
    //   243: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   249: astore_1
    //   250: invokestatic 77	com/baidu/mobstat/be:a	()Lcom/baidu/mobstat/be;
    //   253: aload_2
    //   254: aload_1
    //   255: invokevirtual 253	com/baidu/mobstat/be:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   258: new 83	java/lang/StringBuilder
    //   261: dup
    //   262: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   265: ldc -1
    //   267: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: aload_1
    //   271: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: invokestatic 68	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   280: aload_0
    //   281: getfield 19	com/baidu/mobstat/CooperService:b	Lcom/baidu/mobstat/bo;
    //   284: aload_1
    //   285: putfield 211	com/baidu/mobstat/bo:j	Ljava/lang/String;
    //   288: aload_0
    //   289: getfield 19	com/baidu/mobstat/CooperService:b	Lcom/baidu/mobstat/bo;
    //   292: aload_0
    //   293: aload_0
    //   294: getfield 19	com/baidu/mobstat/CooperService:b	Lcom/baidu/mobstat/bo;
    //   297: getfield 211	com/baidu/mobstat/bo:j	Ljava/lang/String;
    //   300: invokevirtual 179	com/baidu/mobstat/CooperService:getSecretValue	(Ljava/lang/String;)Ljava/lang/String;
    //   303: putfield 211	com/baidu/mobstat/bo:j	Ljava/lang/String;
    //   306: new 83	java/lang/StringBuilder
    //   309: dup
    //   310: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   313: ldc_w 257
    //   316: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   319: aload_0
    //   320: getfield 19	com/baidu/mobstat/CooperService:b	Lcom/baidu/mobstat/bo;
    //   323: getfield 211	com/baidu/mobstat/bo:j	Ljava/lang/String;
    //   326: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   332: invokestatic 68	com/baidu/mobstat/cr:a	(Ljava/lang/String;)V
    //   335: aload_0
    //   336: getfield 19	com/baidu/mobstat/CooperService:b	Lcom/baidu/mobstat/bo;
    //   339: getfield 211	com/baidu/mobstat/bo:j	Ljava/lang/String;
    //   342: areturn
    //   343: astore 4
    //   345: aload_3
    //   346: astore_1
    //   347: aload 4
    //   349: astore_3
    //   350: aload_3
    //   351: invokestatic 110	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   354: goto -248 -> 106
    //   357: astore_1
    //   358: aload_1
    //   359: invokestatic 110	com/baidu/mobstat/cr:a	(Ljava/lang/Throwable;)V
    //   362: aload_3
    //   363: astore_1
    //   364: goto -215 -> 149
    //   367: astore_3
    //   368: goto -18 -> 350
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	371	0	this	CooperService
    //   0	371	1	paramTelephonyManager	TelephonyManager
    //   0	371	2	paramContext	Context
    //   7	356	3	localObject	Object
    //   367	1	3	localException1	Exception
    //   70	16	4	localPattern	Pattern
    //   343	5	4	localException2	Exception
    //   76	12	5	str	String
    // Exception table:
    //   from	to	target	type
    //   72	78	343	java/lang/Exception
    //   85	98	343	java/lang/Exception
    //   144	149	357	java/lang/Exception
    //   98	104	367	java/lang/Exception
  }
  
  public bo getHeadObject()
  {
    return b;
  }
  
  public String getHost()
  {
    return "http://hmma.baidu.com/app.gif";
  }
  
  public String getLinkedWay(Context paramContext)
  {
    if (TextUtils.isEmpty(b.s)) {
      b.s = cu.n(paramContext);
    }
    return b.s;
  }
  
  public String getMTJSDKVersion()
  {
    return "3.7.3.8";
  }
  
  public String getMacID(Context paramContext)
  {
    String str;
    if ((b.t == null) || ("".equals(b.t)))
    {
      str = be.a().h(paramContext);
      if (str != null) {
        break label124;
      }
      str = a(paramContext);
      if (str != null)
      {
        b.t = getSecretValue(str);
        cr.a("加密=mHeadObject.mHeadObject.macAddr=" + b.t);
        if (!"".equals(b.t)) {
          be.a().d(paramContext, b.t);
        }
      }
    }
    for (;;)
    {
      return b.t;
      label124:
      b.t = str;
    }
  }
  
  public String getMacIDForTv(Context paramContext)
  {
    Object localObject;
    if ((b.u == null) || ("".equals(b.u)))
    {
      localObject = be.a().j(paramContext);
      if (localObject != null) {
        break label144;
      }
      String str = cu.a();
      if (str != null)
      {
        localObject = str;
        if (!str.equals("")) {}
      }
      else
      {
        localObject = cu.c(2, paramContext);
      }
      if (localObject != null)
      {
        b.u = getSecretValue((String)localObject);
        cr.a("加密=macAddr=" + b.u);
        if (!"".equals(b.t)) {
          be.a().e(paramContext, b.u);
        }
      }
    }
    for (;;)
    {
      return b.u;
      label144:
      b.u = ((String)localObject);
    }
  }
  
  public String getManufacturer()
  {
    if (TextUtils.isEmpty(b.p)) {
      b.p = Build.MANUFACTURER;
    }
    return b.p;
  }
  
  public String getOSSysVersion()
  {
    if (TextUtils.isEmpty(b.d)) {
      b.d = Build.VERSION.RELEASE;
    }
    return b.d;
  }
  
  public String getOSVersion()
  {
    if (TextUtils.isEmpty(b.c)) {
      b.c = Integer.toString(Build.VERSION.SDK_INT);
    }
    return b.c;
  }
  
  public String getOperator(TelephonyManager paramTelephonyManager)
  {
    if (TextUtils.isEmpty(b.n)) {
      b.n = paramTelephonyManager.getNetworkOperator();
    }
    return b.n;
  }
  
  public String getPhoneModel()
  {
    if (TextUtils.isEmpty(b.o)) {
      b.o = Build.MODEL;
    }
    return b.o;
  }
  
  public String getSecretValue(String paramString)
  {
    return ck.c(2, paramString.getBytes());
  }
  
  public int getTagValue()
  {
    return 2;
  }
  
  public void installHeader(Context paramContext, JSONObject paramJSONObject)
  {
    b.a(paramContext, paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.CooperService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */