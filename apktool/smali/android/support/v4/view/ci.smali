.class public final Landroid/support/v4/view/ci;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/cl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/ck;

    invoke-direct {v0}, Landroid/support/v4/view/ck;-><init>()V

    sput-object v0, Landroid/support/v4/view/ci;->a:Landroid/support/v4/view/cl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/cj;

    invoke-direct {v0}, Landroid/support/v4/view/cj;-><init>()V

    sput-object v0, Landroid/support/v4/view/ci;->a:Landroid/support/v4/view/cl;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/ci;->a:Landroid/support/v4/view/cl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/cl;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/ci;->a:Landroid/support/v4/view/cl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/cl;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
