.class Lcom/estrongs/android/ui/navigation/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field final synthetic b:Lcom/estrongs/android/ui/navigation/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/s;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/z;->b:Lcom/estrongs/android/ui/navigation/s;

    iput-object p2, p0, Lcom/estrongs/android/ui/navigation/z;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/z;->b:Lcom/estrongs/android/ui/navigation/s;

    new-instance v1, Lcom/estrongs/android/ui/navigation/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/aa;-><init>(Lcom/estrongs/android/ui/navigation/z;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/navigation/s;->a(Lcom/estrongs/android/ui/navigation/r;)V

    const/4 v0, 0x1

    return v0
.end method
