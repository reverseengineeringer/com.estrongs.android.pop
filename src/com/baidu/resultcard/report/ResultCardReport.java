package com.baidu.resultcard.report;

import android.content.Context;
import com.baidu.resultcard.CardLibrary;

public class ResultCardReport
{
  public static void reportCommonClick(Context paramContext, String paramString, boolean paramBoolean)
  {
    int i = CardLibrary.sCommonCardSid;
    ResultCardPastaReport.getInstance(paramContext).reportJson("duresultcard_sdk_click", paramString, i, paramBoolean);
    ResultCardMobulaReport.reportCommonClick(paramContext, paramString, i);
  }
  
  public static void reportCommonInstall(Context paramContext, String paramString)
  {
    int i = CardLibrary.sCommonCardSid;
    ResultCardPastaReport.getInstance(paramContext).reportJson("duresultcard_sdk_install", paramString, i);
    ResultCardMobulaReport.reportInstall(paramContext, paramString, i);
  }
  
  public static void reportCommonShow(Context paramContext, String paramString, boolean paramBoolean)
  {
    int i = CardLibrary.sCommonCardSid;
    ResultCardPastaReport.getInstance(paramContext).reportJson("duresultcard_sdk_show", paramString, i, paramBoolean);
    ResultCardMobulaReport.reportCommonShow(paramContext, paramString, i);
  }
  
  public static void reportMainCardClick(Context paramContext, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = CardLibrary.sMainCardSid;
    ResultCardPastaReport.getInstance(paramContext).reportJson("duresultcard_sdk_click", paramString, i, paramBoolean1, paramBoolean2);
    ResultCardMobulaReport.reportMainClick(paramContext, paramString, i, paramBoolean1);
  }
  
  public static void reportMainCardShow(Context paramContext, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = CardLibrary.sMainCardSid;
    ResultCardPastaReport.getInstance(paramContext).reportJson("duresultcard_sdk_show", paramString, i, paramBoolean1, paramBoolean2);
    ResultCardMobulaReport.reportMainShow(paramContext, paramString, i, paramBoolean1);
  }
  
  public static void reportMainInstall(Context paramContext, String paramString)
  {
    int i = CardLibrary.sMainCardSid;
    ResultCardPastaReport.getInstance(paramContext).reportJson("duresultcard_sdk_install", paramString, i);
    ResultCardMobulaReport.reportInstall(paramContext, paramString, i);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.report.ResultCardReport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */