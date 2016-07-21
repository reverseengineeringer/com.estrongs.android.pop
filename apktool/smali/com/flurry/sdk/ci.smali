.class public Lcom/flurry/sdk/ci;
.super Landroid/widget/ImageButton;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/flurry/sdk/ci;->a:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/ci;->b:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/ci;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/hc;

    invoke-direct {v0}, Lcom/flurry/sdk/hc;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->x()V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ci;->setFlurryMraidImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ci;->setBackgroundColor(I)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/ci;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ci;->a:Z

    return-void
.end method

.method public setDefaultLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/flurry/sdk/ci;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v2, v0

    float-to-int v1, v1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {p1, v4, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    mul-float v1, v3, v0

    float-to-int v1, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ci;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ci;->a:Z

    invoke-virtual {p0}, Lcom/flurry/sdk/ci;->b()V

    return-void
.end method

.method public setFlurryBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ci;->setBackgroundColor(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ci;->b:Z

    return-void
.end method

.method public setFlurryMraidImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ci;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ci;->c:Z

    return-void
.end method
