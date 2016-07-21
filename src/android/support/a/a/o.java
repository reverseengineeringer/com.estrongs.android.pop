package android.support.a.a;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

class o
  extends q
{
  int a = 0;
  float b = 0.0F;
  int c = 0;
  float d = 1.0F;
  int e;
  float f = 1.0F;
  float g = 0.0F;
  float h = 1.0F;
  float i = 0.0F;
  Paint.Cap j = Paint.Cap.BUTT;
  Paint.Join k = Paint.Join.MITER;
  float l = 4.0F;
  private int[] p;
  
  public o() {}
  
  public o(o paramo)
  {
    super(paramo);
    p = p;
    a = a;
    b = b;
    d = d;
    c = c;
    e = e;
    f = f;
    g = g;
    h = h;
    i = i;
    j = j;
    k = k;
    l = l;
  }
  
  private Paint.Cap a(int paramInt, Paint.Cap paramCap)
  {
    switch (paramInt)
    {
    default: 
      return paramCap;
    case 0: 
      return Paint.Cap.BUTT;
    case 1: 
      return Paint.Cap.ROUND;
    }
    return Paint.Cap.SQUARE;
  }
  
  private Paint.Join a(int paramInt, Paint.Join paramJoin)
  {
    switch (paramInt)
    {
    default: 
      return paramJoin;
    case 0: 
      return Paint.Join.MITER;
    case 1: 
      return Paint.Join.ROUND;
    }
    return Paint.Join.BEVEL;
  }
  
  private void a(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser)
  {
    p = null;
    if (!j.a(paramXmlPullParser, "pathData")) {
      return;
    }
    String str = paramTypedArray.getString(0);
    if (str != null) {
      n = str;
    }
    str = paramTypedArray.getString(2);
    if (str != null) {
      m = f.a(str);
    }
    c = j.b(paramTypedArray, paramXmlPullParser, "fillColor", 1, c);
    f = j.a(paramTypedArray, paramXmlPullParser, "fillAlpha", 12, f);
    j = a(j.a(paramTypedArray, paramXmlPullParser, "strokeLineCap", 8, -1), j);
    k = a(j.a(paramTypedArray, paramXmlPullParser, "strokeLineJoin", 9, -1), k);
    l = j.a(paramTypedArray, paramXmlPullParser, "strokeMiterLimit", 10, l);
    a = j.b(paramTypedArray, paramXmlPullParser, "strokeColor", 3, a);
    d = j.a(paramTypedArray, paramXmlPullParser, "strokeAlpha", 11, d);
    b = j.a(paramTypedArray, paramXmlPullParser, "strokeWidth", 4, b);
    h = j.a(paramTypedArray, paramXmlPullParser, "trimPathEnd", 6, h);
    i = j.a(paramTypedArray, paramXmlPullParser, "trimPathOffset", 7, i);
    g = j.a(paramTypedArray, paramXmlPullParser, "trimPathStart", 5, g);
  }
  
  public void a(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser)
  {
    paramResources = k.b(paramResources, paramTheme, paramAttributeSet, a.c);
    a(paramResources, paramXmlPullParser);
    paramResources.recycle();
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */