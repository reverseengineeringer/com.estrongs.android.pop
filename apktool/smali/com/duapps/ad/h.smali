.class Lcom/duapps/ad/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/g;


# direct methods
.method constructor <init>(Lcom/duapps/ad/g;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/h;->a:Lcom/duapps/ad/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/h;->a:Lcom/duapps/ad/g;

    iget-object v0, v0, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/h;->a:Lcom/duapps/ad/g;

    iget-object v1, v1, Lcom/duapps/ad/g;->a:Lcom/duapps/ad/f;

    invoke-interface {v0, v1}, Lcom/duapps/ad/e;->b(Lcom/duapps/ad/f;)V

    return-void
.end method
