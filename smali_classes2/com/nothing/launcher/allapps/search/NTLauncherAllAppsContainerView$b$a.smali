.class final Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nothing.launcher.allapps.search.NTLauncherAllAppsContainerView$onFinishInflate$1$1"
    f = "NTLauncherAllAppsContainerView.kt"
    l = {
        0xa2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;->h:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

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

    new-instance p1, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;->h:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-direct {p1, p0, p2}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;-><init>(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;->g:I

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

    iget-object p1, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;->h:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-static {p1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->l(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.nothing.launcher.NTLauncher"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lq2/m;

    invoke-virtual {p1}, Lq2/m;->getHiddenAppsModel()Lg4/g;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v2, v1}, Lg4/g;->r(Lg4/g;Ljava/util/concurrent/CopyOnWriteArrayList;ILjava/lang/Object;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    new-instance v3, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;

    iget-object v4, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;->h:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-direct {v3, v4, v1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;-><init>(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;Lq5/d;)V

    iput v2, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;->g:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/g;->i(Lkotlinx/coroutines/flow/e;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method