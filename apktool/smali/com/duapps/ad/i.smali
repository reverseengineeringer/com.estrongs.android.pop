.class Lcom/duapps/ad/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/b;

.field final synthetic b:Lcom/duapps/ad/g;


# direct methods
.method constructor <init>(Lcom/duapps/ad/g;Lcom/duapps/ad/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/i;->b:Lcom/duapps/ad/g;

    iput-object p2, p0, Lcom/duapps/ad/i;->a:Lcom/duapps/ad/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/duapps/ad/i;->b:Lcom/duapps/ad/g;

    iget-object v0, v0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/i;->b:Lcom/duapps/ad/g;

    iget-object v1, v1, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    iget-object v2, p0, Lcom/duapps/ad/i;->a:Lcom/duapps/ad/b;

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/e;->a(Lcom/duapps/ad/f;Lcom/duapps/ad/b;)V

    return-void
.end method
