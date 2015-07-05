.class Lcom/estrongs/android/pop/utils/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/pop/utils/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/c;Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/u;->c:Lcom/estrongs/android/pop/utils/c;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/u;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/u;->c:Lcom/estrongs/android/pop/utils/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/u;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/android/pop/utils/c;Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;)V

    return-void
.end method
