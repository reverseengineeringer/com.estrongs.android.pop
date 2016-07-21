.class Lcom/estrongs/android/pop/app/editor/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/s;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/s;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d()V

    const/4 v0, 0x0

    return v0
.end method
