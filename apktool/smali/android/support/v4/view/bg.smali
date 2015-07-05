.class public Landroid/support/v4/view/bg;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/bj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/bi;

    invoke-direct {v0}, Landroid/support/v4/view/bi;-><init>()V

    sput-object v0, Landroid/support/v4/view/bg;->a:Landroid/support/v4/view/bj;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/bh;

    invoke-direct {v0}, Landroid/support/v4/view/bh;-><init>()V

    sput-object v0, Landroid/support/v4/view/bg;->a:Landroid/support/v4/view/bj;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bg;->a:Landroid/support/v4/view/bj;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bj;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
