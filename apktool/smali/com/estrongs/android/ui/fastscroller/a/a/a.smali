.class public Lcom/estrongs/android/ui/fastscroller/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/estrongs/android/ui/fastscroller/a/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/fastscroller/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/fastscroller/a/a/a;->a:Lcom/estrongs/android/ui/fastscroller/a/a;

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/a/a/a;->a:Lcom/estrongs/android/ui/fastscroller/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/fastscroller/a/a;->a()F

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/fastscroller/a/a/a;->a:Lcom/estrongs/android/ui/fastscroller/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/fastscroller/a/a;->b()F

    move-result v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/estrongs/android/ui/fastscroller/a/a/a;->a:Lcom/estrongs/android/ui/fastscroller/a/a;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/fastscroller/a/a;->b()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method
