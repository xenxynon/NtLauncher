.class public interface abstract Li6/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/v1$b;,
        Li6/v1$a;
    }
.end annotation


# static fields
.field public static final d:Li6/v1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Li6/v1$b;->g:Li6/v1$b;

    sput-object v0, Li6/v1;->d:Li6/v1$b;

    return-void
.end method


# virtual methods
.method public abstract A()Z
.end method

.method public abstract a()Z
.end method

.method public abstract b(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract f(Lq5/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract h()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract n(Li6/v;)Li6/t;
.end method

.method public abstract p(Ly5/l;)Li6/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)",
            "Li6/c1;"
        }
    .end annotation
.end method

.method public abstract start()Z
.end method

.method public abstract w(ZZLy5/l;)Li6/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)",
            "Li6/c1;"
        }
    .end annotation
.end method
