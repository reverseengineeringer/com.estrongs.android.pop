.class Lcom/estrongs/android/pop/utils/ct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/estrongs/android/pop/utils/cq;

.field final synthetic b:Lcom/estrongs/android/pop/utils/cm;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/utils/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ct;->b:Lcom/estrongs/android/pop/utils/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/utils/cm;Lcom/estrongs/android/pop/utils/cn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/utils/ct;-><init>(Lcom/estrongs/android/pop/utils/cm;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ct;->a:Lcom/estrongs/android/pop/utils/cq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/utils/cq;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/ct;->a:Lcom/estrongs/android/pop/utils/cq;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ct;->b:Lcom/estrongs/android/pop/utils/cm;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cm;->c:Lcom/estrongs/android/pop/utils/ck;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/utils/ck;->a(Ljava/lang/Object;)V

    return-void
.end method
