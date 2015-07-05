.class Lcom/estrongs/android/pop/app/imageviewer/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

.field private b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

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
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    rem-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_1

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v1, p1, v0

    const/4 v0, 0x0

    if-lez v1, :cond_2

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->b:I

    if-ne v1, v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->b:I

    neg-int v2, v2

    if-ne v1, v2, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setSelection(I)V

    goto :goto_0

    :cond_5
    if-gez v1, :cond_6

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->b:I

    neg-int v2, v2

    if-ne v1, v2, :cond_7

    :cond_6
    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->b:I

    if-ne v1, v2, :cond_4

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/au;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public d(I)V
    .locals 0

    return-void
.end method
