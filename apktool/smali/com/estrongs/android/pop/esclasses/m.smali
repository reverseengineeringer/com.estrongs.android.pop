.class Lcom/estrongs/android/pop/esclasses/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/esclasses/ESScrollView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/esclasses/ESScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/m;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/m;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->a(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/m;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Lcom/estrongs/android/pop/esclasses/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/m;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->c(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/m;->a:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->c(Lcom/estrongs/android/pop/esclasses/ESScrollView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
