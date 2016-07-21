.class Lcom/dianxinos/library/notify/dispatcher/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/notify/dispatcher/b;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/notify/dispatcher/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/dispatcher/k;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "try to schedule load essential data"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/k;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-static {v0}, Lcom/dianxinos/library/notify/dispatcher/b;->d(Lcom/dianxinos/library/notify/dispatcher/b;)V

    return-void
.end method
