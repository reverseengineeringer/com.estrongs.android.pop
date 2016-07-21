.class public final Landroid/support/v4/os/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/support/v4/os/h;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/os/h",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/os/j;->a(Landroid/support/v4/os/h;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/os/g;

    invoke-direct {v0, p0}, Landroid/support/v4/os/g;-><init>(Landroid/support/v4/os/h;)V

    goto :goto_0
.end method
