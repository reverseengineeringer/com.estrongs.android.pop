.class public final Lcom/flurry/sdk/fl;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/Window;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/high16 v2, 0x1000000

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method
