.class public abstract Lcom/estrongs/android/pop/app/cleaner/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field protected b:Lcom/estrongs/android/view/w;

.field protected c:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/view/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/a;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/a;->b:Lcom/estrongs/android/view/w;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/a;->c:Z

    return-void
.end method
