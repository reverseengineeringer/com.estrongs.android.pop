.class Lcom/dianxinos/lockscreen/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/o;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/o;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/q;->a:Lcom/dianxinos/lockscreen/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/q;->a:Lcom/dianxinos/lockscreen/o;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/o;->a(Lcom/dianxinos/lockscreen/o;)Lcom/dianxinos/lockscreen/c;

    move-result-object v1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/q;->a:Lcom/dianxinos/lockscreen/o;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/o;->a(Lcom/dianxinos/lockscreen/o;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dianxinos/lockscreen/c;->b(Z)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/q;->a:Lcom/dianxinos/lockscreen/o;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/o;->b(Lcom/dianxinos/lockscreen/o;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
