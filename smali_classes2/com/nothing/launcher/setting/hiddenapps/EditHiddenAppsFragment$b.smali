.class final Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->onStop()V
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
    c = "com.nothing.launcher.setting.hiddenapps.EditHiddenAppsFragment$onStop$1"
    f = "EditHiddenAppsFragment.kt"
    l = {}
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
            "Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

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

    new-instance p1, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-direct {p1, p0, p2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;-><init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;->g:I

    if-nez v0, :cond_1

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-static {p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->b(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "appsView"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getHiddenApps()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-static {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->d(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lg4/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lg4/g;->v(Ljava/util/List;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
