.class Lcom/estrongs/android/pop/app/editor/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/r;->b:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/editor/r;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/app/editor/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/editor/s;-><init>(Lcom/estrongs/android/pop/app/editor/r;)V

    new-instance v1, Lcom/estrongs/android/pop/m;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/r;->b:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {v1, v2}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
