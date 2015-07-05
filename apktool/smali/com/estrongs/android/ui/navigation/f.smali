.class Lcom/estrongs/android/ui/navigation/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/navigation/r;


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/estrongs/android/ui/navigation/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/e;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/f;->b:Lcom/estrongs/android/ui/navigation/e;

    iput-object p2, p0, Lcom/estrongs/android/ui/navigation/f;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/f;->b:Lcom/estrongs/android/ui/navigation/e;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/e;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/a;->d(Lcom/estrongs/android/ui/navigation/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/f;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
