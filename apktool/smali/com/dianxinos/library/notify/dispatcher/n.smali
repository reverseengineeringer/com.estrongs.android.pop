.class Lcom/dianxinos/library/notify/dispatcher/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/notify/dispatcher/m;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/notify/dispatcher/m;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/dispatcher/n;->a:Lcom/dianxinos/library/notify/dispatcher/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/n;->a:Lcom/dianxinos/library/notify/dispatcher/m;

    iget-object v0, v0, Lcom/dianxinos/library/notify/dispatcher/m;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-static {v0}, Lcom/dianxinos/library/notify/dispatcher/b;->i(Lcom/dianxinos/library/notify/dispatcher/b;)V

    return-void
.end method
