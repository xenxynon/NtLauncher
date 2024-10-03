.class public final Lg4/j;
.super Lcom/android/launcher3/model/WidgetsModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg4/j$a;,
        Lg4/j$b;
    }
.end annotation


# static fields
.field public static final b:Lg4/j$a;

.field private static c:Lcom/nothing/launcher/widgets/e;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg4/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg4/j$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lg4/j;->b:Lg4/j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/model/WidgetsModel;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg4/j;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic h()Lcom/nothing/launcher/widgets/e;
    .locals 1

    sget-object v0, Lg4/j;->c:Lcom/nothing/launcher/widgets/e;

    return-object v0
.end method

.method public static final synthetic i(Lg4/j;Landroid/content/Context;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/WidgetsModel;->getPackageUserKeys(Landroid/content/Context;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/nothing/launcher/widgets/e;)V
    .locals 0

    sput-object p0, Lg4/j;->c:Lcom/nothing/launcher/widgets/e;

    return-void
.end method

.method private final k(Ljava/util/List;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    new-instance p0, Lg4/j$c;

    invoke-direct {p0, p1}, Lg4/j$c;-><init>(Ljava/lang/Iterable;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Lo5/y;->b()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lo5/y;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    check-cast v1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    check-cast v3, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    move-object v5, v2

    check-cast v5, Lcom/android/launcher3/model/data/PackageItemInfo;

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->zipWidgets(Ljava/util/List;)V

    move-object v1, v3

    :goto_2
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized l(Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    invoke-direct {v0}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;-><init>()V

    if-nez p3, :cond_0

    iget-object p3, p0, Lg4/j;->a:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg4/j;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->getOrCreate(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p1}, Lo5/j;->A(Ljava/lang/Iterable;)Lg6/g;

    move-result-object p1

    sget-object p3, Lg4/j$d;->g:Lg4/j$d;

    invoke-static {p1, p3}, Lg6/j;->j(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object p1

    new-instance p3, Lg4/j$e;

    invoke-direct {p3, p0, p2, v0}, Lg4/j$e;-><init>(Lg4/j;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;)V

    invoke-static {p1, p3}, Lg6/j;->n(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object p1

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v3, Ljava/util/List;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/WidgetItem;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lg4/j;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/model/data/PackageItemInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/WidgetItem;
    .locals 5

    const-string v0, "providerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg4/j;->a:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v3, v2, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/WidgetItem;

    iget-object v3, v3, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/android/launcher3/model/WidgetItem;

    if-eqz v2, :cond_0

    return-object v2

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method

.method public getWidgetsListForPicker(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-direct {v1, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lg4/j;->a:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    instance-of v5, v4, Lcom/nothing/launcher/widgets/b;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/nothing/launcher/widgets/b;

    invoke-virtual {v5}, Lcom/nothing/launcher/widgets/b;->i()Lcom/nothing/launcher/widgets/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nothing/launcher/widgets/a;->e()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, p1}, Lcom/nothing/launcher/widgets/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    const-string v5, ""

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v4, v5, v3}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->create(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    invoke-direct {v6, v4, v5, v3}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetsListForPicker(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    instance-of v3, v3, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v0, Ln5/k;

    invoke-direct {v0, p1, v1}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ln5/k;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0}, Ln5/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lg4/j;->k(Ljava/util/List;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lg4/j;->k(Ljava/util/List;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public onPackageIconsUpdated(Ljava/util/Set;Landroid/os/UserHandle;Lcom/android/launcher3/LauncherAppState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "Lcom/android/launcher3/LauncherAppState;",
            ")V"
        }
    .end annotation

    const-string v0, "app"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/model/WidgetsModel;->onPackageIconsUpdated(Ljava/util/Set;Landroid/os/UserHandle;Lcom/android/launcher3/LauncherAppState;)V

    return-void
.end method

.method public update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;",
            ">;"
        }
    .end annotation

    const-string v0, "app.context"

    const-string v1, "app"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v3, Ln5/l;->h:Ln5/l$a;

    new-instance v3, Lcom/nothing/launcher/card/h;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/nothing/launcher/card/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Lcom/nothing/launcher/card/h;->b(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nothing/cardservice/CardWidgetMetaInfo;

    sget-object v5, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->N:Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v4}, Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;->a(Landroid/content/Context;Lcom/nothing/cardservice/CardWidgetMetaInfo;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v4

    new-instance v5, Lg4/a;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "app.context.packageManager"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4, v6}, Lg4/a;-><init>(Lcom/nothing/launcher/card/CardWidgetProviderInfo;Landroid/content/pm/PackageManager;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lg4/j;->l(Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V

    sget-object v0, Ln5/t;->a:Ln5/t;

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Ln5/l;->h:Ln5/l$a;

    invoke-static {v0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NTWidgetsModel"

    invoke-static {v1, v0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object p0

    const-string p1, "super.update(app, packageUser)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p0}, Lo5/j;->T(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
