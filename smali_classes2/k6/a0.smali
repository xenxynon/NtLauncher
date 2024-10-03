.class public Lk6/a0;
.super Lk6/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lk6/y;"
    }
.end annotation


# instance fields
.field private final j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final k:Li6/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/n<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Li6/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Li6/n<",
            "-",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lk6/y;-><init>()V

    iput-object p1, p0, Lk6/a0;->j:Ljava/lang/Object;

    iput-object p2, p0, Lk6/a0;->k:Li6/n;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lk6/a0;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public B(Lk6/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/m<",
            "*>;)V"
        }
    .end annotation

    iget-object p0, p0, Lk6/a0;->k:Li6/n;

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p1}, Lk6/m;->H()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public C(Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;
    .locals 1

    iget-object p0, p0, Lk6/a0;->k:Li6/n;

    sget-object p1, Ln5/t;->a:Ln5/t;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Li6/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Li6/p;->a:Lkotlinx/coroutines/internal/b0;

    return-object p0
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

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk6/a0;->A()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z()V
    .locals 1

    iget-object p0, p0, Lk6/a0;->k:Li6/n;

    sget-object v0, Li6/p;->a:Lkotlinx/coroutines/internal/b0;

    invoke-interface {p0, v0}, Li6/n;->G(Ljava/lang/Object;)V

    return-void
.end method
