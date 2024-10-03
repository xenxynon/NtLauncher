.class public final Lkotlinx/coroutines/scheduling/b;
.super Li6/l1;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final h:Lkotlinx/coroutines/scheduling/b;

.field private static final i:Li6/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lkotlinx/coroutines/scheduling/b;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/b;

    sget-object v0, Lkotlinx/coroutines/scheduling/m;->g:Lkotlinx/coroutines/scheduling/m;

    invoke-static {}, Lkotlinx/coroutines/internal/c0;->a()I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v2, v1}, Le6/e;->b(II)I

    move-result v4

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/internal/c0;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Li6/i0;->limitedParallelism(I)Li6/i0;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/b;->i:Li6/i0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li6/l1;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be invoked on Dispatchers.IO"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatch(Lq5/g;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lkotlinx/coroutines/scheduling/b;->i:Li6/i0;

    invoke-virtual {p0, p1, p2}, Li6/i0;->dispatch(Lq5/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchYield(Lq5/g;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lkotlinx/coroutines/scheduling/b;->i:Li6/i0;

    invoke-virtual {p0, p1, p2}, Li6/i0;->dispatchYield(Lq5/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lq5/h;->g:Lq5/h;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/scheduling/b;->dispatch(Lq5/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitedParallelism(I)Li6/i0;
    .locals 0

    sget-object p0, Lkotlinx/coroutines/scheduling/m;->g:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {p0, p1}, Li6/i0;->limitedParallelism(I)Li6/i0;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method
