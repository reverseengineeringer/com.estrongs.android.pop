.class Lcom/estrongs/android/pop/app/cleaner/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/unlock/y;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/j;->a:Lcom/estrongs/android/pop/app/cleaner/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/j;->a:Lcom/estrongs/android/pop/app/cleaner/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/i;->notifyDataSetChanged()V

    return-void
.end method
