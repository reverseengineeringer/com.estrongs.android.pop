package com.estrongs.android.pop.esclasses;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.preference.DialogPreference;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceGroup;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import com.estrongs.android.pop.app.d.b;
import java.io.IOException;
import java.lang.reflect.Field;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class n
{
  private static int[] a;
  private static int b;
  private static int c;
  private static int d;
  private static int e;
  private static int f;
  private static int[] g;
  private static int[] h;
  private Activity i;
  
  static
  {
    try
    {
      Class localClass = Class.forName("com.android.internal.R$styleable");
      a = (int[])localClass.getField("Preference").get(null);
      b = Integer.parseInt(localClass.getField("Preference_key").get(null).toString());
      c = Integer.parseInt(localClass.getField("Preference_title").get(null).toString());
      d = Integer.parseInt(localClass.getField("Preference_summary").get(null).toString());
      e = Integer.parseInt(localClass.getField("ListPreference_entries").get(null).toString());
      f = Integer.parseInt(localClass.getField("DialogPreference_dialogTitle").get(null).toString());
      g = (int[])localClass.getField("ListPreference").get(null);
      h = (int[])localClass.getField("DialogPreference").get(null);
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      localNoSuchFieldException.printStackTrace();
    }
  }
  
  public n(Activity paramActivity)
  {
    if (!(paramActivity instanceof b)) {
      throw new IllegalArgumentException("An IResourceContext is needed!");
    }
    i = paramActivity;
  }
  
  private final Preference a(XmlPullParser paramXmlPullParser, String paramString, AttributeSet paramAttributeSet, PreferenceGroup paramPreferenceGroup)
  {
    label466:
    for (;;)
    {
      try
      {
        Object localObject = i.obtainStyledAttributes(paramAttributeSet, a, 0, 0);
        paramXmlPullParser = new TypedValue();
        ((TypedArray)localObject).getValue(b, paramXmlPullParser);
        Preference localPreference = paramPreferenceGroup.findPreference(string);
        paramXmlPullParser = (XmlPullParser)localObject;
        if (localPreference != null)
        {
          paramXmlPullParser = new TypedValue();
          ((TypedArray)localObject).getValue(c, paramXmlPullParser);
          int j = resourceId;
          if (j > 0) {
            localPreference.setTitle(i.getText(j));
          }
          paramXmlPullParser = new TypedValue();
          ((TypedArray)localObject).getValue(d, paramXmlPullParser);
          if (resourceId > 0) {
            localPreference.setSummary(i.getText(resourceId));
          }
          if ((localPreference instanceof ListPreference))
          {
            ((ListPreference)localPreference).setNegativeButtonText(i.getText(2131231265));
            ((ListPreference)localPreference).setDialogTitle(i.getText(j));
            ((TypedArray)localObject).recycle();
            paramPreferenceGroup = i.obtainStyledAttributes(paramAttributeSet, g, 0, 0);
            localObject = new TypedValue();
            paramPreferenceGroup.getValue(e, (TypedValue)localObject);
            paramXmlPullParser = paramPreferenceGroup;
            if (resourceId > 0)
            {
              ((ListPreference)localPreference).setEntries(i.getResources().getStringArray(resourceId));
              paramXmlPullParser = paramPreferenceGroup;
              paramPreferenceGroup = paramXmlPullParser;
              if ((localPreference instanceof DialogPreference))
              {
                paramXmlPullParser.recycle();
                paramPreferenceGroup = i.obtainStyledAttributes(paramAttributeSet, h, 0, 0);
                localObject = new TypedValue();
                paramPreferenceGroup.getValue(f, (TypedValue)localObject);
                paramXmlPullParser = paramPreferenceGroup;
                if (resourceId <= 0) {
                  break label466;
                }
                ((DialogPreference)localPreference).setDialogTitle(i.getText(resourceId));
                paramXmlPullParser = paramPreferenceGroup;
                break label466;
              }
              paramPreferenceGroup.recycle();
              return localPreference;
            }
          }
          else
          {
            paramXmlPullParser = (XmlPullParser)localObject;
            if ((localPreference instanceof EditTextPreference))
            {
              ((EditTextPreference)localPreference).setPositiveButtonText(i.getText(2131231270));
              ((EditTextPreference)localPreference).setNegativeButtonText(i.getText(2131231265));
              ((EditTextPreference)localPreference).setDialogTitle(i.getText(j));
              paramXmlPullParser = (XmlPullParser)localObject;
            }
          }
          continue;
        }
        paramPreferenceGroup = paramXmlPullParser;
      }
      catch (InflateException paramXmlPullParser)
      {
        throw paramXmlPullParser;
      }
      catch (Exception paramXmlPullParser)
      {
        paramString = new InflateException(paramAttributeSet.getPositionDescription() + ": Error inflating class " + paramString);
        paramString.initCause(paramXmlPullParser);
        throw paramString;
      }
    }
  }
  
  private void a(XmlPullParser paramXmlPullParser, Preference paramPreference, AttributeSet paramAttributeSet)
  {
    int j = paramXmlPullParser.getDepth();
    for (;;)
    {
      int k = paramXmlPullParser.next();
      if (((k == 3) && (paramXmlPullParser.getDepth() <= j)) || (k == 1)) {
        break;
      }
      if ((k == 2) && (!b(paramXmlPullParser, paramPreference, paramAttributeSet)))
      {
        Preference localPreference = a(paramXmlPullParser, paramXmlPullParser.getName(), paramAttributeSet, (PreferenceGroup)paramPreference);
        ((PreferenceGroup)paramPreference).addItemFromInflater(localPreference);
        a(paramXmlPullParser, localPreference, paramAttributeSet);
      }
    }
  }
  
  private void a(XmlPullParser paramXmlPullParser, PreferenceGroup paramPreferenceGroup)
  {
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    try
    {
      int j;
      do
      {
        j = paramXmlPullParser.next();
      } while ((j != 2) && (j != 1));
      if (j != 2) {
        throw new InflateException(paramXmlPullParser.getPositionDescription() + ": No start tag found!");
      }
    }
    catch (InflateException paramXmlPullParser)
    {
      throw paramXmlPullParser;
      a(paramXmlPullParser, paramXmlPullParser.getName(), localAttributeSet, paramPreferenceGroup);
      a(paramXmlPullParser, paramPreferenceGroup, localAttributeSet);
      return;
    }
    catch (XmlPullParserException paramXmlPullParser)
    {
      paramPreferenceGroup = new InflateException(paramXmlPullParser.getMessage());
      paramPreferenceGroup.initCause(paramXmlPullParser);
      throw paramPreferenceGroup;
    }
    catch (IOException paramPreferenceGroup)
    {
      paramXmlPullParser = new InflateException(paramXmlPullParser.getPositionDescription() + ": " + paramPreferenceGroup.getMessage());
      paramXmlPullParser.initCause(paramPreferenceGroup);
      throw paramXmlPullParser;
    }
  }
  
  private boolean b(XmlPullParser paramXmlPullParser, Preference paramPreference, AttributeSet paramAttributeSet)
  {
    if (paramXmlPullParser.getName().equals("intent")) {
      try
      {
        paramXmlPullParser = Intent.parseIntent(i.getResources(), paramXmlPullParser, paramAttributeSet);
        if (paramXmlPullParser != null) {
          paramPreference.setIntent(paramXmlPullParser);
        }
        return true;
      }
      catch (IOException paramXmlPullParser)
      {
        for (;;)
        {
          paramXmlPullParser.printStackTrace();
          paramXmlPullParser = null;
        }
      }
    }
    return false;
  }
  
  public void a(int paramInt, PreferenceGroup paramPreferenceGroup)
  {
    XmlResourceParser localXmlResourceParser = i.getResources().getXml(paramInt);
    try
    {
      a(localXmlResourceParser, paramPreferenceGroup);
      return;
    }
    finally
    {
      localXmlResourceParser.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */