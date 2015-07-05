.class Lcom/estrongs/android/pop/esclasses/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/esclasses/ESScrollView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/esclasses/ESScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/l;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/l;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->a(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/l;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/esclasses/l;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/l;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Lcom/estrongs/android/pop/esclasses/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/l;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Lcom/estrongs/android/pop/esclasses/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/esclasses/o;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/l;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/l;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Lcom/estrongs/android/pop/esclasses/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/l;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Lcom/estrongs/android/pop/esclasses/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/esclasses/o;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/l;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Lcom/estrongs/android/pop/esclasses/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/l;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Lcom/estrongs/android/pop/esclasses/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/esclasses/o;->c()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
