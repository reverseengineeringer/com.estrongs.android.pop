.class Lcom/dianxinos/lockscreen/ui/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nineoldandroids/a/aj;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ui/m;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/m;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/n;->a:Lcom/dianxinos/lockscreen/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/a/ac;)V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/n;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->e(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/n;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v1, v0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-virtual {p1}, Lcom/nineoldandroids/a/ac;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a(Lcom/dianxinos/lockscreen/ui/RealTimeView;F)F

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/n;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->b(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/n;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v1, v1, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->f(Lcom/dianxinos/lockscreen/ui/RealTimeView;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/b/a;->c(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/n;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->invalidate()V

    goto :goto_0
.end method
