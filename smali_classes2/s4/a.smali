.class public final Ls4/a;
.super Ln4/d;
.source "SourceFile"

# interfaces
.implements Ls3/d;


# instance fields
.field private final m:Lkotlinx/coroutines/flow/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/t<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lkotlinx/coroutines/flow/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/y<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ln4/d;-><init>()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->F(Ls3/d;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v0, v1, v2, v1}, Lkotlinx/coroutines/flow/a0;->b(IILk6/e;ILjava/lang/Object;)Lkotlinx/coroutines/flow/t;

    move-result-object v0

    iput-object v0, p0, Ls4/a;->m:Lkotlinx/coroutines/flow/t;

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->a(Lkotlinx/coroutines/flow/t;)Lkotlinx/coroutines/flow/y;

    move-result-object v0

    iput-object v0, p0, Ls4/a;->n:Lkotlinx/coroutines/flow/y;

    return-void
.end method

.method public static final synthetic l(Ls4/a;)Lkotlinx/coroutines/flow/t;
    .locals 0

    iget-object p0, p0, Ls4/a;->m:Lkotlinx/coroutines/flow/t;

    return-object p0
.end method


# virtual methods
.method public final m()Lkotlinx/coroutines/flow/y;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/y<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ls4/a;->n:Lkotlinx/coroutines/flow/y;

    return-object p0
.end method

.method protected onCleared()V
    .locals 1

    invoke-super {p0}, Ln4/d;->onCleared()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->I(Ls3/d;)V

    return-void
.end method

.method public onNewPackSelected(Ljava/lang/String;)V
    .locals 7

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Li6/m0;

    move-result-object v1

    new-instance v4, Ls4/a$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Ls4/a$a;-><init>(Ls4/a;Ljava/lang/String;Lq5/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method
