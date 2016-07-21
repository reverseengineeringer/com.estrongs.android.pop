.class Lcom/estrongs/android/pop/app/cleaner/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/d;->a:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/d;->a:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->d()V

    return-void
.end method
