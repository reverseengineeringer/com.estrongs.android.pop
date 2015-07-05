.class Lcom/estrongs/android/pop/multicopy/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/multicopy/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/multicopy/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/multicopy/b;->a:Lcom/estrongs/android/pop/multicopy/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/b;->a:Lcom/estrongs/android/pop/multicopy/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/multicopy/a;->a(Lcom/estrongs/android/pop/multicopy/a;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method
