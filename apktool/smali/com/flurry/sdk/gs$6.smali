.class Lcom/flurry/sdk/gs$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gs;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$6;->a:Lcom/flurry/sdk/gs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs$6;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extendedWebViewDialog.onDismiss()"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$6;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$6;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v0

    const-string v1, "javascript:if(window.mraid){window.mraid.close();};"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
