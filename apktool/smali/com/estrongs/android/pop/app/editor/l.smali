.class Lcom/estrongs/android/pop/app/editor/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/l;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    new-instance v0, Lcom/estrongs/android/util/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/l;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/l;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/editor/m;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/editor/m;-><init>(Lcom/estrongs/android/pop/app/editor/l;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/util/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/e;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/c;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/l;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->q(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    const/4 v0, 0x1

    return v0
.end method
