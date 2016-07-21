.class Lcom/estrongs/android/ui/topclassify/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/topclassify/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/topclassify/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/g;->a:Lcom/estrongs/android/ui/topclassify/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/g;->a:Lcom/estrongs/android/ui/topclassify/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/f;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/g;->a:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/f;)Lcom/estrongs/android/ui/topclassify/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/g;->a:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/f;)Lcom/estrongs/android/ui/topclassify/l;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/g;->a:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v1}, Lcom/estrongs/android/ui/topclassify/f;->b(Lcom/estrongs/android/ui/topclassify/f;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/topclassify/l;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
