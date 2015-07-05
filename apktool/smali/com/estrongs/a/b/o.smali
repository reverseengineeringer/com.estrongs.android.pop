.class public interface abstract Lcom/estrongs/a/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/estrongs/a/b/b;"
    }
.end annotation


# static fields
.field public static final a:Lcom/estrongs/a/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/a/b/o",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/a/b/p;

    invoke-direct {v0}, Lcom/estrongs/a/b/p;-><init>()V

    sput-object v0, Lcom/estrongs/a/b/o;->a:Lcom/estrongs/a/b/o;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)Ljava/lang/Object;
.end method

.method public varargs abstract a(Ljava/lang/Object;[J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[J)V"
        }
    .end annotation
.end method
