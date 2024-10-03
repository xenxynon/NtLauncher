.class public final Lk6/m;
.super Lk6/y;
.source "SourceFile"

# interfaces
.implements Lk6/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lk6/y;",
        "Lk6/w<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final j:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lk6/y;-><init>()V

    iput-object p1, p0, Lk6/m;->j:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public bridge synthetic A()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lk6/m;->F()Lk6/m;

    move-result-object p0

    return-object p0
.end method

.method public B(Lk6/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/m<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public C(Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;
    .locals 0

    sget-object p0, Li6/p;->a:Lkotlinx/coroutines/internal/b0;

    return-object p0
.end method

.method public E()Lk6/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk6/m<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public F()Lk6/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk6/m<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final G()Ljava/lang/Throwable;
    .locals 1

    iget-object p0, p0, Lk6/m;->j:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    new-instance p0, Lk6/n;

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Lk6/n;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final H()Ljava/lang/Throwable;
    .locals 1

    iget-object p0, p0, Lk6/m;->j:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    new-instance p0, Lk6/o;

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Lk6/o;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lk6/m;->E()Lk6/m;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method

.method public g(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/o$b;",
            ")",
            "Lkotlinx/coroutines/internal/b0;"
        }
    .end annotation

    sget-object p0, Li6/p;->a:Lkotlinx/coroutines/internal/b0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closed@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li6/q0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk6/m;->j:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z()V
    .locals 0

    return-void
.end method
