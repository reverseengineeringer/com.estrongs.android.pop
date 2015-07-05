.class public abstract Lcom/estrongs/android/ui/c/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field protected b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/a;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/a;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a/a;->b(Landroid/view/View;)V

    return-void
.end method

.method protected abstract b(Landroid/view/View;)V
.end method
