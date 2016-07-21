.class final Landroid/support/design/widget/dp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/cy;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/design/widget/cs;
    .locals 3

    new-instance v1, Landroid/support/design/widget/cs;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/design/widget/de;

    invoke-direct {v0}, Landroid/support/design/widget/de;-><init>()V

    :goto_0
    invoke-direct {v1, v0}, Landroid/support/design/widget/cs;-><init>(Landroid/support/design/widget/cz;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/support/design/widget/dc;

    invoke-direct {v0}, Landroid/support/design/widget/dc;-><init>()V

    goto :goto_0
.end method
