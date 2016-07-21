.class public Lcom/dianxinos/dxservice/stat/o;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILjava/lang/Object;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne v0, p0, :cond_0

    instance-of v2, p1, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljava/lang/Number;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    const/16 v0, 0x8

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v2, p1, [B

    if-eqz v2, :cond_3

    const/16 v0, 0xa

    goto :goto_1

    :cond_3
    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    const/16 v0, 0x9

    goto :goto_1

    :cond_4
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    instance-of v2, p1, Ljava/lang/Short;

    if-nez v2, :cond_1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_1

    :cond_7
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_1

    :cond_8
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto :goto_1

    :cond_9
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    goto :goto_1

    :cond_a
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_b

    const/4 v0, 0x7

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_1
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x2

    if-eq v1, p0, :cond_0

    const/4 v1, 0x3

    if-eq v1, p0, :cond_0

    const/4 v1, 0x4

    if-eq v1, p0, :cond_0

    const/4 v1, 0x5

    if-eq v1, p0, :cond_0

    const/4 v1, 0x6

    if-eq v1, p0, :cond_0

    const/4 v1, 0x7

    if-eq v1, p0, :cond_0

    const/16 v1, 0x8

    if-eq v1, p0, :cond_0

    const/16 v1, 0x9

    if-eq v1, p0, :cond_0

    const/16 v1, 0xa

    if-ne v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
