.class final Lk6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk6/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk6/h<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lk6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lk6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/a<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk6/a$a;->a:Lk6/a;

    sget-object p1, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;

    iput-object p1, p0, Lk6/a$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private final c(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lk6/m;

    if-eqz p0, :cond_1

    check-cast p1, Lk6/m;

    iget-object p0, p1, Lk6/m;->j:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lk6/m;->G()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/internal/a0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final d(Lq5/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v0

    invoke-static {v0}, Li6/q;->b(Lq5/d;)Li6/o;

    move-result-object v0

    new-instance v1, Lk6/a$d;

    invoke-direct {v1, p0, v0}, Lk6/a$d;-><init>(Lk6/a$a;Li6/n;)V

    :cond_0
    iget-object v2, p0, Lk6/a$a;->a:Lk6/a;

    invoke-static {v2, v1}, Lk6/a;->F(Lk6/a;Lk6/u;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lk6/a$a;->a:Lk6/a;

    invoke-static {p0, v0, v1}, Lk6/a;->G(Lk6/a;Li6/n;Lk6/u;)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lk6/a$a;->a:Lk6/a;

    invoke-virtual {v2}, Lk6/a;->R()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lk6/a$a;->e(Ljava/lang/Object;)V

    instance-of v3, v2, Lk6/m;

    if-eqz v3, :cond_3

    check-cast v2, Lk6/m;

    iget-object p0, v2, Lk6/m;->j:Ljava/lang/Throwable;

    if-nez p0, :cond_2

    sget-object p0, Ln5/l;->h:Ln5/l$a;

    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {v2}, Lk6/m;->G()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object v3, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object p0, p0, Lk6/a$a;->a:Lk6/a;

    iget-object p0, p0, Lk6/c;->g:Ly5/l;

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lq5/d;->getContext()Lq5/g;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lkotlinx/coroutines/internal/v;->a(Ly5/l;Ljava/lang/Object;Lq5/g;)Ly5/l;

    move-result-object p0

    :goto_1
    invoke-interface {v0, v1, p0}, Li6/n;->k(Ljava/lang/Object;Ly5/l;)V

    :goto_2
    invoke-virtual {v0}, Li6/o;->u()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_5

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_5
    return-object p0
.end method


# virtual methods
.method public a(Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lk6/a$a;->b()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;

    if-eq v0, v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lk6/a$a;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lk6/a$a;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lk6/a$a;->a:Lk6/a;

    invoke-virtual {v0}, Lk6/a;->R()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk6/a$a;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lk6/a$a;->b()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lk6/a$a;->d(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk6/a$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lk6/a$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lk6/a$a;->b:Ljava/lang/Object;

    instance-of v1, v0, Lk6/m;

    if-nez v1, :cond_1

    sget-object v1, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lk6/a$a;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\'hasNext\' should be called prior to \'next\' invocation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast v0, Lk6/m;

    invoke-virtual {v0}, Lk6/m;->G()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/internal/a0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
