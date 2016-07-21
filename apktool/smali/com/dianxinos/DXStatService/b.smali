.class public Lcom/dianxinos/DXStatService/b;
.super Ljava/lang/Object;


# direct methods
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

    if-ne v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
