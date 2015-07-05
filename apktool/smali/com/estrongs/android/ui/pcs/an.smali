.class Lcom/estrongs/android/ui/pcs/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/am;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/am;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/an;->a:Lcom/estrongs/android/ui/pcs/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/an;->a:Lcom/estrongs/android/ui/pcs/am;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/am;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/an;->a:Lcom/estrongs/android/ui/pcs/am;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/am;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->reload()V

    return-void
.end method
