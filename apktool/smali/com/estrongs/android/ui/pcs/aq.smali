.class Lcom/estrongs/android/ui/pcs/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/ap;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/aq;->a:Lcom/estrongs/android/ui/pcs/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aq;->a:Lcom/estrongs/android/ui/pcs/ap;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/ap;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aq;->a:Lcom/estrongs/android/ui/pcs/ap;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/ap;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->reload()V

    return-void
.end method
