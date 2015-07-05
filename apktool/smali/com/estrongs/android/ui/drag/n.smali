.class Lcom/estrongs/android/ui/drag/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/estrongs/android/ui/drag/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/drag/m;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/n;->b:Lcom/estrongs/android/ui/drag/m;

    iput-object p2, p0, Lcom/estrongs/android/ui/drag/n;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/n;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
