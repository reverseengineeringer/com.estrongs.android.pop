.class Lcom/dianxinos/lockscreen/ui/o;
.super Lcom/nineoldandroids/a/c;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ui/m;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/m;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/o;->a:Lcom/dianxinos/lockscreen/ui/m;

    invoke-direct {p0}, Lcom/nineoldandroids/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/a/a;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/nineoldandroids/a/c;->a(Lcom/nineoldandroids/a/a;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/o;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->e(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/o;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/o;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v1, v1, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->g(Lcom/dianxinos/lockscreen/ui/RealTimeView;)I

    move-result v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/o;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v2, v2, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v2}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->h(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a(Lcom/dianxinos/lockscreen/ui/RealTimeView;I)I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/o;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v1, v0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/o;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->h(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/o;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v2, v2, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v2}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->i(Lcom/dianxinos/lockscreen/ui/RealTimeView;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/a/d;

    invoke-static {v1, v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a(Lcom/dianxinos/lockscreen/ui/RealTimeView;Lcom/dianxinos/lockscreen/a/d;)V

    goto :goto_0
.end method

.method public b(Lcom/nineoldandroids/a/a;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/nineoldandroids/a/c;->b(Lcom/nineoldandroids/a/a;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/o;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->e(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/o;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v0, v0, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/o;->a:Lcom/dianxinos/lockscreen/ui/m;

    iget-object v1, v1, Lcom/dianxinos/lockscreen/ui/m;->a:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->j(Lcom/dianxinos/lockscreen/ui/RealTimeView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
