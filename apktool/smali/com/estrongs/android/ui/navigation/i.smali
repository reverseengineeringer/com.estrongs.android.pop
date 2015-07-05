.class Lcom/estrongs/android/ui/navigation/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/navigation/r;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/navigation/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/i;->b:Lcom/estrongs/android/ui/navigation/h;

    iput-object p2, p0, Lcom/estrongs/android/ui/navigation/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/i;->b:Lcom/estrongs/android/ui/navigation/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/h;->a:Lcom/estrongs/android/ui/navigation/g;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/g;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/a;->b(Lcom/estrongs/android/ui/navigation/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    return-void
.end method
