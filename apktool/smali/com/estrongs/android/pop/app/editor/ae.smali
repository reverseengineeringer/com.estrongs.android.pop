.class Lcom/estrongs/android/pop/app/editor/ae;
.super Lcom/estrongs/android/pop/app/a;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/a;-><init>(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Z)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Z)V

    return-void
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/ae;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->l(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
