.class public Lcom/estrongs/android/ui/view/DragListView;
.super Lcom/estrongs/android/pop/esclasses/AbsDragListView;


# instance fields
.field private c:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast p1, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object p1, p0, Lcom/estrongs/android/ui/view/DragListView;->c:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ac;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ac;->b(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    return-void
.end method

.method public a(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a(I)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/DragListView;->b(I)V

    iget v0, p0, Lcom/estrongs/android/ui/view/DragListView;->b:I

    iput v0, p0, Lcom/estrongs/android/ui/view/DragListView;->a:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ac;

    iget v1, p0, Lcom/estrongs/android/ui/view/DragListView;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ac;->b(I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/DragListView;->c:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(II)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/DragListView;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ac;->b(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    return-void
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0a009c

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
