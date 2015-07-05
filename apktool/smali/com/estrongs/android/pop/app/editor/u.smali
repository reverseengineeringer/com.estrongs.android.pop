.class Lcom/estrongs/android/pop/app/editor/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/u;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/u;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/u;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/u;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I

    return-void
.end method
