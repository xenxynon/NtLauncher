.class final Lz1/c$e;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/c;->p(Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/l<",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.anim.SimulatedAnimatorSet$startAnim$3"
    f = "SimulatedAnimatorSet.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Lz1/c;


# direct methods
.method constructor <init>(Lz1/c;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            "Lq5/d<",
            "-",
            "Lz1/c$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz1/c$e;->h:Lz1/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Lq5/d;)Lq5/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz1/c$e;

    iget-object p0, p0, Lz1/c$e;->h:Lz1/c;

    invoke-direct {v0, p0, p1}, Lz1/c$e;-><init>(Lz1/c;Lq5/d;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq5/d;

    invoke-virtual {p0, p1}, Lz1/c$e;->invoke(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz1/c$e;->create(Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lz1/c$e;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lz1/c$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lz1/c$e;->g:I

    if-nez v0, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lz1/c$e;->h:Lz1/c;

    invoke-virtual {p0}, Lz1/c;->i()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method