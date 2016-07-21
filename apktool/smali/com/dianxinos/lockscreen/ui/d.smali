.class Lcom/dianxinos/lockscreen/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    iput-object p2, p0, Lcom/dianxinos/lockscreen/ui/d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/l;->a(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v4, Lcom/dianxinos/lockscreen/ui/g;

    iget-object v5, p0, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    invoke-direct {v4, v5}, Lcom/dianxinos/lockscreen/ui/g;-><init>(Lcom/dianxinos/lockscreen/ui/ChargeCleanView;)V

    iput-object v0, v4, Lcom/dianxinos/lockscreen/ui/g;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, v4, Lcom/dianxinos/lockscreen/ui/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/d;->b:Lcom/dianxinos/lockscreen/ui/ChargeCleanView;

    new-instance v3, Lcom/dianxinos/lockscreen/ui/e;

    invoke-direct {v3, p0, v2, v1}, Lcom/dianxinos/lockscreen/ui/e;-><init>(Lcom/dianxinos/lockscreen/ui/d;Ljava/util/List;I)V

    invoke-virtual {v0, v3}, Lcom/dianxinos/lockscreen/ui/ChargeCleanView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
