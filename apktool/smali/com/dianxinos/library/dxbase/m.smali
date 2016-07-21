.class Lcom/dianxinos/library/dxbase/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/dxbase/n;

.field final synthetic b:Landroid/net/NetworkInfo;

.field final synthetic c:Lcom/dianxinos/library/dxbase/l;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/dxbase/l;Lcom/dianxinos/library/dxbase/n;Landroid/net/NetworkInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/dxbase/m;->c:Lcom/dianxinos/library/dxbase/l;

    iput-object p2, p0, Lcom/dianxinos/library/dxbase/m;->a:Lcom/dianxinos/library/dxbase/n;

    iput-object p3, p0, Lcom/dianxinos/library/dxbase/m;->b:Landroid/net/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/library/dxbase/m;->a:Lcom/dianxinos/library/dxbase/n;

    iget-object v1, p0, Lcom/dianxinos/library/dxbase/m;->b:Landroid/net/NetworkInfo;

    invoke-interface {v0, v1}, Lcom/dianxinos/library/dxbase/n;->a(Landroid/net/NetworkInfo;)V

    return-void
.end method
