.class Lcom/estrongs/android/pop/app/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/a/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/c;->b:Lcom/estrongs/android/pop/app/a/b;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/a/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->b(Ljava/lang/String;)Z

    return-void
.end method
