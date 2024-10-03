.class public final Ld/c$b;
.super Lt1/k$b;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k$b<",
        "Ld/c;",
        "Ld/c$b;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Ld/c;->a()Ld/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lt1/k$b;-><init>(Lt1/k;)V

    return-void
.end method

.method synthetic constructor <init>(Ld/c$a;)V
    .locals 0

    invoke-direct {p0}, Ld/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/c$b;)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->t(Ld/c;Ld/c$b;)V

    return-object p0
.end method

.method public b(F)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->o(Ld/c;F)V

    return-object p0
.end method

.method public c(I)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->b(Ld/c;I)V

    return-object p0
.end method

.method public d(Z)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->q(Ld/c;Z)V

    return-object p0
.end method

.method public e(F)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->s(Ld/c;F)V

    return-object p0
.end method

.method public f(I)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->k(Ld/c;I)V

    return-object p0
.end method

.method public g(I)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->g(Ld/c;I)V

    return-object p0
.end method

.method public h(Ljava/lang/String;)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->c(Ld/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public i(I)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->d(Ld/c;I)V

    return-object p0
.end method

.method public j(F)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->m(Ld/c;F)V

    return-object p0
.end method

.method public k(F)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->n(Ld/c;F)V

    return-object p0
.end method

.method public l(I)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->h(Ld/c;I)V

    return-object p0
.end method

.method public m(I)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->i(Ld/c;I)V

    return-object p0
.end method

.method public n(I)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->e(Ld/c;I)V

    return-object p0
.end method

.method public o(F)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->j(Ld/c;F)V

    return-object p0
.end method

.method public p(F)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->l(Ld/c;F)V

    return-object p0
.end method

.method public q(I)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->r(Ld/c;I)V

    return-object p0
.end method

.method public r(I)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->f(Ld/c;I)V

    return-object p0
.end method

.method public s(Z)Ld/c$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/c;

    invoke-static {v0, p1}, Ld/c;->p(Ld/c;Z)V

    return-object p0
.end method
