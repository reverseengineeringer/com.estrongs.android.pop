.class Lcom/estrongs/android/pop/app/editor/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/d;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {}, Lcom/estrongs/android/util/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/app/editor/ac;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/estrongs/android/pop/app/editor/ac;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;IZ)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ac;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/app/editor/ac;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {v0, v1, v3, v3}, Lcom/estrongs/android/pop/app/editor/ac;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;IZ)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ac;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_1
.end method
