.class Lcom/dianxinos/lockscreen/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nineoldandroids/a/aj;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/r;->a:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/a/ac;)V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/r;->a:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->a(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;)Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/nineoldandroids/a/ac;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/r;->a:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    invoke-static {v1, v0}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->a(Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;F)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/r;->a:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->invalidate()V

    goto :goto_0
.end method
