.class Lcom/estrongs/android/pop/app/editor/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/pop/app/editor/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/h;->b:Lcom/estrongs/android/pop/app/editor/g;

    iput p2, p0, Lcom/estrongs/android/pop/app/editor/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/h;->b:Lcom/estrongs/android/pop/app/editor/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/estrongs/android/pop/app/editor/h;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/h;->b:Lcom/estrongs/android/pop/app/editor/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/g;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->a()V

    return-void
.end method
