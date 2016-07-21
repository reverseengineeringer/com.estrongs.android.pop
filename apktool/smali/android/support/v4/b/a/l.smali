.class Landroid/support/v4/b/a/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b/a/u;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/b/a/u;

    invoke-direct {v0, p0}, Landroid/support/v4/b/a/u;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method
