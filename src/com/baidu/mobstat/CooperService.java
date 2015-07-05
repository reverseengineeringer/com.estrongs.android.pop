package com.baidu.mobstat;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import com.baidu.mobstat.util.a;
import com.baidu.mobstat.util.d;
import com.baidu.mobstat.util.e;
import java.util.Date;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

public class CooperService
  extends s
  implements ICooperService
{
  private static ae a = new ae();
  private static CooperService b;
  private static JSONObject c = new JSONObject();
  private static String d = "activehead";
  private static HashMap<String, Object> e = new HashMap();
  
  static CooperService a()
  {
    if (b == null) {
      b = new CooperService();
    }
    return b;
  }
  
  private static String a(Context paramContext)
  {
    String str = aw.g(paramContext);
    paramContext = str;
    if (str != null) {
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
    paramString = a(paramContext);
    e.a("sdkstat", "imei=null,mac=" + paramString);
    return paramString;
  }
  
  static ae b()
  {
    return a;
  }
  
  /* Error */
  private String b(Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 102	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   4: getfield 107	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   7: astore_1
    //   8: aload_1
    //   9: invokestatic 113	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   12: ifeq +8 -> 20
    //   15: ldc 56
    //   17: astore_1
    //   18: aload_1
    //   19: areturn
    //   20: new 115	java/util/zip/ZipFile
    //   23: dup
    //   24: aload_1
    //   25: invokespecial 118	java/util/zip/ZipFile:<init>	(Ljava/lang/String;)V
    //   28: astore_3
    //   29: aload_3
    //   30: astore_1
    //   31: aload_3
    //   32: invokevirtual 122	java/util/zip/ZipFile:entries	()Ljava/util/Enumeration;
    //   35: astore 5
    //   37: aload_3
    //   38: astore_1
    //   39: aload 5
    //   41: invokeinterface 128 1 0
    //   46: ifeq +289 -> 335
    //   49: aload_3
    //   50: astore_1
    //   51: aload 5
    //   53: invokeinterface 132 1 0
    //   58: checkcast 134	java/util/zip/ZipEntry
    //   61: astore 4
    //   63: aload_3
    //   64: astore_1
    //   65: aload 4
    //   67: invokevirtual 137	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   70: ldc -117
    //   72: invokevirtual 143	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   75: ifeq -38 -> 37
    //   78: aload 4
    //   80: ifnonnull +26 -> 106
    //   83: ldc 56
    //   85: astore_1
    //   86: aload_3
    //   87: ifnull -69 -> 18
    //   90: aload_3
    //   91: invokevirtual 146	java/util/zip/ZipFile:close	()V
    //   94: ldc 56
    //   96: areturn
    //   97: astore_1
    //   98: aload_1
    //   99: invokestatic 149	com/baidu/mobstat/util/e:b	(Ljava/lang/Throwable;)I
    //   102: pop
    //   103: ldc 56
    //   105: areturn
    //   106: aload_3
    //   107: astore_1
    //   108: aload_3
    //   109: aload 4
    //   111: invokevirtual 153	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   114: astore 4
    //   116: aload_3
    //   117: astore_1
    //   118: invokestatic 159	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   121: invokevirtual 163	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   124: aload 4
    //   126: invokevirtual 169	javax/xml/parsers/DocumentBuilder:parse	(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    //   129: ldc -85
    //   131: invokeinterface 177 2 0
    //   136: astore 4
    //   138: aload_3
    //   139: astore_1
    //   140: aload 4
    //   142: invokeinterface 183 1 0
    //   147: ifle +105 -> 252
    //   150: aload_3
    //   151: astore_1
    //   152: aload 4
    //   154: iconst_0
    //   155: invokeinterface 187 2 0
    //   160: invokeinterface 193 1 0
    //   165: astore 4
    //   167: iconst_0
    //   168: istore_2
    //   169: aload_3
    //   170: astore_1
    //   171: iload_2
    //   172: aload 4
    //   174: invokeinterface 183 1 0
    //   179: if_icmpge +73 -> 252
    //   182: aload_3
    //   183: astore_1
    //   184: aload 4
    //   186: iload_2
    //   187: invokeinterface 187 2 0
    //   192: astore 5
    //   194: aload_3
    //   195: astore_1
    //   196: aload 5
    //   198: invokeinterface 196 1 0
    //   203: ldc -58
    //   205: invokevirtual 143	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   208: ifeq +37 -> 245
    //   211: aload_3
    //   212: astore_1
    //   213: aload 5
    //   215: invokeinterface 201 1 0
    //   220: astore 4
    //   222: aload 4
    //   224: astore_1
    //   225: aload_3
    //   226: ifnull -208 -> 18
    //   229: aload_3
    //   230: invokevirtual 146	java/util/zip/ZipFile:close	()V
    //   233: aload 4
    //   235: areturn
    //   236: astore_1
    //   237: aload_1
    //   238: invokestatic 149	com/baidu/mobstat/util/e:b	(Ljava/lang/Throwable;)I
    //   241: pop
    //   242: aload 4
    //   244: areturn
    //   245: iload_2
    //   246: iconst_1
    //   247: iadd
    //   248: istore_2
    //   249: goto -80 -> 169
    //   252: aload_3
    //   253: ifnull +7 -> 260
    //   256: aload_3
    //   257: invokevirtual 146	java/util/zip/ZipFile:close	()V
    //   260: ldc 56
    //   262: areturn
    //   263: astore_1
    //   264: aload_1
    //   265: invokestatic 149	com/baidu/mobstat/util/e:b	(Ljava/lang/Throwable;)I
    //   268: pop
    //   269: goto -9 -> 260
    //   272: astore 4
    //   274: aconst_null
    //   275: astore_3
    //   276: aload_3
    //   277: astore_1
    //   278: aload 4
    //   280: invokestatic 149	com/baidu/mobstat/util/e:b	(Ljava/lang/Throwable;)I
    //   283: pop
    //   284: aload_3
    //   285: ifnull -25 -> 260
    //   288: aload_3
    //   289: invokevirtual 146	java/util/zip/ZipFile:close	()V
    //   292: goto -32 -> 260
    //   295: astore_1
    //   296: aload_1
    //   297: invokestatic 149	com/baidu/mobstat/util/e:b	(Ljava/lang/Throwable;)I
    //   300: pop
    //   301: goto -41 -> 260
    //   304: astore_3
    //   305: aconst_null
    //   306: astore_1
    //   307: aload_1
    //   308: ifnull +7 -> 315
    //   311: aload_1
    //   312: invokevirtual 146	java/util/zip/ZipFile:close	()V
    //   315: aload_3
    //   316: athrow
    //   317: astore_1
    //   318: aload_1
    //   319: invokestatic 149	com/baidu/mobstat/util/e:b	(Ljava/lang/Throwable;)I
    //   322: pop
    //   323: goto -8 -> 315
    //   326: astore_3
    //   327: goto -20 -> 307
    //   330: astore 4
    //   332: goto -56 -> 276
    //   335: aconst_null
    //   336: astore 4
    //   338: goto -260 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	341	0	this	CooperService
    //   0	341	1	paramContext	Context
    //   168	81	2	i	int
    //   28	261	3	localZipFile	java.util.zip.ZipFile
    //   304	12	3	localObject1	Object
    //   326	1	3	localObject2	Object
    //   61	182	4	localObject3	Object
    //   272	7	4	localException1	Exception
    //   330	1	4	localException2	Exception
    //   336	1	4	localObject4	Object
    //   35	179	5	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   90	94	97	java/io/IOException
    //   229	233	236	java/io/IOException
    //   256	260	263	java/io/IOException
    //   20	29	272	java/lang/Exception
    //   288	292	295	java/io/IOException
    //   20	29	304	finally
    //   311	315	317	java/io/IOException
    //   31	37	326	finally
    //   39	49	326	finally
    //   51	63	326	finally
    //   65	78	326	finally
    //   108	116	326	finally
    //   118	138	326	finally
    //   140	150	326	finally
    //   152	167	326	finally
    //   171	182	326	finally
    //   184	194	326	finally
    //   196	211	326	finally
    //   213	222	326	finally
    //   278	284	326	finally
    //   31	37	330	java/lang/Exception
    //   39	49	330	java/lang/Exception
    //   51	63	330	java/lang/Exception
    //   65	78	330	java/lang/Exception
    //   108	116	330	java/lang/Exception
    //   118	138	330	java/lang/Exception
    //   140	150	330	java/lang/Exception
    //   152	167	330	java/lang/Exception
    //   171	182	330	java/lang/Exception
    //   184	194	330	java/lang/Exception
    //   196	211	330	java/lang/Exception
    //   213	222	330	java/lang/Exception
  }
  
  private String c(Context paramContext)
  {
    try
    {
      e.a("sdkstat", "----------getAppChannel");
      if ((al == null) || (al.equals("")))
      {
        boolean bool = r.a().h(paramContext);
        e.a("sdkstat", "----------setChannelWithCode=" + bool);
        if (bool)
        {
          al = r.a().g(paramContext);
          e.a("sdkstat", "----------mHeadObject.channel=" + al);
        }
        if ((!bool) || (al == null) || (al.equals(""))) {
          al = aw.a(paramContext, "BaiduMobAd_CHANNEL");
        }
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        e.a(paramContext);
      }
    }
    return al;
  }
  
  public static String getOSSysVersion()
  {
    if ((ac == null) || ("".equals(ac))) {
      ac = Build.VERSION.RELEASE;
    }
    return ac;
  }
  
  public boolean checkCellLocationSetting(Context paramContext)
  {
    paramContext = aw.a(paramContext, "BaiduMobAd_CELL_LOCATION");
    return (paramContext == null) || (!paramContext.toLowerCase().equals("false"));
  }
  
  public boolean checkGPSLocationSetting(Context paramContext)
  {
    paramContext = aw.a(paramContext, "BaiduMobAd_GPS_LOCATION");
    return (paramContext == null) || (!paramContext.toLowerCase().equals("false"));
  }
  
  public boolean checkWifiLocationSetting(Context paramContext)
  {
    paramContext = aw.a(paramContext, "BaiduMobAd_WIFI_LOCATION");
    return (paramContext == null) || (!paramContext.toLowerCase().equals("false"));
  }
  
  public String getAppChannel(Context paramContext)
  {
    if (t.c) {
      return b(paramContext);
    }
    return c(paramContext);
  }
  
  public String getAppKey()
  {
    return ad;
  }
  
  public String getAppKey(Context paramContext)
  {
    if (ad == null) {
      ad = aw.a(paramContext, "BaiduMobAd_STAT_ID");
    }
    return ad;
  }
  
  public int getAppVersionCode(Context paramContext)
  {
    if (ag == -1) {
      ag = aw.c(paramContext);
    }
    return ag;
  }
  
  public String getAppVersionName(Context paramContext)
  {
    if ((ah == null) || ("".equals(ah))) {
      ah = aw.d(paramContext);
    }
    return ah;
  }
  
  public String getCUID(Context paramContext, boolean paramBoolean)
  {
    if (af == null)
    {
      af = r.a().f(paramContext);
      if ((af != null) && (!"".equalsIgnoreCase(af))) {}
    }
    try
    {
      af = c.a(paramContext);
      Matcher localMatcher = Pattern.compile("\\s*|\t|\r|\n").matcher(af);
      af = localMatcher.replaceAll("");
      af = getSecretValue(af);
      r.a().b(paramContext, af);
      if (paramBoolean) {
        return af;
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        e.c(new Object[] { "sdkstat", paramContext.getMessage() });
      }
      try
      {
        if (af != null)
        {
          paramContext = new String(a.b(t.e, d.a(af.getBytes())));
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
  
  public String getChannel()
  {
    return al;
  }
  
  public String getDeviceId(TelephonyManager paramTelephonyManager, Context paramContext)
  {
    if (paramTelephonyManager == null) {
      return ai;
    }
    Object localObject = ai;
    Pattern localPattern;
    if ((localObject == null) || (((String)localObject).equals("")))
    {
      if (r.a().j(paramContext))
      {
        ai = getMacIDForTv(paramContext);
        return ai;
      }
      localPattern = Pattern.compile("\\s*|\t|\r|\n");
    }
    try
    {
      paramTelephonyManager = localPattern.matcher(paramTelephonyManager.getDeviceId()).replaceAll("");
      localObject = paramTelephonyManager;
      paramTelephonyManager = a(paramTelephonyManager, paramContext);
      localObject = paramTelephonyManager;
    }
    catch (Exception paramTelephonyManager)
    {
      try
      {
        paramTelephonyManager = new String(a.b(t.e, d.a(ai.getBytes())));
        e.a("sdkstat", "deviceId=" + paramTelephonyManager);
        return ai;
        paramTelephonyManager = paramTelephonyManager;
        e.a(paramTelephonyManager);
      }
      catch (Exception paramTelephonyManager)
      {
        for (;;)
        {
          paramTelephonyManager.printStackTrace();
        }
      }
    }
    paramTelephonyManager = (TelephonyManager)localObject;
    if (localObject == null) {
      paramTelephonyManager = a(paramContext);
    }
    if (paramTelephonyManager != null)
    {
      localObject = paramTelephonyManager;
      if (!paramTelephonyManager.equals("000000000000000")) {}
    }
    else
    {
      localObject = r.a().e(paramContext);
    }
    if (localObject != null)
    {
      paramTelephonyManager = (TelephonyManager)localObject;
      if (!((String)localObject).equals("000000000000000")) {}
    }
    else
    {
      paramTelephonyManager = new Date().getTime() + "";
      paramTelephonyManager = "hol" + paramTelephonyManager.hashCode() + "mes";
      r.a().a(paramContext, paramTelephonyManager);
      e.a("sdkstat", "设备id为空，系统生成id =" + paramTelephonyManager);
    }
    ai = paramTelephonyManager;
    ai = getSecretValue(ai);
    e.a("sdkstat", "加密=mHeadObject.deviceId=" + ai);
  }
  
  public String getHost()
  {
    return "http://hmma.baidu.com/app.gif";
  }
  
  public String getLinkedWay(Context paramContext)
  {
    if ((aq == null) || ("".equals(aq))) {
      aq = aw.k(paramContext);
    }
    return aq;
  }
  
  public String getMTJSDKVersion()
  {
    return t.a;
  }
  
  public String getMacID(Context paramContext)
  {
    String str;
    if ((ar == null) || ("".equals(ar)))
    {
      str = r.a().i(paramContext);
      if (str != null) {
        break label117;
      }
      str = a(paramContext);
      if (str != null)
      {
        ar = getSecretValue(str);
        e.a("sdkstat", "加密=mHeadObject.mHeadObject.macAddr=" + ar);
        if (ar != "") {
          r.a().d(paramContext, ar);
        }
      }
    }
    for (;;)
    {
      return ar;
      label117:
      ar = str;
    }
  }
  
  public String getMacIDForTv(Context paramContext)
  {
    Object localObject;
    if ((as == null) || ("".equals(as)))
    {
      localObject = r.a().k(paramContext);
      if (localObject != null) {
        break label136;
      }
      String str = aw.a();
      if (str != null)
      {
        localObject = str;
        if (!str.equals("")) {}
      }
      else
      {
        localObject = aw.h(paramContext);
      }
      if (localObject != null)
      {
        as = getSecretValue((String)localObject);
        e.a("sdkstat", "加密=macAddr=" + as);
        if (as != "") {
          r.a().e(paramContext, as);
        }
      }
    }
    for (;;)
    {
      return as;
      label136:
      as = ((String)localObject);
    }
  }
  
  public String getOSVersion()
  {
    if ((ab == null) || ("".equals(ab))) {
      ab = Build.VERSION.SDK;
    }
    return ab;
  }
  
  public String getOperator(TelephonyManager paramTelephonyManager)
  {
    if ((am == null) || ("".equals(am))) {
      am = paramTelephonyManager.getNetworkOperator();
    }
    return am;
  }
  
  public String getPhoneModel()
  {
    if ((an == null) || ("".equals(an))) {
      an = Build.MODEL;
    }
    return an;
  }
  
  public String getPluginVersion()
  {
    return "1.2.0";
  }
  
  public String getSecretValue(String paramString)
  {
    str = null;
    try
    {
      paramString = d.a(a.a(t.e, paramString.getBytes()), "utf-8");
      str = paramString;
      e.a("sdkstat", "secretValue=" + paramString);
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = str;
      }
    }
    str = paramString;
    if (paramString == null) {
      str = "";
    }
    return str;
  }
  
  public int getTagValue()
  {
    return t.b;
  }
  
  public void installHeader(Context paramContext, JSONObject paramJSONObject)
  {
    a.a(paramContext, paramJSONObject);
  }
  
  public boolean isHeadObjectIsNull()
  {
    return a == null;
  }
  
  public void setChannel(String paramString)
  {
    al = paramString;
  }
  
  public void setappKey(String paramString)
  {
    ad = paramString;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.CooperService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */