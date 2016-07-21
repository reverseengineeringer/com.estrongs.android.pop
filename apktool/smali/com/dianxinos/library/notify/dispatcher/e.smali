.class Lcom/dianxinos/library/notify/dispatcher/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/dxbase/h;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/notify/dispatcher/b;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/notify/dispatcher/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/dispatcher/e;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "package:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/library/notify/dispatcher/e;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    const/16 v2, 0xc

    invoke-static {v1, v2, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Lcom/dianxinos/library/notify/dispatcher/b;ILjava/lang/Object;)V

    goto :goto_0
.end method
