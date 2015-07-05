.class Lcom/estrongs/android/ui/c/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/c/b/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/n;->b:Lcom/estrongs/android/ui/c/b/l;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/n;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/n;->b:Lcom/estrongs/android/ui/c/b/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/l;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    const-string v0, "Home_Sdcard"

    const-string v1, "Home_Sdcard"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Home_Sdcard_UV"

    const-string v1, "Home_Sdcard_UV"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
