.class Lcom/estrongs/android/ui/controller/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/controller/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/s;->b:Lcom/estrongs/android/ui/controller/h;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/s;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/f/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/s;->b:Lcom/estrongs/android/ui/controller/h;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/s;->a:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lcom/estrongs/android/ui/f/a;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/a;->a()V

    return-void
.end method
