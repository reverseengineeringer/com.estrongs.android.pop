.class public final Landroid/support/v4/widget/aq;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/widget/ListView;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/support/v4/widget/as;->a(Landroid/widget/ListView;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/widget/ar;->a(Landroid/widget/ListView;I)V

    goto :goto_0
.end method
