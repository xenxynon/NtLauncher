.class final Lz1/b$c;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/b;->p(Lq5/d;)Ljava/lang/Object;
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
    c = "com.nothing.cardparser.parser.anim.SimulatedAnimator$startAnim$2"
    f = "SimulatedAnimator.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Lz1/b;


# direct methods
.method constructor <init>(Lz1/b;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/b;",
            "Lq5/d<",
            "-",
            "Lz1/b$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz1/b$c;->h:Lz1/b;

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

    new-instance v0, Lz1/b$c;

    iget-object p0, p0, Lz1/b$c;->h:Lz1/b;

    invoke-direct {v0, p0, p1}, Lz1/b$c;-><init>(Lz1/b;Lq5/d;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq5/d;

    invoke-virtual {p0, p1}, Lz1/b$c;->invoke(Lq5/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lz1/b$c;->create(Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lz1/b$c;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lz1/b$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lz1/b$c;->g:I

    if-nez v0, :cond_7

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lz1/b$c;->h:Lz1/b;

    invoke-static {p1}, Lz1/b;->b(Lz1/b;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5185d186

    if-eq v0, v1, :cond_3

    const v1, -0x37b237d3

    if-eq v0, v1, :cond_1

    const v1, 0x65825f6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lz1/b$c;->h:Lz1/b;

    invoke-virtual {p0}, Lz1/b;->pause()V

    goto :goto_1

    :cond_1
    const-string v0, "resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lz1/b$c;->h:Lz1/b;

    invoke-virtual {p0}, Lz1/b;->a()V

    goto :goto_1

    :cond_3
    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lz1/b$c;->h:Lz1/b;

    invoke-virtual {p0}, Lz1/b;->cancel()V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object p0, p0, Lz1/b$c;->h:Lz1/b;

    invoke-virtual {p0}, Lz1/b;->f()Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    :goto_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
