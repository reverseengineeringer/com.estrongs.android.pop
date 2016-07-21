.class Lcom/estrongs/android/ui/pcs/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/o;->a:Lcom/estrongs/android/ui/pcs/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/o;->a:Lcom/estrongs/android/ui/pcs/l;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/l;->dismiss()V

    return-void
.end method
