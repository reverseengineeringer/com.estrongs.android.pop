.class public Lcom/facebook/ads/internal/view/component/c;
.super Landroid/widget/ImageView;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/view/component/c;-><init>(Landroid/content/Context;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/facebook/ads/internal/view/component/c;->a:F

    return-void
.end method
