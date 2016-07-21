.class Lcom/dianxinos/library/notify/dispatcher/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/notify/dispatcher/b;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/notify/dispatcher/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/dispatcher/l;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/l;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-static {v0}, Lcom/dianxinos/library/notify/dispatcher/b;->e(Lcom/dianxinos/library/notify/dispatcher/b;)V

    return-void
.end method
