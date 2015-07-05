.class Lcom/estrongs/android/pop/app/editor/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/n;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/n;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->v(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/ks;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/n;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const-string v3, "document"

    invoke-direct {v0, v2, v3, v1}, Lcom/estrongs/android/ui/dialog/ks;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    new-instance v1, Lcom/estrongs/android/pop/app/editor/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/o;-><init>(Lcom/estrongs/android/pop/app/editor/n;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ks;->a(Lcom/estrongs/android/ui/dialog/kv;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ks;->show()V

    :cond_0
    return-void
.end method
