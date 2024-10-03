.class final Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nothing.launcher.setting.hiddenapps.EditHiddenAppsFragment$onViewCreated$3$1"
    f = "EditHiddenAppsFragment.kt"
    l = {
        0x61
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

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

    new-instance p1, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-direct {p1, p0, p2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;-><init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;->g:I

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

    iget-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-static {p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->d(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lg4/g;

    move-result-object p1

    iget-object v1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-static {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->b(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const-string v1, "appsView"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getHiddenApps()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg4/g;->q(Ljava/util/concurrent/CopyOnWriteArrayList;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    new-instance v1, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;

    iget-object v4, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-direct {v1, v4, v3}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;-><init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;Lq5/d;)V

    iput v2, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;->g:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/g;->i(Lkotlinx/coroutines/flow/e;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
