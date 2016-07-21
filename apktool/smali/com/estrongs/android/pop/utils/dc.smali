.class Lcom/estrongs/android/pop/utils/dc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/estrongs/android/pop/utils/cz;

.field final synthetic b:Lcom/estrongs/android/pop/utils/cv;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/utils/cv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/dc;->b:Lcom/estrongs/android/pop/utils/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/utils/cv;Lcom/estrongs/android/pop/utils/cw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/utils/dc;-><init>(Lcom/estrongs/android/pop/utils/cv;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/dc;->a:Lcom/estrongs/android/pop/utils/cz;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/utils/cz;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/dc;->a:Lcom/estrongs/android/pop/utils/cz;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/dc;->b:Lcom/estrongs/android/pop/utils/cv;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cv;->c:Lcom/estrongs/android/pop/utils/ct;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/utils/ct;->a(Ljava/lang/Object;)V

    return-void
.end method
