.class Lcom/estrongs/android/pop/app/messagebox/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/messagebox/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/h;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/h;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/f;->e(Lcom/estrongs/android/pop/app/messagebox/f;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/h;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/f;->d(Lcom/estrongs/android/pop/app/messagebox/f;)Lcom/estrongs/android/pop/app/messagebox/l;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/h;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/l;->b(Lcom/estrongs/android/pop/app/messagebox/f;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/h;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/f;->b(Lcom/estrongs/android/pop/app/messagebox/f;)Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;->setListScrool(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/h;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/f;->f(Lcom/estrongs/android/pop/app/messagebox/f;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/h;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/messagebox/f;->a(Lcom/estrongs/android/pop/app/messagebox/f;I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/h;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/messagebox/f;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/h;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/f;->d(Lcom/estrongs/android/pop/app/messagebox/f;)Lcom/estrongs/android/pop/app/messagebox/l;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/h;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/l;->d(Lcom/estrongs/android/pop/app/messagebox/f;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/h;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/f;->g(Lcom/estrongs/android/pop/app/messagebox/f;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
