.class Lcom/dianxinos/lockscreen/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/dianxinos/lockscreen/ui/d;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/d;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/e;->c:Lcom/dianxinos/lockscreen/ui/d;

    iput-object p2, p0, Lcom/dianxinos/lockscreen/ui/e;->a:Ljava/util/List;

    iput p3, p0, Lcom/dianxinos/lockscreen/ui/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/e;->c:Lcom/dianxinos/lockscreen/ui/d;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->c(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/e;->c:Lcom/dianxinos/lockscreen/ui/d;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->c(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/e;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/e;->c:Lcom/dianxinos/lockscreen/ui/d;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->d(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/e;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/e;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/e;->c:Lcom/dianxinos/lockscreen/ui/d;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/e;->c:Lcom/dianxinos/lockscreen/ui/d;

    iget-object v1, v1, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->e(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/e;->c:Lcom/dianxinos/lockscreen/ui/d;

    iget-object v2, v2, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-static {v2}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->d(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/e;->c:Lcom/dianxinos/lockscreen/ui/d;

    iget-object v2, v2, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-static {v2}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->f(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/e;->c:Lcom/dianxinos/lockscreen/ui/d;

    iget-object v3, v3, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-static {v3}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->d(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/e;->c:Lcom/dianxinos/lockscreen/ui/d;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    sget-object v1, Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;->CLEAN:Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->a(Lcom/dianxinos/lockscreen/ui/ChargeCleanView$Status;)V

    return-void
.end method
