.class final Lkotlinx/coroutines/flow/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/d;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field final synthetic g:Lkotlinx/coroutines/flow/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic h:Lkotlin/jvm/internal/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/a0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/d;Lkotlin/jvm/internal/a0;Lkotlinx/coroutines/flow/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/d<",
            "TT;>;",
            "Lkotlin/jvm/internal/a0<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/d$a;->g:Lkotlinx/coroutines/flow/d;

    iput-object p2, p0, Lkotlinx/coroutines/flow/d$a;->h:Lkotlin/jvm/internal/a0;

    iput-object p3, p0, Lkotlinx/coroutines/flow/d$a;->i:Lkotlinx/coroutines/flow/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/d$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/d$a$a;

    iget v1, v0, Lkotlinx/coroutines/flow/d$a$a;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/d$a$a;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/d$a$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/d$a$a;-><init>(Lkotlinx/coroutines/flow/d$a;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/d$a$a;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/d$a$a;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/coroutines/flow/d$a;->g:Lkotlinx/coroutines/flow/d;

    iget-object p2, p2, Lkotlinx/coroutines/flow/d;->h:Ly5/l;

    invoke-interface {p2, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lkotlinx/coroutines/flow/d$a;->h:Lkotlin/jvm/internal/a0;

    iget-object v2, v2, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    sget-object v4, Ll6/s;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v2, v4, :cond_4

    iget-object v4, p0, Lkotlinx/coroutines/flow/d$a;->g:Lkotlinx/coroutines/flow/d;

    iget-object v4, v4, Lkotlinx/coroutines/flow/d;->i:Ly5/p;

    invoke-interface {v4, v2, p2}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_4
    :goto_1
    iget-object v2, p0, Lkotlinx/coroutines/flow/d$a;->h:Lkotlin/jvm/internal/a0;

    iput-object p2, v2, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/flow/d$a;->i:Lkotlinx/coroutines/flow/f;

    iput v3, v0, Lkotlinx/coroutines/flow/d$a$a;->i:I

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
