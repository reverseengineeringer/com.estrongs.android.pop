package com.dianxinos.library.notify.download;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.dianxinos.library.dxbase.k;
import com.dianxinos.library.notify.c;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

public class DownloadInfo
  implements Serializable
{
  public static final int NETWORK_BLOCKED = 7;
  public static final int NETWORK_CANNOT_USE_ROAMING = 5;
  public static final int NETWORK_NOT_ACCEPT_NETWORK = 8;
  public static final int NETWORK_NO_CONNECTION = 2;
  public static final int NETWORK_OK = 1;
  public static final int NETWORK_RECOMMENDED_UNUSABLE_DUE_TO_SIZE = 4;
  public static final int NETWORK_TYPE_DISALLOWED_BY_REQUESTOR = 6;
  public static final int NETWORK_UNUSABLE_DUE_TO_SIZE = 3;
  private static final long serialVersionUID = 100429279930115816L;
  public String mAllowedNetworkTypes;
  public String mCacheFileName;
  public String mCompleteFileName;
  public int mControl;
  public long mCurrentBytes;
  public int mDestination = 0;
  public String mETag;
  public String mErrorMsg;
  public String mExtras;
  public int mFuzz = o.a.nextInt(1001);
  private List<Pair<String, String>> mHeaders = new LinkedList();
  public long mLastModified;
  public String mMimeType;
  public int mNumFailed;
  public String mRcmId;
  public int mRetryAfter;
  public int mStatus;
  public s mSystemFacade;
  public long mTotalBytes;
  public String mUri;
  public String mUserAgent;
  
  public DownloadInfo(Context paramContext) {}
  
  private int checkIsNetworkTypeAllowed(int paramInt)
  {
    return checkSizeAllowedForNetwork(paramInt);
  }
  
  private int checkSizeAllowedForNetwork(int paramInt)
  {
    if (mTotalBytes <= 0L) {}
    Long localLong;
    do
    {
      do
      {
        return 1;
      } while (paramInt == 1);
      localLong = mSystemFacade.b();
      if ((localLong != null) && (mTotalBytes > localLong.longValue())) {
        return 3;
      }
      localLong = mSystemFacade.c();
    } while ((localLong == null) || (mTotalBytes <= localLong.longValue()));
    return 4;
  }
  
  public static DownloadInfo fromString(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      paramString = new DownloadInfo(c.a());
      mUri = localJSONObject.optString("uri", null);
      mUserAgent = localJSONObject.optString("useragent", null);
      mNumFailed = localJSONObject.optInt("numfailed");
      mControl = localJSONObject.optInt("control");
      mStatus = localJSONObject.optInt("status");
      mCacheFileName = localJSONObject.optString("filename", null);
      mCompleteFileName = localJSONObject.optString("completefilename", null);
      mDestination = localJSONObject.optInt("destination");
      mMimeType = localJSONObject.optString("mimetype", null);
      mTotalBytes = localJSONObject.optInt("totalbytes");
      mLastModified = localJSONObject.optLong("lastmodified");
      mETag = localJSONObject.optString("etag", null);
      mErrorMsg = localJSONObject.optString("errormsg", null);
      localJSONObject = localJSONObject.optJSONObject("headers");
      Iterator localIterator = localJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        paramString.addHeader(str, localJSONObject.optString(str));
      }
      return paramString;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
      return null;
    }
  }
  
  private boolean isConfigNetworkAllowed()
  {
    boolean bool2 = true;
    boolean bool1;
    if (!k.b()) {
      bool1 = false;
    }
    int i;
    do
    {
      int j;
      do
      {
        int m;
        do
        {
          int k;
          do
          {
            do
            {
              return bool1;
              bool1 = bool2;
            } while (TextUtils.isEmpty(mAllowedNetworkTypes));
            if (mAllowedNetworkTypes.length() < 4) {
              return false;
            }
            i = mAllowedNetworkTypes.charAt(0);
            j = mAllowedNetworkTypes.charAt(1);
            k = mAllowedNetworkTypes.charAt(2);
            m = mAllowedNetworkTypes.charAt(3);
            if (!k.d()) {
              break;
            }
            bool1 = bool2;
          } while (k == 49);
          return false;
          if (!k.e()) {
            break;
          }
          bool1 = bool2;
        } while (m == 49);
        return false;
        if (!k.c()) {
          break;
        }
        bool1 = bool2;
      } while (j == 49);
      return false;
      bool1 = bool2;
    } while (i == 49);
    return false;
  }
  
  private boolean isReadyToStart(long paramLong)
  {
    boolean bool2 = true;
    String str = o.c(mRcmId, mUri);
    boolean bool1;
    if ((com.dianxinos.library.notify.dispatcher.a.a().a(str)) || (com.dianxinos.library.notify.dispatcher.a.b().a(str))) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        if (mControl == 1) {
          return false;
        }
        bool1 = bool2;
        switch (mStatus)
        {
        case 0: 
        case 190: 
        case 192: 
        case 198: 
        default: 
          return false;
        case 195: 
        case 196: 
          bool1 = bool2;
        }
      } while (checkCanUseNetwork() == 1);
      return false;
      bool1 = bool2;
    } while (restartTime(paramLong) <= paramLong);
    return false;
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  private boolean isRoamingAllowed()
  {
    return mDestination != 3;
  }
  
  public boolean addHeader(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      return false;
    }
    mHeaders.add(HttpHeader.create(paramString1, paramString2));
    return true;
  }
  
  public int checkCanUseNetwork()
  {
    NetworkInfo localNetworkInfo = k.a();
    if (localNetworkInfo == null) {
      return 2;
    }
    if (!isConfigNetworkAllowed()) {
      return 8;
    }
    if ((!isRoamingAllowed()) && (mSystemFacade.a())) {
      return 5;
    }
    return checkIsNetworkTypeAllowed(localNetworkInfo.getType());
  }
  
  List<Pair<String, String>> getHeaders()
  {
    return Collections.unmodifiableList(mHeaders);
  }
  
  public String getLogMessageForNetworkError(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "unknown error with network connectivity";
    case 4: 
      return "download size exceeds recommended limit for mobile network";
    case 3: 
      return "download size exceeds limit for mobile network";
    case 2: 
      return "no network connection available";
    case 5: 
      return "download cannot use the current network connection because it is roaming";
    case 6: 
      return "download was requested to not use the current network type";
    case 7: 
      return "network is blocked for requesting application";
    }
    return "allowed network: " + mAllowedNetworkTypes + ", wifi: " + k.c() + ", 2G: " + k.d() + ", 3G: " + k.e();
  }
  
  public long restartTime(long paramLong)
  {
    if (mNumFailed == 0) {
      return paramLong;
    }
    if (mRetryAfter > 0) {
      return mLastModified + mRetryAfter;
    }
    return mLastModified + (mFuzz + 1000) * 30 * (1 << mNumFailed - 1);
  }
  
  boolean startDownload()
  {
    if (startIfReady(System.currentTimeMillis()))
    {
      DownloadRunnable localDownloadRunnable = new DownloadRunnable(c.a(), this);
      mSystemFacade.a(new Thread(localDownloadRunnable));
      return true;
    }
    return false;
  }
  
  boolean startIfReady(long paramLong)
  {
    if (!isReadyToStart(paramLong)) {
      return false;
    }
    if (f.a) {
      Log.v("rcm-download", "Service spawning thread to handle download " + mRcmId + " : " + mUri);
    }
    if (mStatus != 192)
    {
      mStatus = 192;
      com.dianxinos.library.notify.h.a.a(this);
    }
    return true;
  }
  
  public String toJsonString()
  {
    Object localObject = new JSONObject();
    try
    {
      ((JSONObject)localObject).put("uri", mUri);
      ((JSONObject)localObject).put("useragent", mUserAgent);
      ((JSONObject)localObject).put("numfailed", mNumFailed);
      ((JSONObject)localObject).put("control", mControl);
      ((JSONObject)localObject).put("status", mStatus);
      ((JSONObject)localObject).put("filename", mCacheFileName);
      ((JSONObject)localObject).put("completefilename", mCompleteFileName);
      ((JSONObject)localObject).put("destination", mDestination);
      ((JSONObject)localObject).put("mimetype", mMimeType);
      ((JSONObject)localObject).put("totalbytes", mTotalBytes);
      ((JSONObject)localObject).put("lastmodified", mLastModified);
      ((JSONObject)localObject).put("retryafter", mRetryAfter);
      ((JSONObject)localObject).put("etag", mETag);
      ((JSONObject)localObject).put("errormsg", mErrorMsg);
      if ((mHeaders != null) && (mHeaders.isEmpty()))
      {
        JSONObject localJSONObject = new JSONObject();
        int i = 0;
        while (i < mHeaders.size())
        {
          Pair localPair = (Pair)mHeaders.get(i);
          localJSONObject.put((String)first, second);
          i += 1;
        }
        ((JSONObject)localObject).put("headers", localJSONObject);
      }
      localObject = ((JSONObject)localObject).toString();
      return (String)localObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return null;
  }
  
  public String toString()
  {
    return toJsonString();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.DownloadInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */