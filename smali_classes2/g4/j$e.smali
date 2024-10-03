.class final Lg4/j$e;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/j;->l(Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lcom/android/launcher3/model/WidgetItem;",
        "Ljava/util/List<",
        "+",
        "Landroid/util/Pair<",
        "Lcom/android/launcher3/model/data/PackageItemInfo;",
        "Lcom/android/launcher3/model/WidgetItem;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lg4/j;

.field final synthetic h:Lcom/android/launcher3/LauncherAppState;

.field final synthetic i:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;


# direct methods
.method constructor <init>(Lg4/j;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;)V
    .locals 0

    iput-object p1, p0, Lg4/j$e;->g:Lg4/j;

    iput-object p2, p0, Lg4/j$e;->h:Lcom/android/launcher3/LauncherAppState;

    iput-object p3, p0, Lg4/j$e;->i:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/model/WidgetItem;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/WidgetItem;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "widgetItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg4/j$e;->g:Lg4/j;

    iget-object v1, p0, Lg4/j$e;->h:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lg4/j;->i(Lg4/j;Landroid/content/Context;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/List;

    move-result-object v0

    const-string v1, "getPackageUserKeys(app.context, widgetItem)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lg4/j$e;->i:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo5/j;->n(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v3, v2, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    const-string v4, "com.nothing.hearthstone"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/nothing/launcher/widgets/c;

    iget-object v4, v2, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    const-string v5, "it.mPackageName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    const-string v6, "it.mUser"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/nothing/launcher/widgets/a;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Lcom/nothing/launcher/widgets/a;-><init>(ZI)V

    invoke-direct {v3, v4, v5, v6}, Lcom/nothing/launcher/widgets/c;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/nothing/launcher/widgets/a;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->getOrCreate(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v3

    sget-object v4, Lg4/j;->b:Lg4/j$a;

    new-instance v5, Lcom/nothing/launcher/widgets/e;

    const-string v6, "pkgItem"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/launcher3/model/WidgetItem;

    aput-object p1, v6, v7

    invoke-static {v6}, Lo5/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v5, v3, v7, v6}, Lcom/nothing/launcher/widgets/e;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lg4/j$a;->b(Lcom/nothing/launcher/widgets/e;)V

    :cond_0
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->getOrCreate(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v2

    invoke-direct {v3, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0, p1}, Lg4/j$e;->a(Lcom/android/launcher3/model/WidgetItem;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
