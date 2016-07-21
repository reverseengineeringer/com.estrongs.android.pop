.class Lcom/dianxinos/lockscreen/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ui/RealTimeView;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/RealTimeView;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a(Lcom/dianxinos/lockscreen/ui/RealTimeView;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->b(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2}, Lcom/dianxinos/lockscreen/c/l;->a(Landroid/view/View;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a(Lcom/dianxinos/lockscreen/ui/RealTimeView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v3}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->c(Lcom/dianxinos/lockscreen/ui/RealTimeView;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Lcom/nineoldandroids/a/ac;->b([F)Lcom/nineoldandroids/a/ac;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a(Lcom/dianxinos/lockscreen/ui/RealTimeView;Lcom/nineoldandroids/a/ac;)Lcom/nineoldandroids/a/ac;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->d(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Lcom/nineoldandroids/a/ac;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/ac;->b(J)Lcom/nineoldandroids/a/ac;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->d(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Lcom/nineoldandroids/a/ac;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/ac;->a(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->d(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Lcom/nineoldandroids/a/ac;

    move-result-object v0

    new-instance v1, Lcom/dianxinos/lockscreen/ui/n;

    invoke-direct {v1, p0}, Lcom/dianxinos/lockscreen/ui/n;-><init>(Lcom/dianxinos/lockscreen/ui/m;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/ac;->a(Lcom/nineoldandroids/a/aj;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->d(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Lcom/nineoldandroids/a/ac;

    move-result-object v0

    new-instance v1, Lcom/dianxinos/lockscreen/ui/o;

    invoke-direct {v1, p0}, Lcom/dianxinos/lockscreen/ui/o;-><init>(Lcom/dianxinos/lockscreen/ui/m;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/ac;->a(Lcom/nineoldandroids/a/b;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->d(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Lcom/nineoldandroids/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/ac;->a()V

    return-void
.end method
