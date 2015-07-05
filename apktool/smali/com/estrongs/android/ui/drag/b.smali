.class Lcom/estrongs/android/ui/drag/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/drag/l;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/estrongs/android/ui/drag/DragActionZone;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/drag/DragActionZone;Lcom/estrongs/android/ui/drag/l;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/b;->c:Lcom/estrongs/android/ui/drag/DragActionZone;

    iput-object p2, p0, Lcom/estrongs/android/ui/drag/b;->a:Lcom/estrongs/android/ui/drag/l;

    iput-object p3, p0, Lcom/estrongs/android/ui/drag/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/b;->c:Lcom/estrongs/android/ui/drag/DragActionZone;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/DragActionZone;->a(Lcom/estrongs/android/ui/drag/DragActionZone;)Lcom/estrongs/android/ui/drag/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/b;->a:Lcom/estrongs/android/ui/drag/l;

    iget-object v2, p0, Lcom/estrongs/android/ui/drag/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/ui/drag/c;->b(Lcom/estrongs/android/ui/drag/l;Ljava/lang/Object;)V

    return-void
.end method
