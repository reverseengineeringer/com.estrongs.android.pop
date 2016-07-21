.class Lcom/estrongs/android/ui/adapter/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/adapter/a;

.field final synthetic d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;IILcom/estrongs/android/ui/adapter/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/cl;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    iput p2, p0, Lcom/estrongs/android/ui/adapter/cl;->a:I

    iput p3, p0, Lcom/estrongs/android/ui/adapter/cl;->b:I

    iput-object p4, p0, Lcom/estrongs/android/ui/adapter/cl;->c:Lcom/estrongs/android/ui/adapter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/estrongs/android/ui/adapter/cl;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/estrongs/android/ui/adapter/cl;->b:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cl;->c:Lcom/estrongs/android/ui/adapter/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/a;->i:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cl;->c:Lcom/estrongs/android/ui/adapter/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/a;->i:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cl;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cl;->c:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cl;->c:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cl;->c:Lcom/estrongs/android/ui/adapter/a;

    new-instance v2, Lcom/estrongs/android/ui/adapter/cm;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/adapter/cm;-><init>(Lcom/estrongs/android/ui/adapter/cl;)V

    iput-object v2, v1, Lcom/estrongs/android/ui/adapter/a;->i:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cl;->c:Lcom/estrongs/android/ui/adapter/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/a;->i:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
