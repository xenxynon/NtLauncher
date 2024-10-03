.class final Lkotlinx/coroutines/internal/u;
.super Li6/g2;
.source "SourceFile"

# interfaces
.implements Li6/u0;


# instance fields
.field private final g:Ljava/lang/Throwable;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Li6/g2;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/u;->g:Ljava/lang/Throwable;

    iput-object p2, p0, Lkotlinx/coroutines/internal/u;->h:Ljava/lang/String;

    return-void
.end method

.method private final C()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/u;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkotlinx/coroutines/internal/u;->h:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string v2, ". "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    const-string v0, "Module with the Main dispatcher had failed to initialize"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lkotlinx/coroutines/internal/u;->g:Ljava/lang/Throwable;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/internal/t;->d()Ljava/lang/Void;

    new-instance p0, Ln5/d;

    invoke-direct {p0}, Ln5/d;-><init>()V

    throw p0
.end method


# virtual methods
.method public B(Lq5/g;Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;->C()Ljava/lang/Void;

    new-instance p0, Ln5/d;

    invoke-direct {p0}, Ln5/d;-><init>()V

    throw p0
.end method

.method public E(JLi6/n;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Li6/n<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;->C()Ljava/lang/Void;

    new-instance p0, Ln5/d;

    invoke-direct {p0}, Ln5/d;-><init>()V

    throw p0
.end method

.method public bridge synthetic c(JLi6/n;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/internal/u;->E(JLi6/n;)Ljava/lang/Void;

    return-void
.end method

.method public bridge synthetic dispatch(Lq5/g;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/u;->B(Lq5/g;Ljava/lang/Runnable;)Ljava/lang/Void;

    return-void
.end method

.method public isDispatchNeeded(Lq5/g;)Z
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;->C()Ljava/lang/Void;

    new-instance p0, Ln5/d;

    invoke-direct {p0}, Ln5/d;-><init>()V

    throw p0
.end method

.method public k()Li6/g2;
    .locals 0

    return-object p0
.end method

.method public limitedParallelism(I)Li6/i0;
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;->C()Ljava/lang/Void;

    new-instance p0, Ln5/d;

    invoke-direct {p0}, Ln5/d;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatchers.Main[missing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/internal/u;->g:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    const-string v1, ", cause="

    invoke-static {v1, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
