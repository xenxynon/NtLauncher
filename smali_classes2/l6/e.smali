.class public abstract Ll6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll6/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll6/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final g:Lq5/g;

.field public final h:I

.field public final i:Lk6/e;


# direct methods
.method public constructor <init>(Lq5/g;ILk6/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6/e;->g:Lq5/g;

    iput p2, p0, Ll6/e;->h:I

    iput-object p3, p0, Ll6/e;->i:Lk6/e;

    return-void
.end method

.method static synthetic d(Ll6/e;Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ll6/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Ll6/e$a;-><init>(Lkotlinx/coroutines/flow/f;Ll6/e;Lq5/d;)V

    invoke-static {v0, p2}, Li6/n0;->c(Ly5/p;Lq5/d;)Ljava/lang/Object;

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
.method public a(Lq5/g;ILk6/e;)Lkotlinx/coroutines/flow/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            ")",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ll6/e;->g:Lq5/g;

    invoke-interface {p1, v0}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p1

    sget-object v0, Lk6/e;->g:Lk6/e;

    if-eq p3, v0, :cond_0

    goto :goto_2

    :cond_0
    iget p3, p0, Ll6/e;->h:I

    const/4 v0, -0x3

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    :goto_0
    move p2, p3

    goto :goto_1

    :cond_2
    const/4 v0, -0x2

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_4
    add-int/2addr p3, p2

    if-ltz p3, :cond_5

    goto :goto_0

    :cond_5
    const p2, 0x7fffffff

    :goto_1
    iget-object p3, p0, Ll6/e;->i:Lk6/e;

    :goto_2
    iget-object v0, p0, Ll6/e;->g:Lq5/g;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Ll6/e;->h:I

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Ll6/e;->i:Lk6/e;

    if-ne p3, v0, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Ll6/e;->f(Lq5/g;ILk6/e;)Ll6/e;

    move-result-object p0

    return-object p0
.end method

.method protected c()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

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

    invoke-static {p0, p1, p2}, Ll6/e;->d(Ll6/e;Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected abstract e(Lk6/t;Lq5/d;)Ljava/lang/Object;
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
.end method

.method protected abstract f(Lq5/g;ILk6/e;)Ll6/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            ")",
            "Ll6/e<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final g()Ly5/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly5/p<",
            "Lk6/t<",
            "-TT;>;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ll6/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll6/e$b;-><init>(Ll6/e;Lq5/d;)V

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget p0, p0, Ll6/e;->h:I

    const/4 v0, -0x3

    if-ne p0, v0, :cond_0

    const/4 p0, -0x2

    :cond_0
    return p0
.end method

.method public i(Li6/m0;)Lk6/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            ")",
            "Lk6/v<",
            "TT;>;"
        }
    .end annotation

    iget-object v1, p0, Ll6/e;->g:Lq5/g;

    invoke-virtual {p0}, Ll6/e;->h()I

    move-result v2

    iget-object v3, p0, Ll6/e;->i:Lk6/e;

    sget-object v4, Li6/o0;->i:Li6/o0;

    invoke-virtual {p0}, Ll6/e;->g()Ly5/p;

    move-result-object v6

    const/4 v5, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lk6/r;->c(Li6/m0;Lq5/g;ILk6/e;Li6/o0;Ly5/l;Ly5/p;ILjava/lang/Object;)Lk6/v;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ll6/e;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Ll6/e;->g:Lq5/g;

    sget-object v2, Lq5/h;->g:Lq5/h;

    if-eq v1, v2, :cond_1

    const-string v2, "context="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Ll6/e;->h:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "capacity="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Ll6/e;->i:Lk6/e;

    sget-object v2, Lk6/e;->g:Lk6/e;

    if-eq v1, v2, :cond_3

    const-string v2, "onBufferOverflow="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Li6/q0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5b

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const-string v1, ", "

    invoke-static/range {v0 .. v8}, Lo5/j;->P(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ly5/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
