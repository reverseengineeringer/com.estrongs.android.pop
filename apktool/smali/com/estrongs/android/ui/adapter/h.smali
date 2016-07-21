.class Lcom/estrongs/android/ui/adapter/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/i;

.field final synthetic b:Lcom/estrongs/android/ui/adapter/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/g;Lcom/estrongs/android/ui/adapter/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/h;->b:Lcom/estrongs/android/ui/adapter/g;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/h;->a:Lcom/estrongs/android/ui/adapter/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/h;->a:Lcom/estrongs/android/ui/adapter/i;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/i;->c:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/h;->b:Lcom/estrongs/android/ui/adapter/g;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/g;->a(Lcom/estrongs/android/ui/adapter/g;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
