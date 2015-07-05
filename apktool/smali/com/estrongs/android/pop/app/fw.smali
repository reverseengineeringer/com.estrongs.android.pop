.class Lcom/estrongs/android/pop/app/fw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/fv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/fv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fw;->a:Lcom/estrongs/android/pop/app/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/fx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fx;-><init>(Lcom/estrongs/android/pop/app/fw;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
