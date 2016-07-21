.class public final Landroid/support/v4/os/n;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/support/v4/os/o;->a()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/os/o;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
