package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ta;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class DataType
  implements SafeParcelable
{
  public static final DataType A;
  public static final DataType B;
  public static final DataType C;
  public static final Parcelable.Creator<DataType> CREATOR = new g();
  public static final Set<DataType> D;
  public static final DataType E;
  public static final DataType F;
  public static final DataType G;
  public static final DataType H;
  public static final DataType I;
  @Deprecated
  public static final DataType J;
  public static final DataType K;
  public static final DataType L;
  public static final DataType M;
  public static final DataType N;
  public static final DataType O;
  public static final DataType P;
  public static final DataType Q;
  public static final DataType R;
  public static final DataType S;
  public static final DataType T;
  public static final DataType[] U;
  private static final Map<DataType, List<DataType>> V;
  public static final DataType a = new DataType("com.google.step_count.delta", new Field[] { Field.d });
  public static final DataType b = new DataType("com.google.step_count.cumulative", new Field[] { Field.d });
  public static final DataType c = new DataType("com.google.step_count.cadence", new Field[] { Field.t });
  public static final DataType d = new DataType("com.google.activity.segment", new Field[] { Field.a });
  public static final DataType e = new DataType("com.google.floor_change", new Field[] { Field.a, Field.b, Field.A, Field.D });
  public static final DataType f = new DataType("com.google.calories.consumed", new Field[] { Field.v });
  public static final DataType g = new DataType("com.google.calories.expended", new Field[] { Field.v });
  public static final DataType h = new DataType("com.google.calories.bmr", new Field[] { Field.v });
  public static final DataType i = new DataType("com.google.power.sample", new Field[] { Field.w });
  public static final DataType j = new DataType("com.google.activity.sample", new Field[] { Field.a, Field.b });
  public static final DataType k = new DataType("com.google.activity.edge", new Field[] { Field.a, Field.S });
  public static final DataType l = new DataType("com.google.accelerometer", new Field[] { Field.T, Field.U, Field.V });
  public static final DataType m = new DataType("com.google.heart_rate.bpm", new Field[] { Field.i });
  public static final DataType n = new DataType("com.google.location.sample", new Field[] { Field.j, Field.k, Field.l, Field.m });
  public static final DataType o = new DataType("com.google.location.track", new Field[] { Field.j, Field.k, Field.l, Field.m });
  public static final DataType p = new DataType("com.google.distance.delta", new Field[] { Field.n });
  public static final DataType q = new DataType("com.google.distance.cumulative", new Field[] { Field.n });
  public static final DataType r = new DataType("com.google.speed", new Field[] { Field.s });
  public static final DataType s = new DataType("com.google.cycling.wheel_revolution.cumulative", new Field[] { Field.u });
  public static final DataType t = new DataType("com.google.cycling.wheel_revolution.rpm", new Field[] { Field.t });
  public static final DataType u = new DataType("com.google.cycling.pedaling.cumulative", new Field[] { Field.u });
  public static final DataType v = new DataType("com.google.cycling.pedaling.cadence", new Field[] { Field.t });
  public static final DataType w = new DataType("com.google.height", new Field[] { Field.o });
  public static final DataType x = new DataType("com.google.weight", new Field[] { Field.p });
  public static final DataType y = new DataType("com.google.body.fat.percentage", new Field[] { Field.r });
  public static final DataType z = new DataType("com.google.body.waist.circumference", new Field[] { Field.q });
  private final int W;
  private final String X;
  private final List<Field> Y;
  
  static
  {
    A = new DataType("com.google.body.hip.circumference", new Field[] { Field.q });
    B = new DataType("com.google.nutrition", new Field[] { Field.z, Field.x, Field.y });
    C = new DataType("com.google.activity.exercise", new Field[] { Field.G, Field.H, Field.e, Field.J, Field.I });
    D = Collections.unmodifiableSet(new HashSet(Arrays.asList(new DataType[] { a, p, d, e, r, m, x, n, f, g, y, A, z, B })));
    E = new DataType("com.google.activity.summary", new Field[] { Field.a, Field.e, Field.K });
    F = new DataType("com.google.floor_change.summary", new Field[] { Field.g, Field.h, Field.B, Field.C, Field.E, Field.F });
    G = new DataType("com.google.calories.bmr.summary", new Field[] { Field.L, Field.M, Field.N });
    H = a;
    I = p;
    J = f;
    K = g;
    L = new DataType("com.google.heart_rate.summary", new Field[] { Field.L, Field.M, Field.N });
    M = new DataType("com.google.location.bounding_box", new Field[] { Field.O, Field.P, Field.Q, Field.R });
    N = new DataType("com.google.power.summary", new Field[] { Field.L, Field.M, Field.N });
    O = new DataType("com.google.speed.summary", new Field[] { Field.L, Field.M, Field.N });
    P = new DataType("com.google.body.fat.percentage.summary", new Field[] { Field.L, Field.M, Field.N });
    Q = new DataType("com.google.body.hip.circumference.summary", new Field[] { Field.L, Field.M, Field.N });
    R = new DataType("com.google.body.waist.circumference.summary", new Field[] { Field.L, Field.M, Field.N });
    S = new DataType("com.google.weight.summary", new Field[] { Field.L, Field.M, Field.N });
    T = new DataType("com.google.nutrition.summary", new Field[] { Field.z, Field.x });
    V = new DataType.1();
    U = new DataType[] { l, k, C, j, d, E, y, P, A, Q, z, R, h, G, f, g, v, u, s, t, q, p, e, F, m, L, w, M, n, o, B, T, i, N, r, O, c, b, a, x, S };
  }
  
  DataType(int paramInt, String paramString, List<Field> paramList)
  {
    W = paramInt;
    X = paramString;
    Y = Collections.unmodifiableList(paramList);
  }
  
  public DataType(String paramString, Field... paramVarArgs)
  {
    this(1, paramString, ta.a(paramVarArgs));
  }
  
  private boolean a(DataType paramDataType)
  {
    return (X.equals(X)) && (Y.equals(Y));
  }
  
  public String a()
  {
    return X;
  }
  
  public List<Field> b()
  {
    return Y;
  }
  
  public String c()
  {
    if (X.startsWith("com.google.")) {
      return X.substring(11);
    }
    return X;
  }
  
  int d()
  {
    return W;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    return (this == paramObject) || (((paramObject instanceof DataType)) && (a((DataType)paramObject)));
  }
  
  public int hashCode()
  {
    return X.hashCode();
  }
  
  public String toString()
  {
    return String.format("DataType{%s%s}", new Object[] { X, Y });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    g.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.fitness.data.DataType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */