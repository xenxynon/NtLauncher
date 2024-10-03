.class Lk6/a$b;
.super Lk6/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.field public final j:Li6/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final k:I


# direct methods
.method public constructor <init>(Li6/n;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/n<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lk6/u;-><init>()V

    iput-object p1, p0, Lk6/a$b;->j:Li6/n;

    iput p2, p0, Lk6/a$b;->k:I

    return-void
.end method


# virtual methods
.method public B(Lk6/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/m<",
            "*>;)V"
        }
    .end annotation

    iget v0, p0, Lk6/a$b;->k:I

    const/4 v1, 0x1

    iget-object p0, p0, Lk6/a$b;->j:Li6/n;

    if-ne v0, v1, :cond_0

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    sget-object v0, Lk6/j;->b:Lk6/j$b;

    iget-object p1, p1, Lk6/m;->j:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lk6/j$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lk6/j;->b(Ljava/lang/Object;)Lk6/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p1}, Lk6/m;->G()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final C(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget p0, p0, Lk6/a$b;->k:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lk6/j;->b:Lk6/j$b;

    invoke-virtual {p0, p1}, Lk6/j$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lk6/j;->b(Ljava/lang/Object;)Lk6/j;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object p0, p0, Lk6/a$b;->j:Li6/n;

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

    iget-object p2, p0, Lk6/a$b;->j:Li6/n;

    invoke-virtual {p0, p1}, Lk6/a$b;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lk6/u;->A(Ljava/lang/Object;)Ly5/l;

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveElement@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li6/q0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lk6/a$b;->k:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
