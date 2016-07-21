.class Lcom/dianxinos/library/notify/dispatcher/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/dxbase/h;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/notify/dispatcher/b;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/notify/dispatcher/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/dispatcher/o;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/o;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/dispatcher/b;->a(I)V

    return-void
.end method
