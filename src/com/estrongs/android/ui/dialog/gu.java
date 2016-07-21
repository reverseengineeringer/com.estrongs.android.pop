package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class gu
  extends BaseAdapter
{
  gu(gn paramgn) {}
  
  public JSONObject a(int paramInt)
  {
    try
    {
      JSONObject localJSONObject = gn.f(a).getJSONObject(paramInt);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return null;
  }
  
  public int getCount()
  {
    if (gn.f(a) == null) {
      return 0;
    }
    return gn.f(a).length();
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = k.a(gn.e(a)).inflate(2130903282, null);
      paramViewGroup.findViewById(2131624054).setVisibility(8);
    }
    paramView = (TextView)paramViewGroup.findViewById(2131625046);
    CheckBox localCheckBox = (CheckBox)paramViewGroup.findViewById(2131625049);
    if (gn.d(a)) {
      localCheckBox.setVisibility(0);
    }
    for (;;)
    {
      JSONObject localJSONObject = a(paramInt);
      try
      {
        paramView.setText(localJSONObject.getString("name"));
        boolean bool;
        if (localJSONObject.getInt("disable") == 0)
        {
          bool = true;
          label102:
          localCheckBox.setChecked(bool);
          if (!localJSONObject.has("key")) {
            break label176;
          }
          paramInt = gn.e(a).getResources().getColor(2131558661);
          label135:
          paramView.setTextColor(paramInt);
          if (!localJSONObject.has("key")) {
            break label195;
          }
        }
        label176:
        label195:
        for (paramInt = 0;; paramInt = 4)
        {
          localCheckBox.setVisibility(paramInt);
          return paramViewGroup;
          localCheckBox.setVisibility(8);
          break;
          bool = false;
          break label102;
          paramInt = gn.e(a).getResources().getColor(2131558662);
          break label135;
        }
        return paramViewGroup;
      }
      catch (JSONException paramView)
      {
        paramView.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */