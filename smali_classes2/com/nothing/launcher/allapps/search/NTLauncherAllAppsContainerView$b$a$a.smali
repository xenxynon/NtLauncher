.class final Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nothing.launcher.allapps.search.NTLauncherAllAppsContainerView$onFinishInflate$1$1$1"
    f = "NTLauncherAllAppsContainerView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field synthetic h:Ljava/lang/Object;

.field final synthetic i:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->i:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method

.method public static synthetic a([Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->g([Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private static final g([Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lo5/c;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
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

    new-instance v0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->i:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-direct {v0, p0, p2}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;-><init>(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;Lq5/d;)V

    iput-object p1, v0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final e(Ln5/k;Lq5/d;)Ljava/lang/Object;
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

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln5/k;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->e(Ln5/k;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->g:I

    if-nez v0, :cond_2

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->h:Ljava/lang/Object;

    check-cast p1, Ln5/k;

    invoke-virtual {p1}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p1}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/launcher3/model/data/AppInfo;

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->i:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-static {v0}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->l(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lq2/m;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->p([Lcom/android/launcher3/model/data/AppInfo;)V

    :cond_0
    new-instance v0, Lcom/nothing/launcher/allapps/search/f;

    invoke-direct {v0, p1}, Lcom/nothing/launcher/allapps/search/f;-><init>([Lcom/android/launcher3/model/data/AppInfo;)V

    iget-object v1, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->i:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-static {v1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->k(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->i:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-static {v2}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->m(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->updateItemFilter(Ljava/util/function/Predicate;)V

    iget-object v1, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->i:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-static {v1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->n(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->i:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-static {v1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->k(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->i:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getWorkManager()Lcom/android/launcher3/allapps/WorkProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/WorkProfileManager;->getMatcher()Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->updateItemFilter(Ljava/util/function/Predicate;)V

    :cond_1
    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->i:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-static {v0}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->l(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lq2/m;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-static {p1}, Lo5/c;->A([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->onAppComponentHidden(Ljava/util/List;)V

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->i:Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;

    invoke-static {p0}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;->l(Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lq2/m;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p0

    const-class p1, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object p0

    const-string p1, "mActivityContext.appsVie\u2026                        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->updatePredictionApps()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
