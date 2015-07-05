package com.baidu.mobstat;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import com.baidu.kirin.KirinConfig;
import java.io.PrintStream;
import java.lang.ref.SoftReference;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class g
  implements SharedPreferences.OnSharedPreferenceChangeListener
{
  private static SoftReference<g> a = null;
  private final Context b;
  private final SharedPreferences c;
  
  private g(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    c = f().getSharedPreferences(f().getPackageName() + ".kirin_strategy_control_pref", 0);
  }
  
  /* Error */
  public static g a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 17	com/baidu/mobstat/g:a	Ljava/lang/ref/SoftReference;
    //   6: ifnonnull +56 -> 62
    //   9: aconst_null
    //   10: astore_1
    //   11: aload_1
    //   12: astore_2
    //   13: aload_1
    //   14: ifnonnull +43 -> 57
    //   17: ldc 2
    //   19: monitorenter
    //   20: getstatic 17	com/baidu/mobstat/g:a	Ljava/lang/ref/SoftReference;
    //   23: ifnonnull +52 -> 75
    //   26: aconst_null
    //   27: astore_1
    //   28: aload_1
    //   29: astore_2
    //   30: aload_1
    //   31: ifnonnull +23 -> 54
    //   34: new 2	com/baidu/mobstat/g
    //   37: dup
    //   38: aload_0
    //   39: invokespecial 58	com/baidu/mobstat/g:<init>	(Landroid/content/Context;)V
    //   42: astore_2
    //   43: new 60	java/lang/ref/SoftReference
    //   46: dup
    //   47: aload_2
    //   48: invokespecial 63	java/lang/ref/SoftReference:<init>	(Ljava/lang/Object;)V
    //   51: putstatic 17	com/baidu/mobstat/g:a	Ljava/lang/ref/SoftReference;
    //   54: ldc 2
    //   56: monitorexit
    //   57: ldc 2
    //   59: monitorexit
    //   60: aload_2
    //   61: areturn
    //   62: getstatic 17	com/baidu/mobstat/g:a	Ljava/lang/ref/SoftReference;
    //   65: invokevirtual 67	java/lang/ref/SoftReference:get	()Ljava/lang/Object;
    //   68: checkcast 2	com/baidu/mobstat/g
    //   71: astore_1
    //   72: goto -61 -> 11
    //   75: getstatic 17	com/baidu/mobstat/g:a	Ljava/lang/ref/SoftReference;
    //   78: invokevirtual 67	java/lang/ref/SoftReference:get	()Ljava/lang/Object;
    //   81: checkcast 2	com/baidu/mobstat/g
    //   84: astore_1
    //   85: goto -57 -> 28
    //   88: astore_0
    //   89: ldc 2
    //   91: monitorexit
    //   92: aload_0
    //   93: athrow
    //   94: astore_0
    //   95: ldc 2
    //   97: monitorexit
    //   98: aload_0
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	paramContext	Context
    //   10	75	1	localg1	g
    //   12	49	2	localg2	g
    // Exception table:
    //   from	to	target	type
    //   20	26	88	finally
    //   34	54	88	finally
    //   54	57	88	finally
    //   75	85	88	finally
    //   89	92	88	finally
    //   3	9	94	finally
    //   17	20	94	finally
    //   62	72	94	finally
    //   92	94	94	finally
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    return c(paramString1) > c(paramString2);
  }
  
  private int c(String paramString)
  {
    return Integer.parseInt(paramString.split(":")[0]) * 60 * 60 + Integer.parseInt(paramString.split(":")[1]) * 60 + Integer.parseInt(paramString.split(":")[2]);
  }
  
  private Context f()
  {
    return b;
  }
  
  private boolean g()
  {
    long l1 = new Date().getTime();
    int i = c.getInt("kirin_update_freqency", -1);
    long l2 = c.getLong("kirin_strategy_record_time", -1L);
    if (l2 == -1L) {
      return true;
    }
    if ((l1 - l2) / 1000L >= i)
    {
      n.a(l1 + " --> exceed interval : " + i);
      return true;
    }
    n.a(l1 + " --> don't exceed interval : " + i);
    return false;
  }
  
  private boolean h()
  {
    long l1 = new Date().getTime();
    long l2 = c.getLong("kirin_strategy_record_time", -1L);
    if (l2 == -1L) {
      return true;
    }
    if ((l1 - l2) / 1000L > KirinConfig.DEFAULT_UPDATE_INTERVAL)
    {
      n.a(l1 + " --> exceed interval : " + KirinConfig.DEFAULT_UPDATE_INTERVAL);
      return true;
    }
    n.a(l1 + " --> don't exceed interval : " + KirinConfig.DEFAULT_UPDATE_INTERVAL);
    return false;
  }
  
  private boolean i()
  {
    boolean bool = true;
    localObject1 = e();
    String str1 = localObject1.split("\\|")[0];
    String str2 = localObject1.split("\\|")[1];
    System.out.println(str1);
    System.out.println(str2);
    long l1 = new Date().getTime();
    localObject1 = new SimpleDateFormat("yyyy-MM-dd").format(Long.valueOf(l1));
    Object localObject2 = (String)localObject1 + " " + str1;
    localObject1 = (String)localObject1 + " " + str2;
    System.out.println((String)localObject2);
    System.out.println((String)localObject1);
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    for (;;)
    {
      try
      {
        localObject2 = localSimpleDateFormat.parse((String)localObject2);
        localParseException1.printStackTrace();
      }
      catch (ParseException localParseException1)
      {
        for (;;)
        {
          try
          {
            localObject1 = localSimpleDateFormat.parse((String)localObject1);
          }
          catch (ParseException localParseException2)
          {
            long l2;
            long l3;
            localObject1 = null;
            continue;
          }
          try
          {
            System.out.println(((Date)localObject2).getTime() + " - " + ((Date)localObject1).getTime());
            l2 = ((Date)localObject2).getTime();
            l3 = ((Date)localObject1).getTime();
            if (!a(str2, str1)) {
              continue;
            }
            if ((l1 < l2) || (l1 > l3)) {
              continue;
            }
            return true;
          }
          catch (ParseException localParseException3) {}
        }
        localParseException1 = localParseException1;
        localObject2 = null;
        localObject1 = null;
      }
    }
    return false;
    if ((l1 >= l2 - 86400000) && (l1 <= l3)) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  public void a(boolean paramBoolean, JSONObject paramJSONObject)
  {
    long l = new Date().getTime();
    SharedPreferences.Editor localEditor = c.edit();
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        int i = paramJSONObject.getInt("updateSwitch");
        int j = paramJSONObject.getInt("updateFrequency");
        int k = paramJSONObject.getInt("popFrequency");
        paramJSONObject = paramJSONObject.getString("openPeriod");
        n.a("write to strategy controller data is  :  success : " + paramBoolean + "; updateSwith : " + i + "; updateFrequency : " + j + "; popFrequency : " + k);
        localEditor.putLong("kirin_strategy_record_time", l);
        localEditor.putInt("kirin_update_switcher", i);
        localEditor.putInt("kirin_update_freqency", j * 86400);
        localEditor.putInt("kirin_update_remind_freqency", k * 86400);
        localEditor.putString("kirin_open_peroid", paramJSONObject);
        localEditor.commit();
        return;
      }
      catch (JSONException paramJSONObject)
      {
        paramJSONObject.printStackTrace();
        localEditor.putLong("kirin_strategy_record_time", l);
        localEditor.putInt("kirin_update_switcher", 0);
        localEditor.putInt("kirin_update_freqency", KirinConfig.DEFAULT_UPDATE_INTERVAL);
        localEditor.putInt("kirin_update_remind_freqency", KirinConfig.DEFAULT_POP_INTERVAL);
        localEditor.putString("kirin_open_peroid", "00:00:00|23:59:59");
        continue;
      }
      localEditor.putLong("kirin_strategy_record_time", l);
      localEditor.putInt("kirin_update_switcher", 0);
      localEditor.putInt("kirin_update_freqency", KirinConfig.DEFAULT_UPDATE_INTERVAL);
      localEditor.putInt("kirin_update_remind_freqency", KirinConfig.DEFAULT_POP_INTERVAL);
      localEditor.putString("kirin_open_peroid", "00:00:00|23:59:59");
    }
  }
  
  public boolean a()
  {
    if (!i()) {}
    do
    {
      return false;
      int i = c.getInt("kirin_update_switcher", -1);
      if ((!g()) && (i == 1))
      {
        n.a("!isExceedServerUpdateInterval() && switcher == 1");
        return false;
      }
      if (i != 0) {
        break;
      }
      n.a("else if(switcher == 0)");
    } while (!h());
    return true;
    n.a("else!");
    return true;
  }
  
  public boolean a(String paramString)
  {
    if (!i()) {}
    do
    {
      return false;
      if (paramString.equals("atStart")) {
        return a();
      }
    } while (!paramString.equals("atSetting"));
    return b();
  }
  
  public void b(String paramString)
  {
    SharedPreferences.Editor localEditor = c.edit();
    localEditor.putString("kirin_log_id", paramString);
    localEditor.commit();
  }
  
  public boolean b()
  {
    return i();
  }
  
  public boolean c()
  {
    if (!i()) {}
    int i;
    do
    {
      return false;
      i = c.getInt("kirin_update_switcher", -1);
    } while ((i != -1) && (i != 1));
    return true;
  }
  
  public String d()
  {
    return c.getString("kirin_log_id", "0");
  }
  
  public String e()
  {
    return c.getString("kirin_open_peroid", "00:00:00|23:59:59");
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if (paramSharedPreferences == c) {
      n.a(paramString + " : has changed");
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */