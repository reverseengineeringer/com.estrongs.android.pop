.class Lcom/estrongs/android/pop/view/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/drag/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/drag/l;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/av;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;)V

    return-void
.end method

.method public b(Lcom/estrongs/android/ui/drag/l;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
