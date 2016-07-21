.class Lcom/estrongs/android/ui/navigation/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field final synthetic b:Lcom/estrongs/android/ui/navigation/r;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/r;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/aa;->b:Lcom/estrongs/android/ui/navigation/r;

    iput-object p2, p0, Lcom/estrongs/android/ui/navigation/aa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/aa;->b:Lcom/estrongs/android/ui/navigation/r;

    new-instance v1, Lcom/estrongs/android/ui/navigation/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/ab;-><init>(Lcom/estrongs/android/ui/navigation/aa;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/navigation/r;->a(Lcom/estrongs/android/ui/navigation/q;)V

    const/4 v0, 0x1

    return v0
.end method
