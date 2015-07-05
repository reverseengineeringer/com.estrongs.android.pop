.class Lcom/estrongs/android/view/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iput p2, v0, Lcom/estrongs/android/view/aw;->Q:I

    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget-object v1, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget v1, v1, Lcom/estrongs/android/view/aw;->Q:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/estrongs/android/view/aw;->R:I

    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iput p3, v0, Lcom/estrongs/android/view/aw;->S:I

    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->F:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->Z()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    invoke-virtual {v0}, Lcom/estrongs/android/d/k;->b()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->F:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    invoke-virtual {v0}, Lcom/estrongs/android/d/k;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    invoke-virtual {v0}, Lcom/estrongs/android/d/k;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
