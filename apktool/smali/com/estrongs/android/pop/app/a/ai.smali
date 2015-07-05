.class public Lcom/estrongs/android/pop/app/a/ai;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lcom/estrongs/android/pop/app/a/ak;

.field public c:Landroid/view/View;

.field public d:Z


# direct methods
.method constructor <init>(ILcom/estrongs/android/pop/app/a/ak;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/a/ai;->d:Z

    iput p1, p0, Lcom/estrongs/android/pop/app/a/ai;->a:I

    iput-object p2, p0, Lcom/estrongs/android/pop/app/a/ai;->b:Lcom/estrongs/android/pop/app/a/ak;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/a/ai;->c:Landroid/view/View;

    return-void
.end method
