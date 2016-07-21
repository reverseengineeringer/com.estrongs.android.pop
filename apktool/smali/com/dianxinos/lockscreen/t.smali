.class public Lcom/dianxinos/lockscreen/t;
.super Landroid/widget/Scroller;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/LockScreenContainer;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/dianxinos/lockscreen/LockScreenContainer;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/dianxinos/lockscreen/t;->a:Lcom/dianxinos/lockscreen/LockScreenContainer;

    invoke-direct {p0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/dianxinos/lockscreen/t;->b:I

    return-void
.end method


# virtual methods
.method public startScroll(IIII)V
    .locals 6

    iget v5, p0, Lcom/dianxinos/lockscreen/t;->b:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    iget v5, p0, Lcom/dianxinos/lockscreen/t;->b:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
