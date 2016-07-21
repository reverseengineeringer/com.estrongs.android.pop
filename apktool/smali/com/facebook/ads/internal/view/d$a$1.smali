.class Lcom/facebook/ads/internal/view/d$a$1;
.super Landroid/graphics/Paint;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d$a;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d$a$1;->a:Lcom/facebook/ads/internal/view/d$a;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d$a$1;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d$a$1;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d$a$1;->setStrokeWidth(F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d$a$1;->setAntiAlias(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d$a$1;->setColor(I)V

    return-void
.end method
