.class Lcom/estrongs/android/ui/pcs/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/j;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/l;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/l;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/j;->dismiss()V

    return-void
.end method
