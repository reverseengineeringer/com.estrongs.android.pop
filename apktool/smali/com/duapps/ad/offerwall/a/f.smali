.class Lcom/duapps/ad/offerwall/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/a/c;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/f;->a:Lcom/duapps/ad/offerwall/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/f;->a:Lcom/duapps/ad/offerwall/a/c;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->d(Lcom/duapps/ad/offerwall/a/b;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/f;->a:Lcom/duapps/ad/offerwall/a/c;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->d(Lcom/duapps/ad/offerwall/a/b;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/duapps/ad/offerwall/a/a;->a(I)V

    :cond_0
    return-void
.end method
