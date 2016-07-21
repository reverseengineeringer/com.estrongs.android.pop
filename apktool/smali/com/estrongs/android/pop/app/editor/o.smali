.class Lcom/estrongs/android/pop/app/editor/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/o;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/o;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/ab;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/o;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/pop/app/editor/ab;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/g;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/ab;)Lcom/estrongs/android/pop/app/editor/ab;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/o;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->r(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ab;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/m;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/o;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {v1, v2}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/editor/ab;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/o;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->r(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ab;->execute()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
