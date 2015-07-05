.class Lcom/estrongs/android/ui/c/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/estrongs/android/ui/c/b/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/o;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/p;->c:Lcom/estrongs/android/ui/c/b/o;

    iput-wide p2, p0, Lcom/estrongs/android/ui/c/b/p;->a:J

    iput-wide p4, p0, Lcom/estrongs/android/ui/c/b/p;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/p;->c:Lcom/estrongs/android/ui/c/b/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/o;->b:Lcom/estrongs/android/ui/c/a/f;

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/b/p;->a:J

    iget-wide v4, p0, Lcom/estrongs/android/ui/c/b/p;->b:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/estrongs/android/ui/c/a/f;->b(JJ)V

    return-void
.end method
