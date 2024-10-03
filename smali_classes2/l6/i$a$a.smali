.class final Ll6/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll6/i$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic g:Lkotlin/jvm/internal/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/a0<",
            "Li6/v1;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Li6/m0;

.field final synthetic i:Ll6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll6/i<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final synthetic j:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/a0;Li6/m0;Ll6/i;Lkotlinx/coroutines/flow/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/a0<",
            "Li6/v1;",
            ">;",
            "Li6/m0;",
            "Ll6/i<",
            "TT;TR;>;",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ll6/i$a$a;->g:Lkotlin/jvm/internal/a0;

    iput-object p2, p0, Ll6/i$a$a;->h:Li6/m0;

    iput-object p3, p0, Ll6/i$a$a;->i:Ll6/i;

    iput-object p4, p0, Ll6/i$a$a;->j:Lkotlinx/coroutines/flow/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Ll6/i$a$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ll6/i$a$a$b;

    iget v1, v0, Ll6/i$a$a$b;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ll6/i$a$a$b;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Ll6/i$a$a$b;

    invoke-direct {v0, p0, p2}, Ll6/i$a$a$b;-><init>(Ll6/i$a$a;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Ll6/i$a$a$b;->j:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ll6/i$a$a$b;->l:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ll6/i$a$a$b;->i:Ljava/lang/Object;

    check-cast p0, Li6/v1;

    iget-object p1, v0, Ll6/i$a$a$b;->h:Ljava/lang/Object;

    iget-object p0, v0, Ll6/i$a$a$b;->g:Ljava/lang/Object;

    check-cast p0, Ll6/i$a$a;

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Ll6/i$a$a;->g:Lkotlin/jvm/internal/a0;

    iget-object p2, p2, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast p2, Li6/v1;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ll6/j;

    invoke-direct {v2}, Ll6/j;-><init>()V

    invoke-interface {p2, v2}, Li6/v1;->b(Ljava/util/concurrent/CancellationException;)V

    iput-object p0, v0, Ll6/i$a$a$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Ll6/i$a$a$b;->h:Ljava/lang/Object;

    iput-object p2, v0, Ll6/i$a$a$b;->i:Ljava/lang/Object;

    iput v3, v0, Ll6/i$a$a$b;->l:I

    invoke-interface {p2, v0}, Li6/v1;->f(Lq5/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iget-object p2, p0, Ll6/i$a$a;->g:Lkotlin/jvm/internal/a0;

    iget-object v0, p0, Ll6/i$a$a;->h:Li6/m0;

    const/4 v1, 0x0

    sget-object v2, Li6/o0;->j:Li6/o0;

    new-instance v3, Ll6/i$a$a$a;

    iget-object v4, p0, Ll6/i$a$a;->i:Ll6/i;

    iget-object p0, p0, Ll6/i$a$a;->j:Lkotlinx/coroutines/flow/f;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, p1, v5}, Ll6/i$a$a$a;-><init>(Ll6/i;Lkotlinx/coroutines/flow/f;Ljava/lang/Object;Lq5/d;)V

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object p0

    iput-object p0, p2, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
