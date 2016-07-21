.class Landroid/support/design/widget/do;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/design/widget/cy;

.field private static final b:Landroid/support/design/widget/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/support/design/widget/dp;

    invoke-direct {v0}, Landroid/support/design/widget/dp;-><init>()V

    sput-object v0, Landroid/support/design/widget/do;->a:Landroid/support/design/widget/cy;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/design/widget/ds;

    invoke-direct {v0, v2}, Landroid/support/design/widget/ds;-><init>(Landroid/support/design/widget/dp;)V

    sput-object v0, Landroid/support/design/widget/do;->b:Landroid/support/design/widget/dq;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/design/widget/dr;

    invoke-direct {v0, v2}, Landroid/support/design/widget/dr;-><init>(Landroid/support/design/widget/dp;)V

    sput-object v0, Landroid/support/design/widget/do;->b:Landroid/support/design/widget/dq;

    goto :goto_0
.end method

.method static a()Landroid/support/design/widget/cs;
    .locals 1

    sget-object v0, Landroid/support/design/widget/do;->a:Landroid/support/design/widget/cy;

    invoke-interface {v0}, Landroid/support/design/widget/cy;->a()Landroid/support/design/widget/cs;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/design/widget/do;->b:Landroid/support/design/widget/dq;

    invoke-interface {v0, p0}, Landroid/support/design/widget/dq;->a(Landroid/view/View;)V

    return-void
.end method
