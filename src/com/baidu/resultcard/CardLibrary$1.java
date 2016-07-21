package com.baidu.resultcard;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.scenery.utils.LogHelper;
import com.dianxinos.library.notify.e;

final class CardLibrary$1
  implements e
{
  CardLibrary$1(String paramString, Context paramContext) {}
  
  public void onDataArrive(String paramString1, String paramString2)
  {
    if (CardLibrary.access$000()) {
      LogHelper.i("SDKCard", "category " + paramString1 + ", body " + paramString2);
    }
    if (!TextUtils.equals(val$dataPipeId, paramString1)) {
      return;
    }
    CardLibrary.access$100(val$context, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.CardLibrary.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */