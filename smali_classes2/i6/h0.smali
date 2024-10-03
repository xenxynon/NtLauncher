.class public final Li6/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Lq5/g;Lq5/g;Z)Lq5/g;
    .locals 3

    invoke-static {p0}, Li6/h0;->c(Lq5/g;)Z

    move-result v0

    invoke-static {p1}, Li6/h0;->c(Lq5/g;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/a0;

    invoke-direct {v0}, Lkotlin/jvm/internal/a0;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    sget-object p1, Lq5/h;->g:Lq5/h;

    new-instance v2, Li6/h0$b;

    invoke-direct {v2, v0, p2}, Li6/h0$b;-><init>(Lkotlin/jvm/internal/a0;Z)V

    invoke-interface {p0, p1, v2}, Lq5/g;->fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq5/g;

    if-eqz v1, :cond_1

    iget-object p2, v0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast p2, Lq5/g;

    sget-object v1, Li6/h0$a;->g:Li6/h0$a;

    invoke-interface {p2, p1, v1}, Lq5/g;->fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    :cond_1
    iget-object p1, v0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast p1, Lq5/g;

    invoke-interface {p0, p1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lq5/g;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final c(Lq5/g;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Li6/h0$c;->g:Li6/h0$c;

    invoke-interface {p0, v0, v1}, Lq5/g;->fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Li6/m0;Lq5/g;)Lq5/g;
    .locals 1

    invoke-interface {p0}, Li6/m0;->getCoroutineContext()Lq5/g;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Li6/h0;->a(Lq5/g;Lq5/g;Z)Lq5/g;

    move-result-object p0

    invoke-static {}, Li6/b1;->a()Li6/i0;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, Lq5/e;->f:Lq5/e$b;

    invoke-interface {p0, p1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Li6/b1;->a()Li6/i0;

    move-result-object p1

    invoke-interface {p0, p1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final e(Lq5/g;Lq5/g;)Lq5/g;
    .locals 1

    invoke-static {p1}, Li6/h0;->c(Lq5/g;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Li6/h0;->a(Lq5/g;Lq5/g;Z)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lkotlin/coroutines/jvm/internal/e;)Li6/w2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/jvm/internal/e;",
            ")",
            "Li6/w2<",
            "*>;"
        }
    .end annotation

    :cond_0
    instance-of v0, p0, Li6/x0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/e;->getCallerFrame()Lkotlin/coroutines/jvm/internal/e;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    instance-of v0, p0, Li6/w2;

    if-eqz v0, :cond_0

    check-cast p0, Li6/w2;

    return-object p0
.end method

.method public static final g(Lq5/d;Lq5/g;Ljava/lang/Object;)Li6/w2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "*>;",
            "Lq5/g;",
            "Ljava/lang/Object;",
            ")",
            "Li6/w2<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Li6/x2;->g:Li6/x2;

    invoke-interface {p1, v0}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    invoke-static {p0}, Li6/h0;->f(Lkotlin/coroutines/jvm/internal/e;)Li6/w2;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2}, Li6/w2;->S0(Lq5/g;Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method
