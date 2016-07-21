.class Lcom/estrongs/android/pop/app/editor/l;
.super Lcom/estrongs/a/a;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/l;->a:Lcom/estrongs/android/pop/app/editor/k;

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public task()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/l;->a:Lcom/estrongs/android/pop/app/editor/k;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/k;->b:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/l;->a:Lcom/estrongs/android/pop/app/editor/k;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/k;->b:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/l;->a:Lcom/estrongs/android/pop/app/editor/k;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/app/editor/k;->a:Z

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/editor/c;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/l;->a:Lcom/estrongs/android/pop/app/editor/k;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/k;->b:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/b;)Lcom/estrongs/android/pop/app/editor/b;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/l;->a:Lcom/estrongs/android/pop/app/editor/k;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/k;->b:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->finish()V

    const/4 v0, 0x1

    return v0
.end method
