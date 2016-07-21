.class Lcom/estrongs/android/ui/view/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/view/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ac;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/af;->b:Lcom/estrongs/android/ui/view/ac;

    iput p2, p0, Lcom/estrongs/android/ui/view/af;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ac;->b(Lcom/estrongs/android/ui/view/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ac;->c(Lcom/estrongs/android/ui/view/ac;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/view/af;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ac;->c(Lcom/estrongs/android/ui/view/ac;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/view/af;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/ui/view/ac;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x124f82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ac;->c(Lcom/estrongs/android/ui/view/ac;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/view/af;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/ui/view/ac;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x124f83

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v0, p0, Lcom/estrongs/android/ui/view/af;->a:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ac;->d(Lcom/estrongs/android/ui/view/ac;)I

    move-result v0

    iget v2, p0, Lcom/estrongs/android/ui/view/af;->a:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput v0, v1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/ui/view/ac;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
