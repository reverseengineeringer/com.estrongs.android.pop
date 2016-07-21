.class Lcom/dianxinos/lockscreen/ui/s;
.super Lcom/nineoldandroids/a/c;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/s;->a:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    invoke-direct {p0}, Lcom/nineoldandroids/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/nineoldandroids/a/a;)V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/s;->a:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->b(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;)Lcom/dianxinos/lockscreen/ui/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/s;->a:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->c(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/s;->a:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->b(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;)Lcom/dianxinos/lockscreen/ui/t;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/ui/t;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
