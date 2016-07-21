package com.baidu.resultcard;

import android.content.Context;
import android.content.IntentFilter;
import android.content.IntentFilter.MalformedMimeTypeException;
import android.text.TextUtils;
import com.baidu.mobula.reportsdk.MobulaCore;
import com.baidu.resultcard.common.PackageChangeReceiver;
import com.baidu.resultcard.common.PhotoReceiver;
import com.baidu.resultcard.common.PhotoScanner;
import com.baidu.resultcard.view.BaseResultCardView;
import com.baidu.scenery.TestGetJson;
import com.baidu.scenery.utils.LogHelper;
import com.dianxinos.library.notify.c;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;

public class CardLibrary
{
  private static final boolean DEBUG = ;
  public static final String TAG = "SDKCard";
  private static Context sAppContext;
  private static String sBdct;
  public static int sCommonCardSid;
  public static boolean sDebug;
  public static int sMainCardSid;
  private static WeakReference<BaseResultCardView> sMutexReference;
  
  public static Context getAppContext()
  {
    return sAppContext;
  }
  
  public static String getBdct()
  {
    if (sBdct != null) {
      return sBdct;
    }
    return "a";
  }
  
  public static Map<CardLibrary.CardType, BaseResultCardView> getCards()
  {
    Object localObject = getAppContext();
    HashMap localHashMap = new HashMap();
    BaseResultCardView localBaseResultCardView = MainCardManager.getMainView((Context)localObject);
    localHashMap.put(CardLibrary.CardType.CARD_MAIN, localBaseResultCardView);
    localObject = CommonCardManager.getCommonCardView((Context)localObject, localBaseResultCardView.getPkgName());
    localHashMap.put(CardLibrary.CardType.CARD_COMMON, localObject);
    return localHashMap;
  }
  
  public static BaseResultCardView getCommonCard()
  {
    Context localContext = getAppContext();
    Object localObject;
    if (sMutexReference != null)
    {
      localObject = (BaseResultCardView)sMutexReference.get();
      if (localObject != null)
      {
        localObject = ((BaseResultCardView)localObject).getPkgName();
        sMutexReference.clear();
        sMutexReference = null;
      }
    }
    for (;;)
    {
      return CommonCardManager.getCommonCardView(localContext, (String)localObject);
      localObject = null;
      break;
      localObject = null;
    }
  }
  
  public static BaseResultCardView getMainCard()
  {
    BaseResultCardView localBaseResultCardView = MainCardManager.getMainView(getAppContext());
    sMutexReference = new WeakReference(localBaseResultCardView);
    return localBaseResultCardView;
  }
  
  public static boolean init(CardLibrary.CardParameter paramCardParameter)
  {
    if ((paramCardParameter == null) || (!paramCardParameter.checkParameters())) {
      return false;
    }
    sAppContext = context.getApplicationContext();
    sBdct = bdct;
    sDebug = debug;
    sMainCardSid = mainCardSid;
    sCommonCardSid = commonCardSid;
    LogHelper.setLogEnabled(sDebug);
    if (DEBUG) {
      LogHelper.d("SDKCard", "CardLibrary:init sDebug=" + sDebug);
    }
    MobulaCore.setEnvironment(mobuleEnv);
    PhotoScanner.getInstance(sAppContext).initPhotoNum();
    registerPictureReceiver(sAppContext);
    registerPackageReceiver(sAppContext);
    return true;
  }
  
  public static void initDataPipe(Context paramContext, String paramString)
  {
    c.a(paramString, new CardLibrary.1(paramString, paramContext));
    if (TextUtils.equals(paramContext.getPackageName(), "com.baidu.sample")) {}
    for (paramString = TestGetJson.getJsonBody(paramContext, "card_json.txt"); TextUtils.isEmpty(paramString); paramString = c.b(paramString)) {
      return;
    }
    storeDataPipeMess(paramContext, paramString);
  }
  
  public static boolean isDebug()
  {
    return sDebug;
  }
  
  private static void registerPackageReceiver(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.PACKAGE_REMOVED");
    localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
    localIntentFilter.addDataScheme("package");
    paramContext.registerReceiver(new PackageChangeReceiver(), localIntentFilter);
  }
  
  private static void registerPictureReceiver(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.android.camera.NEW_PICTURE");
    localIntentFilter.addAction("android.hardware.action.NEW_PICTURE");
    try
    {
      localIntentFilter.addDataType("image/*");
      paramContext.registerReceiver(new PhotoReceiver(), localIntentFilter);
      return;
    }
    catch (IntentFilter.MalformedMimeTypeException localMalformedMimeTypeException)
    {
      for (;;) {}
    }
  }
  
  private static void storeDataPipeMess(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return;
      try
      {
        CardDataPipe.fromJson(paramString).save(paramContext);
        return;
      }
      catch (JSONException paramContext) {}
    } while (!DEBUG);
    LogHelper.d("SDKCard", "storeDataPipeMess: JSONException:" + paramContext.getMessage());
    paramContext.printStackTrace();
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.CardLibrary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */