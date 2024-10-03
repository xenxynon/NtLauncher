.class public abstract Ll6/g;
.super Ll6/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ll6/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final j:Lkotlinx/coroutines/flow/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/e<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/e<",
            "+TS;>;",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Ll6/e;-><init>(Lq5/g;ILk6/e;)V

    iput-object p1, p0, Ll6/g;->j:Lkotlinx/coroutines/flow/e;

    return-void
.end method

.method static synthetic j(Ll6/g;Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ll6/e;->h:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p2}, Lq5/d;->getContext()Lq5/g;

    move-result-object v0

    iget-object v1, p0, Ll6/e;->g:Lq5/g;

    invoke-interface {v0, v1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Ll6/g;->m(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    sget-object v2, Lq5/e;->f:Lq5/e$b;

    invoke-interface {v1, v2}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v3

    invoke-interface {v0, v2}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v1, p2}, Ll6/g;->l(Lkotlinx/coroutines/flow/f;Lq5/g;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2}, Ll6/e;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method static synthetic k(Ll6/g;Lk6/t;Lq5/d;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ll6/w;

    invoke-direct {v0, p1}, Ll6/w;-><init>(Lk6/z;)V

    invoke-virtual {p0, v0, p2}, Ll6/g;->m(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final l(Lkotlinx/coroutines/flow/f;Lq5/g;Lq5/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Lq5/g;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p3}, Lq5/d;->getContext()Lq5/g;

    move-result-object v0

    invoke-static {p1, v0}, Ll6/f;->a(Lkotlinx/coroutines/flow/f;Lq5/g;)Lkotlinx/coroutines/flow/f;

    move-result-object v2

    new-instance v4, Ll6/g$a;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Ll6/g$a;-><init>(Ll6/g;Lq5/d;)V

    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Ll6/f;->c(Lq5/g;Ljava/lang/Object;Ljava/lang/Object;Ly5/p;Lq5/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ll6/g;->j(Ll6/g;Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected e(Lk6/t;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/t<",
            "-TT;>;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ll6/g;->k(Ll6/g;Lk6/t;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected abstract m(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ll6/g;->j:Lkotlinx/coroutines/flow/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ll6/e;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
