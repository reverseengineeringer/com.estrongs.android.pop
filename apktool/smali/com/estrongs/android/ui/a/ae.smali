.class Lcom/estrongs/android/ui/a/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/a/aa;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/aa;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/a/ae;->b:Lcom/estrongs/android/ui/a/aa;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/ae;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ae;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/a/ae;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ae;->b:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ae;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    return-void
.end method
