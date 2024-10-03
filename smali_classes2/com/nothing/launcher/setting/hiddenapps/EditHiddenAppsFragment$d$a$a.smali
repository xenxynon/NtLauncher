.class final Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Ln5/k<",
        "+[",
        "Lcom/android/launcher3/model/data/AppInfo;",
        "+[",
        "Lcom/android/launcher3/model/data/AppInfo;",
        ">;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.launcher.setting.hiddenapps.EditHiddenAppsFragment$onViewCreated$3$1$1"
    f = "EditHiddenAppsFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field synthetic h:Ljava/lang/Object;

.field final synthetic i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;[Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->h(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;[Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final h(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;[Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 3

    invoke-static {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->b(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "appsView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->b(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    move-result-object p0

    if-nez v0, :cond_2

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {}, Lo5/d0;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    goto :goto_2

    :cond_2
    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getAppsList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    :goto_2
    return-void
.end method

.method private static final i(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 1
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

    new-instance v0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-direct {v0, p0, p2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;-><init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;Lq5/d;)V

    iput-object p1, v0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final g(Ln5/k;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln5/k<",
            "[",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "[",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln5/k;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->g(Ln5/k;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->g:I

    if-nez v0, :cond_5

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->h:Ljava/lang/Object;

    check-cast p1, Ln5/k;

    invoke-virtual {p1}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p1}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/launcher3/model/data/AppInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllAppsWithHiddenApps data changed, allApps size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hiddenApps size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EditHiddenAppsFragment"

    invoke-static {v2, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-static {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->c(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-static {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->c(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, p1}, Lo5/j;->u(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-static {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->b(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "appsView"

    if-nez v1, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getHiddenApps()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-static {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->b(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getHiddenApps()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-static {v1, p1}, Lo5/j;->u(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    new-instance v1, Lcom/nothing/launcher/setting/hiddenapps/a;

    invoke-direct {v1, p1, v0}, Lcom/nothing/launcher/setting/hiddenapps/a;-><init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;[Lcom/android/launcher3/model/data/AppInfo;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-static {p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->b(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v3

    :cond_2
    invoke-virtual {p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getRecyclerView()Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "recyclerView isComputingLayout, delay to update adapter content."

    invoke-static {v2, p1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    invoke-static {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->b(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, p0

    :goto_0
    invoke-virtual {v3}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getRecyclerView()Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    move-result-object p0

    new-instance p1, Lcom/nothing/launcher/setting/hiddenapps/b;

    invoke-direct {p1, v1}, Lcom/nothing/launcher/setting/hiddenapps/b;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
