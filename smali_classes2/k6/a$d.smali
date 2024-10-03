.class Lk6/a$d;
.super Lk6/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lk6/u<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final j:Lk6/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/a$a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final k:Li6/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/n<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk6/a$a;Li6/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/a$a<",
            "TE;>;",
            "Li6/n<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lk6/u;-><init>()V

    iput-object p1, p0, Lk6/a$d;->j:Lk6/a$a;

    iput-object p2, p0, Lk6/a$d;->k:Li6/n;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)Ly5/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ly5/l<",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk6/a$d;->j:Lk6/a$a;

    iget-object v0, v0, Lk6/a$a;->a:Lk6/a;

    iget-object v0, v0, Lk6/c;->g:Ly5/l;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lk6/a$d;->k:Li6/n;

    invoke-interface {p0}, Lq5/d;->getContext()Lq5/g;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/internal/v;->a(Ly5/l;Ljava/lang/Object;Lq5/g;)Ly5/l;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public B(Lk6/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/m<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p1, Lk6/m;->j:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lk6/a$d;->k:Li6/n;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Li6/n$a;->a(Li6/n;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk6/a$d;->k:Li6/n;

    invoke-virtual {p1}, Lk6/m;->G()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Li6/n;->j(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lk6/a$d;->j:Lk6/a$a;

    invoke-virtual {v1, p1}, Lk6/a$a;->e(Ljava/lang/Object;)V

    iget-object p0, p0, Lk6/a$d;->k:Li6/n;

    invoke-interface {p0, v0}, Li6/n;->G(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lk6/a$d;->j:Lk6/a$a;

    invoke-virtual {v0, p1}, Lk6/a$a;->e(Ljava/lang/Object;)V

    iget-object p0, p0, Lk6/a$d;->k:Li6/n;

    sget-object p1, Li6/p;->a:Lkotlinx/coroutines/internal/b0;

    invoke-interface {p0, p1}, Li6/n;->G(Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/o$b;",
            ")",
            "Lkotlinx/coroutines/internal/b0;"
        }
    .end annotation

    iget-object p2, p0, Lk6/a$d;->k:Li6/n;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lk6/a$d;->A(Ljava/lang/Object;)Ly5/l;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1, p0}, Li6/n;->m(Ljava/lang/Object;Ljava/lang/Object;Ly5/l;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Li6/p;->a:Lkotlinx/coroutines/internal/b0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Li6/q0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReceiveHasNext@"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
