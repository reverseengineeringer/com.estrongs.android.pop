.class Lcom/estrongs/android/pop/app/unlock/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/unlock/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/unlock/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/unlock/p;->b:Lcom/estrongs/android/pop/app/unlock/m;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/unlock/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/p;->b:Lcom/estrongs/android/pop/app/unlock/m;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/p;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/unlock/m;->a(Lcom/estrongs/android/pop/app/unlock/m;Ljava/lang/String;)Z

    return-void
.end method
