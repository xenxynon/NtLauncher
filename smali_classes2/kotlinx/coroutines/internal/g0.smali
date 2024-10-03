.class public final Lkotlinx/coroutines/internal/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/s2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li6/s2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final i:Lq5/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5/g$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ThreadLocal<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/g0;->g:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/internal/g0;->h:Ljava/lang/ThreadLocal;

    new-instance p1, Lkotlinx/coroutines/internal/h0;

    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/h0;-><init>(Ljava/lang/ThreadLocal;)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/g0;->i:Lq5/g$c;

    return-void
.end method


# virtual methods
.method public D(Lq5/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            ")TT;"
        }
    .end annotation

    iget-object p1, p0, Lkotlinx/coroutines/internal/g0;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/internal/g0;->h:Ljava/lang/ThreadLocal;

    iget-object p0, p0, Lkotlinx/coroutines/internal/g0;->g:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p1
.end method

.method public fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ly5/p<",
            "-TR;-",
            "Lq5/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Li6/s2$a;->a(Li6/s2;Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lq5/g$c;)Lq5/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lq5/g$b;",
            ">(",
            "Lq5/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->getKey()Lq5/g$c;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getKey()Lq5/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq5/g$c<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/internal/g0;->i:Lq5/g$c;

    return-object p0
.end method

.method public minusKey(Lq5/g$c;)Lq5/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g$c<",
            "*>;)",
            "Lq5/g;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g0;->getKey()Lq5/g$c;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lq5/h;->g:Lq5/h;

    :cond_0
    return-object p0
.end method

.method public plus(Lq5/g;)Lq5/g;
    .locals 0

    invoke-static {p0, p1}, Li6/s2$a;->b(Li6/s2;Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreadLocal(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/g0;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", threadLocal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/internal/g0;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z(Lq5/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/internal/g0;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
