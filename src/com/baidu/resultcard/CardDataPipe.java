package com.baidu.resultcard;

import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class CardDataPipe
{
  public static List<String> DEFAULT_COMMON_PKG_LIST = Arrays.asList(new String[] { "com.estrongs.android.pop", "com.duapps.cleaner" });
  public static final int DEFAUlT_ES_DAYS = 3;
  public static final int DEFAUlT_ES_SIZE = 300;
  public static final int DEFAUlT_MOTU_DAYS = 3;
  private int mEsDays;
  private int mEsSize;
  private int mMotuDays;
  private List<String> mPkgList = new ArrayList();
  
  public static CardDataPipe fromJson(String paramString)
  {
    JSONObject localJSONObject = new JSONObject(paramString);
    paramString = new CardDataPipe();
    Object localObject = localJSONObject.getJSONArray("card_app_list");
    if (localObject != null)
    {
      int i = 0;
      while (i < ((JSONArray)localObject).length())
      {
        mPkgList.add(((JSONArray)localObject).getString(i));
        i += 1;
      }
    }
    localObject = localJSONObject.getJSONObject("card_es");
    if (localObject != null)
    {
      mEsDays = ((JSONObject)localObject).optInt("days", 3);
      mEsSize = ((JSONObject)localObject).optInt("size_mb", 300);
    }
    localJSONObject = localJSONObject.getJSONObject("card_motu");
    if (localJSONObject != null) {
      mMotuDays = localJSONObject.optInt("days", 3);
    }
    return paramString;
  }
  
  public void save(Context paramContext)
  {
    CardPreferences.setCloudCommonCardPkgs(paramContext, mPkgList);
    CardPreferences.setEsCardDays(paramContext, mEsDays);
    CardPreferences.setEsCardSizeMB(paramContext, mEsSize);
    CardPreferences.setMotuCardDays(paramContext, mMotuDays);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.CardDataPipe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */