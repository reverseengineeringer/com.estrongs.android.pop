.class Lcom/dianxinos/lockscreen/ui/g;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Landroid/graphics/PointF;

.field c:Landroid/graphics/PointF;

.field d:J

.field final synthetic e:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)V
    .locals 1

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/g;->e:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/g;->b:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/g;->c:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method a()Landroid/graphics/PointF;
    .locals 8

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/g;->d()D

    move-result-wide v0

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/g;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    iget-object v4, p0, Lcom/dianxinos/lockscreen/ui/g;->e:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-static {v4}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/dianxinos/lockscreen/ui/g;->b:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/g;->b:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-double v4, v3

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/g;->e:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-static {v3}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/dianxinos/lockscreen/ui/g;->b:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/g;->c:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/g;->c:Landroid/graphics/PointF;

    return-object v0
.end method

.method b()F
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/g;->d()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method c()F
    .locals 4

    const-wide v0, 0x4076800000000000L    # 360.0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/g;->d()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method d()D
    .locals 8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/g;->e:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->b(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/dianxinos/lockscreen/ui/g;->d:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    const/high16 v3, 0x44480000    # 800.0f

    div-float/2addr v1, v3

    cmpg-float v3, v1, v0

    if-gez v3, :cond_0

    :goto_0
    float-to-double v0, v0

    return-wide v0

    :cond_0
    cmpg-float v0, v1, v2

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
