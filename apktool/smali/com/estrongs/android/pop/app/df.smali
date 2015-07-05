.class Lcom/estrongs/android/pop/app/df;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/pop/app/dd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/dd;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/df;->b:Lcom/estrongs/android/pop/app/dd;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/df;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/df;->b:Lcom/estrongs/android/pop/app/dd;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/df;->b:Lcom/estrongs/android/pop/app/dd;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/df;->b:Lcom/estrongs/android/pop/app/dd;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/df;->b:Lcom/estrongs/android/pop/app/dd;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/df;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/df;->b:Lcom/estrongs/android/pop/app/dd;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->i(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/df;->b:Lcom/estrongs/android/pop/app/dd;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/df;->b:Lcom/estrongs/android/pop/app/dd;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->j(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/df;->b:Lcom/estrongs/android/pop/app/dd;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->j(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/df;->b:Lcom/estrongs/android/pop/app/dd;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->k(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
