.class Lcom/estrongs/android/ui/dialog/cz;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/NaviListView;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/cy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/cy;Lcom/estrongs/android/ui/view/NaviListView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/cz;->b:Lcom/estrongs/android/ui/dialog/cy;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/cz;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cz;->a:Lcom/estrongs/android/ui/view/NaviListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/NaviListView;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cz;->b:Lcom/estrongs/android/ui/dialog/cy;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cy;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cz;->b:Lcom/estrongs/android/ui/dialog/cy;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/cy;->a:Lcom/estrongs/android/ui/a/g;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/g;->a()V

    goto :goto_0
.end method
