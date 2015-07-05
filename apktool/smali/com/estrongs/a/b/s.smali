.class public interface abstract Lcom/estrongs/a/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/b/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/estrongs/a/b/o",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/estrongs/a/b/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/a/b/t;

    invoke-direct {v0}, Lcom/estrongs/a/b/t;-><init>()V

    sput-object v0, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    return-void
.end method


# virtual methods
.method public abstract a(J)V
.end method
