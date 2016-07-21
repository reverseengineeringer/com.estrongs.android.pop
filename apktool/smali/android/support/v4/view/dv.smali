.class public final Landroid/support/v4/view/dv;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/dy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/ea;

    invoke-direct {v0}, Landroid/support/v4/view/ea;-><init>()V

    sput-object v0, Landroid/support/v4/view/dv;->a:Landroid/support/v4/view/dy;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/dz;

    invoke-direct {v0}, Landroid/support/v4/view/dz;-><init>()V

    sput-object v0, Landroid/support/v4/view/dv;->a:Landroid/support/v4/view/dy;

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/dx;

    invoke-direct {v0}, Landroid/support/v4/view/dx;-><init>()V

    sput-object v0, Landroid/support/v4/view/dv;->a:Landroid/support/v4/view/dy;

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/dw;

    invoke-direct {v0}, Landroid/support/v4/view/dw;-><init>()V

    sput-object v0, Landroid/support/v4/view/dv;->a:Landroid/support/v4/view/dy;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/view/eb;

    invoke-direct {v0}, Landroid/support/v4/view/eb;-><init>()V

    sput-object v0, Landroid/support/v4/view/dv;->a:Landroid/support/v4/view/dy;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/dv;->a:Landroid/support/v4/view/dy;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/dy;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
