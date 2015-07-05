.class Lcom/estrongs/android/pop/app/ko;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/RecommItemImageViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;

    const v1, 0x7f0a0383

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x61000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public a(IF)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->b(Lcom/estrongs/android/pop/app/RecommItemImageViewer;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a(Lcom/estrongs/android/pop/app/RecommItemImageViewer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a(Lcom/estrongs/android/pop/app/RecommItemImageViewer;I)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->b(Lcom/estrongs/android/pop/app/RecommItemImageViewer;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a(Lcom/estrongs/android/pop/app/RecommItemImageViewer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;

    const v1, 0x7f0a0383

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method
