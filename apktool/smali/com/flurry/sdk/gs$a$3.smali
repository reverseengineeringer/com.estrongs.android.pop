.class Lcom/flurry/sdk/gs$a$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gs$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gs$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$a$3;->a:Lcom/flurry/sdk/gs$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs$a$3;->a:Lcom/flurry/sdk/gs$a;

    iget-object v1, v1, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customViewFullScreenDialog.onDismiss()"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$a$3;->a:Lcom/flurry/sdk/gs$a;

    iget-object v0, v0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->s(Lcom/flurry/sdk/gs;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$a$3;->a:Lcom/flurry/sdk/gs$a;

    iget-object v0, v0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->t(Lcom/flurry/sdk/gs;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$a$3;->a:Lcom/flurry/sdk/gs$a;

    iget-object v0, v0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->t(Lcom/flurry/sdk/gs;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :cond_0
    return-void
.end method
