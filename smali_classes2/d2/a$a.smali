.class final Ld2/a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/a;->f(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
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
    c = "com.nothing.cardparser.parser.scheduler.SimulatedScheduler$simulate$2"
    f = "SimulatedScheduler.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Lx1/m;

.field final synthetic i:Landroid/view/ViewGroup;

.field final synthetic j:Ld2/a;

.field final synthetic k:I


# direct methods
.method constructor <init>(Lx1/m;Landroid/view/ViewGroup;Ld2/a;ILq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx1/m;",
            "Landroid/view/ViewGroup;",
            "Ld2/a;",
            "I",
            "Lq5/d<",
            "-",
            "Ld2/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ld2/a$a;->h:Lx1/m;

    iput-object p2, p0, Ld2/a$a;->i:Landroid/view/ViewGroup;

    iput-object p3, p0, Ld2/a$a;->j:Ld2/a;

    iput p4, p0, Ld2/a$a;->k:I

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Lq5/d;)Lq5/d;
    .locals 7
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

    new-instance v6, Ld2/a$a;

    iget-object v1, p0, Ld2/a$a;->h:Lx1/m;

    iget-object v2, p0, Ld2/a$a;->i:Landroid/view/ViewGroup;

    iget-object v3, p0, Ld2/a$a;->j:Ld2/a;

    iget v4, p0, Ld2/a$a;->k:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ld2/a$a;-><init>(Lx1/m;Landroid/view/ViewGroup;Ld2/a;ILq5/d;)V

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq5/d;

    invoke-virtual {p0, p1}, Ld2/a$a;->invoke(Lq5/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Ld2/a$a;->create(Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Ld2/a$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Ld2/a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Ld2/a$a;->g:I

    if-nez v0, :cond_1

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ld2/a$a;->h:Lx1/m;

    iget-object v0, p0, Ld2/a$a;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Ld2/a$a;->j:Ld2/a;

    iget v2, p0, Ld2/a$a;->k:I

    invoke-interface {p1, v0, v1, v2}, Lx1/m;->g(Landroid/view/ViewGroup;Lx1/l;I)V

    iget-object p1, p0, Ld2/a$a;->j:Ld2/a;

    invoke-static {p1}, Ld2/a;->d(Ld2/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld2/a$a;->h:Lx1/m;

    iget-object p0, p0, Ld2/a$a;->j:Ld2/a;

    invoke-static {p0}, Ld2/a;->d(Ld2/a;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lx1/m;->f(Ljava/util/List;)V

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
