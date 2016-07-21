.class Lcom/estrongs/android/pop/app/cleaner/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/e;

.field private b:J

.field private final c:F

.field private final d:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/e;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/g;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->D()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->b:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->a(Lcom/estrongs/android/pop/app/cleaner/c;)Lcom/estrongs/android/ui/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/g;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    iget v1, v1, Lcom/estrongs/android/pop/app/cleaner/e;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/b;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/g;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cleaner/c;->a(Lcom/estrongs/android/pop/app/cleaner/c;)Lcom/estrongs/android/ui/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/b;->a()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->c:F

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->b:J

    long-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/g;->c:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->d(Lcom/estrongs/android/pop/app/cleaner/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->b:J

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/g;->d:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->b:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->b:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/cleaner/g;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/view/w;->a(J)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->u()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/g;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/view/w;->a(J)V

    goto :goto_1
.end method
