package com.baidu.resultcard;

import android.content.Context;
import com.baidu.scenery.utils.LogHelper;

public class CardLibrary$CardParameter
{
  public String bdct = "a";
  public int commonCardSid = 0;
  public final Context context;
  public boolean debug = false;
  public int mainCardSid = 0;
  public String mobuleEnv = "prod";
  
  public CardLibrary$CardParameter(Context paramContext, boolean paramBoolean)
  {
    context = paramContext;
    debug = paramBoolean;
  }
  
  public boolean checkParameters()
  {
    if (context == null) {}
    do
    {
      return false;
      if ((mainCardSid != 0) || (commonCardSid != 0)) {
        break;
      }
    } while (!debug);
    throw new IllegalStateException("主带量卡片和通用带量卡片sid均为空");
    if ((mainCardSid == 0) && (debug)) {
      LogHelper.d("SDKCard", "主带量卡片sid为空");
    }
    if ((commonCardSid == 0) && (debug)) {
      LogHelper.d("SDKCard", "通用带量卡片sid为空");
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.CardLibrary.CardParameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */