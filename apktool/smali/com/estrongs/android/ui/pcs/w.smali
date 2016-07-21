.class public Lcom/estrongs/android/ui/pcs/w;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/pcs/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/w;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/w;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/w;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/w;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/w;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/pcs/w;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/w;->a(Z)V

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/w;->b:Landroid/os/Handler;

    return-void
.end method

.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/ui/pcs/x;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/pcs/x;-><init>(Lcom/estrongs/android/ui/pcs/w;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
