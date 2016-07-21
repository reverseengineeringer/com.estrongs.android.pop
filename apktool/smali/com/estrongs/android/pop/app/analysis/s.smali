.class final Lcom/estrongs/android/pop/app/analysis/s;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/p;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/analysis/p;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/s;->a:Lcom/estrongs/android/pop/app/analysis/p;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/analysis/p;Lcom/estrongs/android/pop/app/analysis/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/s;-><init>(Lcom/estrongs/android/pop/app/analysis/p;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/s;->a:Lcom/estrongs/android/pop/app/analysis/p;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/p;->b()V

    return-void
.end method
