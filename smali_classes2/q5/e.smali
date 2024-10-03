.class public interface abstract Lq5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq5/e$b;,
        Lq5/e$a;
    }
.end annotation


# static fields
.field public static final f:Lq5/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lq5/e$b;->g:Lq5/e$b;

    sput-object v0, Lq5/e;->f:Lq5/e$b;

    return-void
.end method


# virtual methods
.method public abstract interceptContinuation(Lq5/d;)Lq5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq5/d<",
            "-TT;>;)",
            "Lq5/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract releaseInterceptedContinuation(Lq5/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "*>;)V"
        }
    .end annotation
.end method
