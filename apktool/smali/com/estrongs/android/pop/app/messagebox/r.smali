.class Lcom/estrongs/android/pop/app/messagebox/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/r;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/r;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->b(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Lcom/estrongs/android/pop/app/messagebox/w;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/w;->a(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/r;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->c(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/r;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->d(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)V

    return-void
.end method
