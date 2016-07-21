.class Lcom/estrongs/android/ui/view/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/el;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ba;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/bc;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/view/bc;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ba;->a(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ay;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->a(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ay;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :cond_2
    :goto_1
    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ba;->e(Lcom/estrongs/android/ui/view/ba;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ba;->a(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ay;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v1, v1, 0x1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/bc;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ba;->d(Lcom/estrongs/android/ui/view/ba;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/ba;->c(Lcom/estrongs/android/ui/view/ba;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v3, v2, v4}, Lcom/estrongs/android/ui/view/ba;->a(Lcom/estrongs/android/ui/view/ba;Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ba;->d(Lcom/estrongs/android/ui/view/ba;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v3, v2, v0}, Lcom/estrongs/android/ui/view/ba;->a(Lcom/estrongs/android/ui/view/ba;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bb;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/ba;->a(Lcom/estrongs/android/ui/view/ba;I)I

    move v0, p1

    goto :goto_1
.end method
