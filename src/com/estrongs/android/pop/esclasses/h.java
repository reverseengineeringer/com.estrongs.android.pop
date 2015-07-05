package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.theme.al;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class h
{
  private static int[] a = { 16842851, 16842852, 16842853, 16842854, 16842855, 16842856, 16842857, 16842879, 16842960, 16842961, 16842962, 16842963, 16842964, 16842965, 16842966, 16842967, 16842968, 16842969, 16842970, 16842971, 16842972, 16842973, 16842974, 16842975, 16842976, 16842977, 16842978, 16842979, 16842980, 16842981, 16842982, 16842983, 16842984, 16842985, 16843071, 16843072, 16843285, 16843286, 16843342, 16843358, 16843375, 16843379, 16843432, 16843433, 16843434, 16843457, 16843460, 16843551, 16843552, 16843553, 16843554, 16843555, 16843556, 16843557, 16843558, 16843559, 16843560, 16843572, 16843580, 16843604, 16843685, 16843690, 16843753, 16843754, 16843755, 16843756, 16843757, 16843758 };
  private static int[] b = { 16842766, 16842804, 16842901, 16842902, 16842903, 16842904, 16842905, 16842906, 16842907, 16842923, 16842927, 16842928, 16842929, 16843039, 16843040, 16843071, 16843072, 16843086, 16843087, 16843088, 16843089, 16843090, 16843091, 16843092, 16843093, 16843094, 16843095, 16843096, 16843097, 16843098, 16843099, 16843100, 16843101, 16843102, 16843103, 16843104, 16843105, 16843106, 16843107, 16843108, 16843109, 16843110, 16843111, 16843112, 16843113, 16843114, 16843115, 16843116, 16843117, 16843118, 16843119, 16843120, 16843121, 16843287, 16843288, 16843293, 16843296, 16843299, 16843300, 16843364, 16843365, 16843366, 16843461, 16843462, 16843463, 16843540, 16843541, 16843542, 16843614, 16843615, 16843618, 16843636, 16843660, 16843666, 16843667, 16843692 };
  private static int[] c = { 16843033, 16843037, 16843038, 16843039, 16843040, 16843041, 16843042, 16843043, 16843548, 16843762 };
  private static int d = 8;
  private static int e = 18;
  private static int f = 19;
  private static int g = 16842884;
  private static int h = 5;
  private static int i = 0;
  private static int j = 12;
  private static int k = 48;
  private static int l = 49;
  private static int m = 50;
  private static int n = 51;
  private Context o;
  private boolean p;
  
  public h(Context paramContext)
  {
    if (((paramContext instanceof ESActivity)) || ((paramContext instanceof ESPreferenceActivity)) || ((paramContext instanceof FexApplication)))
    {
      o = paramContext;
      p = al.a(o).c();
      return;
    }
    throw new IllegalArgumentException("ESLayoutResourceHanlder needs an ESActivity or ESPreferenceActivity!");
  }
  
  private View a(String paramString, AttributeSet paramAttributeSet, View paramView)
  {
    if (paramString.equals("view")) {
      paramAttributeSet.getAttributeValue(null, "class");
    }
    Object localObject = o.obtainStyledAttributes(paramAttributeSet, a, 0, 0);
    int i1 = ((TypedArray)localObject).getResourceId(d, -1);
    if (i1 == -1)
    {
      ((TypedArray)localObject).recycle();
      return paramView;
    }
    paramString = paramView.findViewById(i1);
    if (!p)
    {
      paramView = new TypedValue();
      ((TypedArray)localObject).getValue(j, paramView);
      if (resourceId > 0)
      {
        i1 = paramString.getPaddingLeft();
        int i2 = paramString.getPaddingTop();
        int i3 = paramString.getPaddingRight();
        int i4 = paramString.getPaddingBottom();
        paramString.setBackgroundDrawable(al.a(o).a(resourceId));
        paramString.setPadding(i1, i2, i3, i4);
      }
    }
    ((TypedArray)localObject).recycle();
    if ((paramString instanceof TextView))
    {
      paramAttributeSet = o.obtainStyledAttributes(paramAttributeSet, b, g, 0);
      paramView = new TypedValue();
      paramAttributeSet.getValue(e, paramView);
      if (resourceId > 0) {
        ((TextView)paramString).setText(o.getText(resourceId));
      }
      paramView = new TypedValue();
      paramAttributeSet.getValue(f, paramView);
      if (resourceId > 0) {
        ((TextView)paramString).setHint(o.getText(resourceId));
      }
      if (!p)
      {
        paramView = new TypedValue();
        paramAttributeSet.getValue(h, paramView);
        if (resourceId > 0) {
          ((TextView)paramString).setTextColor(al.a(o).d(resourceId));
        }
        paramView = ((TextView)paramString).getCompoundDrawables();
        if ((paramView[0] != null) || (paramView[1] != null) || (paramView[2] != null) || (paramView[3] != null))
        {
          localObject = new TypedValue();
          paramAttributeSet.getValue(m, (TypedValue)localObject);
          if (resourceId <= 0) {
            break label649;
          }
          paramView[0] = al.a(o).c(resourceId);
        }
      }
    }
    label649:
    for (i1 = 1;; i1 = 0)
    {
      localObject = new TypedValue();
      paramAttributeSet.getValue(k, (TypedValue)localObject);
      if (resourceId > 0)
      {
        paramView[1] = al.a(o).c(resourceId);
        i1 = 1;
      }
      localObject = new TypedValue();
      paramAttributeSet.getValue(n, (TypedValue)localObject);
      if (resourceId > 0)
      {
        paramView[2] = al.a(o).c(resourceId);
        i1 = 1;
      }
      localObject = new TypedValue();
      paramAttributeSet.getValue(l, (TypedValue)localObject);
      if (resourceId > 0)
      {
        paramView[3] = al.a(o).c(resourceId);
        i1 = 1;
      }
      if (i1 != 0) {
        ((TextView)paramString).setCompoundDrawables(paramView[0], paramView[1], paramView[2], paramView[3]);
      }
      paramAttributeSet.recycle();
      for (;;)
      {
        return paramString;
        if ((!p) && ((paramString instanceof ImageView)))
        {
          paramAttributeSet = o.obtainStyledAttributes(paramAttributeSet, c, 0, 0);
          paramView = new TypedValue();
          paramAttributeSet.getValue(i, paramView);
          if (resourceId > 0) {
            ((ImageView)paramString).setImageDrawable(al.a(o).a(resourceId));
          }
          paramAttributeSet.recycle();
        }
      }
    }
  }
  
  private void a(XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, View paramView)
  {
    int i1 = paramXmlPullParser.getDepth();
    for (;;)
    {
      int i2 = paramXmlPullParser.next();
      if (((i2 == 3) && (paramXmlPullParser.getDepth() <= i1)) || (i2 == 1)) {
        break;
      }
      if (i2 == 2)
      {
        String str = paramXmlPullParser.getName();
        if (!"requestFocus".equals(str)) {
          if ("include".equals(str))
          {
            if (paramXmlPullParser.getDepth() == 0) {
              throw new InflateException("<include /> cannot be the root element");
            }
            b(paramXmlPullParser, paramAttributeSet, paramView);
          }
          else
          {
            if ("merge".equals(str)) {
              throw new InflateException("<merge /> must be the root element");
            }
            a(paramXmlPullParser, paramAttributeSet, a(str, paramAttributeSet, paramView));
          }
        }
      }
    }
  }
  
  private void a(XmlPullParser paramXmlPullParser, View paramView)
  {
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    try
    {
      int i1;
      do
      {
        i1 = paramXmlPullParser.next();
      } while ((i1 != 2) && (i1 != 1));
      if (i1 != 2) {
        throw new InflateException(paramXmlPullParser.getPositionDescription() + ": No start tag found!");
      }
    }
    catch (XmlPullParserException paramXmlPullParser)
    {
      paramView = new InflateException(paramXmlPullParser.getMessage());
      paramView.initCause(paramXmlPullParser);
      throw paramView;
      String str = paramXmlPullParser.getName();
      if ("merge".equals(str))
      {
        a(paramXmlPullParser, localAttributeSet, paramView);
        return;
      }
      a(paramXmlPullParser, localAttributeSet, a(str, localAttributeSet, paramView));
      return;
    }
    catch (IOException paramView)
    {
      paramXmlPullParser = new InflateException(paramXmlPullParser.getPositionDescription() + ": " + paramView.getMessage());
      paramXmlPullParser.initCause(paramView);
      throw paramXmlPullParser;
    }
  }
  
  private void b(XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, View paramView)
  {
    int i1 = paramAttributeSet.getAttributeResourceValue(null, "layout", 0);
    if (i1 == 0)
    {
      paramXmlPullParser = paramAttributeSet.getAttributeValue(null, "layout");
      if (paramXmlPullParser == null) {
        throw new InflateException("You must specifiy a layout in the include tag: <include layout=\"@layout/layoutID\" />");
      }
      throw new InflateException("You must specifiy a valid layout reference. The layout ID " + paramXmlPullParser + " is not valid.");
    }
    paramAttributeSet = o.getResources().getLayout(i1);
    AttributeSet localAttributeSet;
    try
    {
      localAttributeSet = Xml.asAttributeSet(paramAttributeSet);
      do
      {
        i1 = paramAttributeSet.next();
      } while ((i1 != 2) && (i1 != 1));
      if (i1 != 2) {
        throw new InflateException(paramAttributeSet.getPositionDescription() + ": No start tag found!");
      }
    }
    finally
    {
      paramAttributeSet.close();
    }
    String str = paramAttributeSet.getName();
    if ("merge".equals(str)) {
      a(paramAttributeSet, localAttributeSet, paramView);
    }
    for (;;)
    {
      paramAttributeSet.close();
      i1 = paramXmlPullParser.getDepth();
      int i2;
      do
      {
        i2 = paramXmlPullParser.next();
      } while (((i2 != 3) || (paramXmlPullParser.getDepth() > i1)) && (i2 != 1));
      return;
      a(paramAttributeSet, localAttributeSet, a(str, localAttributeSet, paramView));
    }
  }
  
  public void a(int paramInt, View paramView)
  {
    XmlResourceParser localXmlResourceParser = o.getResources().getLayout(paramInt);
    try
    {
      a(localXmlResourceParser, paramView);
      return;
    }
    finally
    {
      localXmlResourceParser.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */