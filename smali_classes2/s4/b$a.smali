.class final Ls4/b$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls4/b;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Li6/m0;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.launcher.setting.iconpack.viewmodel.IconPackListViewModel$1"
    f = "IconPackListViewModel.kt"
    l = {
        0x3d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Ls4/b;


# direct methods
.method constructor <init>(Ls4/b;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls4/b;",
            "Lq5/d<",
            "-",
            "Ls4/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ls4/b$a;->h:Ls4/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance p1, Ls4/b$a;

    iget-object p0, p0, Ls4/b$a;->h:Ls4/b;

    invoke-direct {p1, p0, p2}, Ls4/b$a;-><init>(Ls4/b;Lq5/d;)V

    return-object p1
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ls4/b$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Ls4/b$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Ls4/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Ls4/b$a;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ls4/b$a;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    sget-object p1, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p1}, Lo3/b$b;->a()Lo3/b;

    move-result-object p1

    invoke-virtual {p1}, Lo3/b;->j()Lkotlinx/coroutines/flow/y;

    move-result-object p1

    new-instance v1, Ls4/b$a$a;

    iget-object v3, p0, Ls4/b$a;->h:Ls4/b;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ls4/b$a$a;-><init>(Ls4/b;Lq5/d;)V

    iput v2, p0, Ls4/b$a;->g:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/g;->i(Lkotlinx/coroutines/flow/e;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method