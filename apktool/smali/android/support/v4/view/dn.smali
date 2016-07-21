.class public final Landroid/support/v4/view/dn;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/ds;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/dr;

    invoke-direct {v0}, Landroid/support/v4/view/dr;-><init>()V

    sput-object v0, Landroid/support/v4/view/dn;->a:Landroid/support/v4/view/ds;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/dq;

    invoke-direct {v0}, Landroid/support/v4/view/dq;-><init>()V

    sput-object v0, Landroid/support/v4/view/dn;->a:Landroid/support/v4/view/ds;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/dp;

    invoke-direct {v0}, Landroid/support/v4/view/dp;-><init>()V

    sput-object v0, Landroid/support/v4/view/dn;->a:Landroid/support/v4/view/ds;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/view/do;

    invoke-direct {v0}, Landroid/support/v4/view/do;-><init>()V

    sput-object v0, Landroid/support/v4/view/dn;->a:Landroid/support/v4/view/ds;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/dn;->a:Landroid/support/v4/view/ds;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ds;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewConfiguration;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/dn;->a:Landroid/support/v4/view/ds;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ds;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
