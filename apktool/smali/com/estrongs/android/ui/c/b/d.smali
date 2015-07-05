.class Lcom/estrongs/android/ui/c/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

.field final synthetic b:Lcom/estrongs/android/ui/c/b/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/b;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/d;->b:Lcom/estrongs/android/ui/c/b/b;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/d;->b:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/c/b/b;->b(Lcom/estrongs/android/ui/c/b/b;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    const/4 v0, 0x0

    return v0
.end method
