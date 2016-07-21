.class public abstract Lcom/dianxinos/lockscreen/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/dianxinos/lockscreen/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method a(Lcom/dianxinos/lockscreen/w;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/v;->a:Lcom/dianxinos/lockscreen/w;

    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/v;->a:Lcom/dianxinos/lockscreen/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/v;->a:Lcom/dianxinos/lockscreen/w;

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/w;->a()V

    :cond_0
    return-void
.end method
