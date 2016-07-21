.class public final Landroid/support/v4/widget/cn;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/widget/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/co;

    invoke-direct {v0}, Landroid/support/v4/widget/co;-><init>()V

    sput-object v0, Landroid/support/v4/widget/cn;->a:Landroid/support/v4/widget/ct;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/cr;

    invoke-direct {v0}, Landroid/support/v4/widget/cr;-><init>()V

    sput-object v0, Landroid/support/v4/widget/cn;->a:Landroid/support/v4/widget/ct;

    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/widget/cq;

    invoke-direct {v0}, Landroid/support/v4/widget/cq;-><init>()V

    sput-object v0, Landroid/support/v4/widget/cn;->a:Landroid/support/v4/widget/ct;

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/widget/cs;

    invoke-direct {v0}, Landroid/support/v4/widget/cs;-><init>()V

    sput-object v0, Landroid/support/v4/widget/cn;->a:Landroid/support/v4/widget/ct;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/widget/cp;

    invoke-direct {v0}, Landroid/support/v4/widget/cp;-><init>()V

    sput-object v0, Landroid/support/v4/widget/cn;->a:Landroid/support/v4/widget/ct;

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;)I
    .locals 1

    sget-object v0, Landroid/support/v4/widget/cn;->a:Landroid/support/v4/widget/ct;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ct;->a(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    sget-object v0, Landroid/support/v4/widget/cn;->a:Landroid/support/v4/widget/ct;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/ct;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
