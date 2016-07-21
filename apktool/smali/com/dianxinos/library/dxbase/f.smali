.class final Lcom/dianxinos/library/dxbase/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/dxbase/h;

.field final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/dxbase/h;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/dxbase/f;->a:Lcom/dianxinos/library/dxbase/h;

    iput-object p2, p0, Lcom/dianxinos/library/dxbase/f;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/library/dxbase/f;->a:Lcom/dianxinos/library/dxbase/h;

    iget-object v1, p0, Lcom/dianxinos/library/dxbase/f;->b:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/dianxinos/library/dxbase/h;->a(Landroid/content/Intent;)V

    return-void
.end method
