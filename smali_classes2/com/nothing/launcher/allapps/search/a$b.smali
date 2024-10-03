.class public final Lcom/nothing/launcher/allapps/search/a$b;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/allapps/search/a;->doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/allapps/search/a;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/android/launcher3/search/SearchCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/search/SearchCallback<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nothing/launcher/allapps/search/a;Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/allapps/search/a;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/search/SearchCallback<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/allapps/search/a$b;->g:Lcom/nothing/launcher/allapps/search/a;

    iput-object p2, p0, Lcom/nothing/launcher/allapps/search/a$b;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/nothing/launcher/allapps/search/a$b;->i:Lcom/android/launcher3/search/SearchCallback;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/launcher/allapps/search/a$b;->n(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static final n(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/search/SearchCallback;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 4

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dataModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "apps"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p3, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    const-string p3, "apps.data"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/nothing/launcher/allapps/search/a$b;->g:Lcom/nothing/launcher/allapps/search/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p3}, Lcom/nothing/launcher/allapps/search/a;->a(Lcom/nothing/launcher/allapps/search/a;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getHiddenAppsView()Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/nothing/launcher/hiddenapps/HiddenAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lo5/c;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/android/launcher3/allapps/AppInfoComparator;

    iget-object p2, p0, Lcom/nothing/launcher/allapps/search/a$b;->g:Lcom/nothing/launcher/allapps/search/a;

    invoke-virtual {p2}, Lcom/nothing/launcher/allapps/search/a;->c()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/launcher3/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/nothing/launcher/allapps/search/a$b;->g:Lcom/nothing/launcher/allapps/search/a;

    iget-object p2, p0, Lcom/nothing/launcher/allapps/search/a$b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/nothing/launcher/allapps/search/a;->d(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/nothing/launcher/allapps/search/a$b;->g:Lcom/nothing/launcher/allapps/search/a;

    invoke-static {p2}, Lcom/nothing/launcher/allapps/search/a;->b(Lcom/nothing/launcher/allapps/search/a;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/nothing/launcher/allapps/search/a$b;->i:Lcom/android/launcher3/search/SearchCallback;

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/a$b;->h:Ljava/lang/String;

    new-instance v0, Lcom/nothing/launcher/allapps/search/b;

    invoke-direct {v0, p3, p0, p1}, Lcom/nothing/launcher/allapps/search/b;-><init>(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
