.class public abstract Li6/i0;
.super Lq5/a;
.source "SourceFile"

# interfaces
.implements Lq5/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/i0$a;
    }
.end annotation


# static fields
.field public static final Key:Li6/i0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li6/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li6/i0$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Li6/i0;->Key:Li6/i0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lq5/e;->f:Lq5/e$b;

    invoke-direct {p0, v0}, Lq5/a;-><init>(Lq5/g$c;)V

    return-void
.end method


# virtual methods
.method public abstract dispatch(Lq5/g;Ljava/lang/Runnable;)V
.end method

.method public dispatchYield(Lq5/g;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Li6/i0;->dispatch(Lq5/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public get(Lq5/g$c;)Lq5/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lq5/g$b;",
            ">(",
            "Lq5/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lq5/e$a;->a(Lq5/e;Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    return-object p0
.end method

.method public final interceptContinuation(Lq5/d;)Lq5/d;
    .locals 1
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

    new-instance v0, Lkotlinx/coroutines/internal/f;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/f;-><init>(Li6/i0;Lq5/d;)V

    return-object v0
.end method

.method public isDispatchNeeded(Lq5/g;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public limitedParallelism(I)Li6/i0;
    .locals 1

    invoke-static {p1}, Lkotlinx/coroutines/internal/l;->a(I)V

    new-instance v0, Lkotlinx/coroutines/internal/k;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/k;-><init>(Li6/i0;I)V

    return-object v0
.end method

.method public minusKey(Lq5/g$c;)Lq5/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g$c<",
            "*>;)",
            "Lq5/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lq5/e$a;->b(Lq5/e;Lq5/g$c;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Li6/i0;)Li6/i0;
    .locals 0

    return-object p1
.end method

.method public final releaseInterceptedContinuation(Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "*>;)V"
        }
    .end annotation

    check-cast p1, Lkotlinx/coroutines/internal/f;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/f;->r()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Li6/q0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li6/q0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
