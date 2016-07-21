.class final Lcom/estrongs/android/ui/pcs/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ap;->a:Lcom/baidu/sapi2/SapiWebView;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/ap;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ap;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/estrongs/android/ui/pcs/aq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/aq;-><init>(Lcom/estrongs/android/ui/pcs/ap;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
