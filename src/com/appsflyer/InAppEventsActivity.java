package com.appsflyer;

import android.app.ListActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class InAppEventsActivity
  extends ListActivity
  implements AdapterView.OnItemSelectedListener
{
  private TextView a;
  private List<String> b;
  private int c = 1;
  
  private void a(String paramString)
  {
    HashMap localHashMap1 = new HashMap();
    long l = new Date().getTime();
    localHashMap1.put("test-id", Long.valueOf(l));
    a.setText("Event " + paramString + " sent. (test-id " + l + ")");
    if (paramString.equals("af_list_view"))
    {
      localHashMap1.put("af_content_id", new String[] { "324219284", "324346544", "324242096" });
      localHashMap1.put("af_currency", "USD");
    }
    for (;;)
    {
      Object localObject = paramString;
      if (paramString.contains("fb-")) {
        localObject = paramString.substring(3);
      }
      AppsFlyerLib.a(this, (String)localObject, localHashMap1);
      return;
      if (paramString.equals("af_content_view"))
      {
        localHashMap1.put("af_content_id", "324219284");
        localHashMap1.put("af_currency", "USD");
      }
      else
      {
        HashMap localHashMap2;
        HashMap localHashMap3;
        if (paramString.equals("Criteo - af_add_to_cart"))
        {
          localObject = new HashMap();
          ((Map)localObject).put("af_content_id", "1000001");
          ((Map)localObject).put("af_price", Double.valueOf(10.2D));
          ((Map)localObject).put("af_quantity", Integer.valueOf(1));
          localHashMap2 = new HashMap();
          localHashMap2.put("af_content_id", "1000002");
          localHashMap2.put("af_price", Double.valueOf(1.1D));
          localHashMap2.put("af_quantity", Integer.valueOf(2));
          localHashMap3 = new HashMap();
          localHashMap3.put("af_content_id", "1000003");
          localHashMap3.put("af_price", Double.valueOf(9.3D));
          localHashMap3.put("af_quantity", Integer.valueOf(5));
          localHashMap1.put("product, ", new Map[] { localObject, localHashMap2, localHashMap3 });
          localHashMap1.put("af_currency", "USD");
        }
        else if (paramString.equals("Criteo - af_purchase"))
        {
          localObject = new HashMap();
          ((Map)localObject).put("af_content_id", "1000001");
          ((Map)localObject).put("af_price", Double.valueOf(10.2D));
          ((Map)localObject).put("af_quantity", Integer.valueOf(1));
          localHashMap2 = new HashMap();
          localHashMap2.put("af_content_id", "1000002");
          localHashMap2.put("af_price", Double.valueOf(1.1D));
          localHashMap2.put("af_quantity", Integer.valueOf(2));
          localHashMap3 = new HashMap();
          localHashMap3.put("af_content_id", "1000003");
          localHashMap3.put("af_price", Double.valueOf(9.3D));
          localHashMap3.put("af_quantity", Integer.valueOf(5));
          localHashMap1.put("product, ", new Map[] { localObject, localHashMap2, localHashMap3 });
          localHashMap1.put("af_currency", "USD");
          localHashMap1.put("af_receipt_id", "transactionuid");
          localHashMap1.put("af_revenue", Double.valueOf(58.9D));
        }
        else if (paramString.equals("af_level_achieved"))
        {
          localHashMap1.put("af_level", Integer.valueOf(3));
        }
        else if (paramString.equals("af_user_status"))
        {
          localHashMap1.put("af_status", "subscriber");
        }
        else if (paramString.equals("af_achievement_unlocked"))
        {
          localHashMap1.put("af_description", "special_key");
        }
        else if (!paramString.equals("af_login"))
        {
          if (paramString.equals("fb-af_level_achieved"))
          {
            localHashMap1.put("af_level", "level_1");
          }
          else if (paramString.equals("fb-af_add_payment_info"))
          {
            localHashMap1.put("af_success", "true");
          }
          else if (paramString.equals("fb-af_add_to_cart"))
          {
            localHashMap1.put("af_price", Double.valueOf(25.5D));
            localHashMap1.put("af_content_type", "content type");
            localHashMap1.put("af_content_id", "324219284");
            localHashMap1.put("af_currency", "USD");
          }
          else if (paramString.equals("fb-af_add_to_wishlist"))
          {
            localHashMap1.put("af_price", Double.valueOf(25.5D));
            localHashMap1.put("af_content_type", "content type");
            localHashMap1.put("af_content_id", "324219284");
            localHashMap1.put("af_currency", "USD");
          }
          else if (paramString.equals("fb-af_complete_registration"))
          {
            localHashMap1.put("af_registration_method", "resg");
          }
          else if (paramString.equals("fb-af_tutorial_completion"))
          {
            localHashMap1.put("af_success", "true");
            localHashMap1.put("af_content_id", "324219284");
          }
          else if (paramString.equals("fb-af_initiated_checkout"))
          {
            localHashMap1.put("af_price", Double.valueOf(25.5D));
            localHashMap1.put("af_content_type", "content type");
            localHashMap1.put("af_content_id", "324219284");
            localHashMap1.put("af_currency", "USD");
            localHashMap1.put("af_quantity", Integer.valueOf(2));
            localHashMap1.put("af_payment_info_available", "false");
          }
          else if (paramString.equals("fb-af_purchase"))
          {
            localHashMap1.put("af_revenue", Double.valueOf(25.5D));
            localHashMap1.put("af_content_type", "content type");
            localHashMap1.put("af_content_id", "324219284");
            localHashMap1.put("af_currency", "USD");
            localHashMap1.put("af_quantity", Integer.valueOf(5));
          }
          else if (paramString.equals("fb-af_rate"))
          {
            localHashMap1.put("af_rating_value", Integer.valueOf(55));
            localHashMap1.put("af_content_type", "content type");
            localHashMap1.put("af_content_id", "324219284");
            localHashMap1.put("af_max_rating_value", Integer.valueOf(5555));
          }
          else if (paramString.equals("fb-af_search"))
          {
            localHashMap1.put("af_content_type", "content type");
            localHashMap1.put("af_search_string", "search string");
            localHashMap1.put("af_success", "true");
          }
          else if (paramString.equals("fb-af_spent_credits"))
          {
            localHashMap1.put("af_price", Double.valueOf(25.5D));
            localHashMap1.put("af_content_type", "content type");
            localHashMap1.put("af_content_id", "324219284");
          }
          else if (paramString.equals("fb-af_achievement_unlocked"))
          {
            localHashMap1.put("af_description", "desc");
          }
          else if (paramString.equals("fb-af_content_view"))
          {
            localHashMap1.put("af_price", Double.valueOf(25.5D));
            localHashMap1.put("af_content_type", "content type");
            localHashMap1.put("af_content_id", "324219284");
            localHashMap1.put("af_currency", "USD");
          }
          else if (paramString.equals("fb-af_travel_booking"))
          {
            localHashMap1.put("af_revenue", Double.valueOf(335.25D));
            localHashMap1.put("af_content_type", "content type");
            localHashMap1.put("af_content_id", "324219284");
            localHashMap1.put("af_success", "true");
          }
        }
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903041);
    a = ((TextView)findViewById(2131034113));
    b = new ArrayList();
    b.add("af_list_view");
    b.add("af_content_view");
    b.add("Criteo - af_add_to_cart");
    b.add("Criteo - af_purchase");
    b.add("af_level_achieved");
    b.add("af_user_status");
    b.add("af_achievement_unlocked");
    b.add("af_login");
    b.add("fb-af_level_achieved");
    b.add("fb-af_add_to_cart");
    b.add("fb-af_add_to_wishlist");
    b.add("fb-af_complete_registration");
    b.add("fb-af_tutorial_completion");
    b.add("fb-af_initiated_checkout");
    b.add("fb-af_purchase");
    b.add("fb-af_rate");
    b.add("fb-af_search");
    b.add("fb-af_spent_credits");
    b.add("fb-af_achievement_unlocked");
    b.add("fb-af_content_view");
    b.add("fb-af_travel_booking");
    setListAdapter(new ArrayAdapter(this, 2130903040, 2131034112, b));
    paramBundle = (Spinner)findViewById(2131034115);
    paramBundle.setAdapter(new ArrayAdapter(this, 17367048, new Integer[] { Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3), Integer.valueOf(4), Integer.valueOf(5), Integer.valueOf(6), Integer.valueOf(7), Integer.valueOf(8), Integer.valueOf(9), Integer.valueOf(10), Integer.valueOf(20), Integer.valueOf(30), Integer.valueOf(40), Integer.valueOf(50), Integer.valueOf(100), Integer.valueOf(500), Integer.valueOf(1000) }));
    paramBundle.setOnItemSelectedListener(this);
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    c = ((Integer)paramAdapterView.getItemAtPosition(paramInt)).intValue();
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
    paramListView = (String)getListView().getItemAtPosition(paramInt);
    paramInt = 0;
    for (;;)
    {
      if (paramInt < c)
      {
        a(paramListView);
        if (paramInt < c - 1) {}
        try
        {
          Thread.sleep(3000L);
          paramInt += 1;
        }
        catch (InterruptedException paramView)
        {
          for (;;)
          {
            paramView.printStackTrace();
          }
        }
      }
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  
  public void onPause()
  {
    super.onPause();
    AppsFlyerLib.b(this);
  }
  
  public void onResume()
  {
    super.onResume();
    AppsFlyerLib.a(this);
  }
  
  public void onStart()
  {
    super.onStart();
    AppsFlyerLib.a(this);
  }
  
  public void onStop()
  {
    super.onStop();
    AppsFlyerLib.b(this);
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.InAppEventsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */