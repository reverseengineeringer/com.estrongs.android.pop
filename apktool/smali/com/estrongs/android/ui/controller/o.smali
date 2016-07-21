.class Lcom/estrongs/android/ui/controller/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/o;->a:Lcom/estrongs/android/ui/controller/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/o;->a:Lcom/estrongs/android/ui/controller/i;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K()V

    return-void
.end method
