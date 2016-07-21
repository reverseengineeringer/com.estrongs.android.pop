package com.flurry.sdk;

import android.graphics.Point;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class cc
{
  private static final List<Integer> a = ;
  private static final SparseArray<Point> b = b();
  
  public static int a(Point paramPoint)
  {
    if (paramPoint == null) {
      return -1;
    }
    Iterator localIterator = a.iterator();
    Integer localInteger;
    Point localPoint;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localInteger = (Integer)localIterator.next();
      localPoint = a(localInteger.intValue());
    } while ((localPoint == null) || (x < x) || (y < y));
    for (int i = localInteger.intValue();; i = -1) {
      return i;
    }
  }
  
  public static Point a(int paramInt)
  {
    return (Point)b.get(paramInt);
  }
  
  private static List<Integer> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(Integer.valueOf(11));
    localArrayList.add(Integer.valueOf(12));
    localArrayList.add(Integer.valueOf(15));
    localArrayList.add(Integer.valueOf(10));
    localArrayList.add(Integer.valueOf(13));
    return Collections.unmodifiableList(localArrayList);
  }
  
  private static SparseArray<Point> b()
  {
    SparseArray localSparseArray = new SparseArray();
    localSparseArray.put(11, new Point(728, 90));
    localSparseArray.put(12, new Point(468, 60));
    localSparseArray.put(15, new Point(320, 50));
    localSparseArray.put(10, new Point(300, 250));
    localSparseArray.put(13, new Point(120, 600));
    return localSparseArray;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */