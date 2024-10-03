.class public final Lg4/g;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg4/g$a;
    }
.end annotation


# static fields
.field public static final n:Lg4/g$a;

.field private static o:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "-",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final g:Landroid/app/Application;

.field private final h:Lcom/android/launcher3/allapps/AppInfoComparator;

.field private i:Lcom/android/launcher3/pm/UserCache;

.field private j:Lcom/android/launcher3/util/PackageManagerHelper;

.field private k:Lkotlinx/coroutines/flow/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/u<",
            "[",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/android/launcher3/model/data/AppInfo;

.field private m:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg4/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg4/g$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lg4/g;->n:Lg4/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lg4/g;->g:Landroid/app/Application;

    new-instance v1, Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lg4/g;->h:Lcom/android/launcher3/allapps/AppInfoComparator;

    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "INSTANCE.get(context)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    iput-object v1, p0, Lg4/g;->i:Lcom/android/launcher3/pm/UserCache;

    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lg4/g;->j:Lcom/android/launcher3/util/PackageManagerHelper;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v0}, Lkotlinx/coroutines/flow/e0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/u;

    move-result-object v0

    iput-object v0, p0, Lg4/g;->k:Lkotlinx/coroutines/flow/u;

    new-instance v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    iput-object v0, p0, Lg4/g;->l:Lcom/android/launcher3/model/data/AppInfo;

    return-void
.end method

.method public static synthetic a(Lg4/g;[Lg4/c;)V
    .locals 0

    invoke-static {p0, p1}, Lg4/g;->n(Lg4/g;[Lg4/c;)V

    return-void
.end method

.method public static final synthetic b(Lg4/g;[Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/ComponentKey;)Ln5/k;
    .locals 0

    invoke-direct {p0, p1, p2}, Lg4/g;->o([Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/ComponentKey;)Ln5/k;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lg4/g;)Lkotlinx/coroutines/flow/u;
    .locals 0

    iget-object p0, p0, Lg4/g;->k:Lkotlinx/coroutines/flow/u;

    return-object p0
.end method

.method public static final synthetic d(Lg4/g;[Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lg4/g;->t([Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lg4/g;)Lg4/d;
    .locals 0

    invoke-direct {p0}, Lg4/g;->u()Lg4/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lg4/g;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lg4/g;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic g()Ly5/l;
    .locals 1

    sget-object v0, Lg4/g;->o:Ly5/l;

    return-object v0
.end method

.method public static final synthetic h(Lg4/g;)Lcom/android/launcher3/util/PackageManagerHelper;
    .locals 0

    iget-object p0, p0, Lg4/g;->j:Lcom/android/launcher3/util/PackageManagerHelper;

    return-object p0
.end method

.method public static final synthetic i(Lg4/g;)Lcom/android/launcher3/pm/UserCache;
    .locals 0

    iget-object p0, p0, Lg4/g;->i:Lcom/android/launcher3/pm/UserCache;

    return-object p0
.end method

.method public static final synthetic j(Ly5/l;)V
    .locals 0

    sput-object p0, Lg4/g;->o:Ly5/l;

    return-void
.end method

.method public static final synthetic k(Lg4/g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lg4/g;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final varargs m([Lg4/c;)V
    .locals 2

    iget-object v0, p0, Lg4/g;->g:Landroid/app/Application;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherDatabase()Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    move-result-object v0

    new-instance v1, Lg4/f;

    invoke-direct {v1, p0, p1}, Lg4/f;-><init>(Lg4/g;[Lg4/c;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final n(Lg4/g;[Lg4/c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$hiddenApp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lg4/g;->u()Lg4/d;

    move-result-object v0

    invoke-interface {v0}, Lg4/d;->deleteAll()V

    invoke-direct {p0}, Lg4/g;->u()Lg4/d;

    move-result-object p0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg4/c;

    invoke-interface {p0, p1}, Lg4/d;->c([Lg4/c;)V

    return-void
.end method

.method private final o([Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/ComponentKey;)Ln5/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "Lcom/android/launcher3/util/ComponentKey;",
            ")",
            "Ln5/k<",
            "Lg4/c;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-object v5, p1, v3

    iget-object v6, v5, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v7, p2, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v7, p2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_3

    invoke-static {v0}, Lo5/j;->I(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {p0, p1}, Lg4/g;->p(Lcom/android/launcher3/model/data/AppInfo;)Lg4/c;

    move-result-object p0

    new-instance p2, Ln5/k;

    invoke-direct {p2, p0, p1}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance p2, Ln5/k;

    const/4 p0, 0x0

    invoke-direct {p2, p0, p0}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-object p2
.end method

.method private final p(Lcom/android/launcher3/model/data/AppInfo;)Lg4/c;
    .locals 11

    new-instance v10, Lg4/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/launcher3/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    iget-object p0, p0, Lg4/g;->i:Lcom/android/launcher3/pm/UserCache;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v8

    const-wide/16 v1, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lg4/c;-><init>(JJLjava/lang/String;Ljava/lang/String;[BJ)V

    return-object v10
.end method

.method public static synthetic r(Lg4/g;Ljava/util/concurrent/CopyOnWriteArrayList;ILjava/lang/Object;)Lkotlinx/coroutines/flow/e;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lg4/g;->q(Ljava/util/concurrent/CopyOnWriteArrayList;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method private final s()Lkotlinx/coroutines/flow/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/util/List<",
            "Lg4/c;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lg4/g;->u()Lg4/d;

    move-result-object p0

    invoke-interface {p0}, Lg4/d;->b()Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method private final t([Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 1

    iget-object p0, p0, Lg4/g;->l:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v0, p2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object p2, p2, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    sget-object p2, Lcom/android/launcher3/model/data/AppInfo;->COMPONENT_KEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, p0, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    aget-object p0, p1, p0

    :goto_0
    return-object p0
.end method

.method private final u()Lg4/d;
    .locals 0

    iget-object p0, p0, Lg4/g;->g:Landroid/app/Application;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getLauncherDatabase()Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;->f()Lg4/d;

    move-result-object p0

    return-object p0
.end method

.method private final w(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg4/g;->h:Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-static {p1, v0}, Lo5/j;->Y(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lg4/g;->g:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    const-string v0, "context.resources.configuration.locales.get(0)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "Builder()\n            .s\u2026try)\n            .build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/launcher3/util/LabelComparator;

    invoke-direct {p1}, Lcom/android/launcher3/util/LabelComparator;-><init>()V

    invoke-static {p0, p1}, Lo5/d0;->e(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "tempApps.groupBy { it.se\u2026)\n                .values"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo5/j;->p(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string p2, "apps"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Li6/m0;

    move-result-object v0

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object v1

    new-instance v3, Lg4/g$b;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Lg4/g$b;-><init>(Lg4/g;[Lcom/android/launcher3/model/data/AppInfo;Lq5/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public final l(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    return-void
.end method

.method protected onCleared()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object v0, p0, Lg4/g;->g:Landroid/app/Application;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public final q(Ljava/util/concurrent/CopyOnWriteArrayList;)Lkotlinx/coroutines/flow/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Lkotlinx/coroutines/flow/e<",
            "Ln5/k<",
            "[",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "[",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;>;"
        }
    .end annotation

    iput-object p1, p0, Lg4/g;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p0, Lg4/g;->k:Lkotlinx/coroutines/flow/u;

    new-instance v0, Lg4/g$c;

    invoke-direct {v0, p1}, Lg4/g$c;-><init>(Lkotlinx/coroutines/flow/e;)V

    invoke-direct {p0}, Lg4/g;->s()Lkotlinx/coroutines/flow/e;

    move-result-object p1

    new-instance v1, Lg4/g$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg4/g$d;-><init>(Lg4/g;Lq5/d;)V

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/flow/g;->q(Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/flow/e;Ly5/r;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/g;->s(Lkotlinx/coroutines/flow/e;Lq5/g;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method public final v(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lo5/j;->n(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {p0, v1}, Lg4/g;->p(Lcom/android/launcher3/model/data/AppInfo;)Lg4/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Lg4/c;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg4/c;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg4/c;

    invoke-direct {p0, p1}, Lg4/g;->m([Lg4/c;)V

    :cond_1
    return-void
.end method
