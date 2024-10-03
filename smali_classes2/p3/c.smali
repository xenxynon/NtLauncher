.class public abstract Lp3/c;
.super Lcom/android/launcher3/icons/cache/BaseIconCache;
.source "SourceFile"


# instance fields
.field private final iconProvider:Lcom/android/launcher3/icons/IconProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZLcom/android/launcher3/icons/IconProvider;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgLooper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/icons/cache/BaseIconCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V

    iput-object p7, p0, Lp3/c;->iconProvider:Lcom/android/launcher3/icons/IconProvider;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/icons/BaseIconFactory;Lp3/c;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lp3/c;->getAppIconInfo$lambda-1(Lcom/android/launcher3/icons/BaseIconFactory;Lp3/c;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final getAppIconInfo$lambda-1(Lcom/android/launcher3/icons/BaseIconFactory;Lp3/c;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 2

    const-string v0, "$li"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$user"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lp3/c;->iconProvider:Lcom/android/launcher3/icons/IconProvider;

    iget v1, p1, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/icons/IconProvider;->getAppDefinedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v1}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    invoke-virtual {v1, p3}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object p3

    invoke-virtual {p1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setInstantApp(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    return-object p1
.end method


# virtual methods
.method protected cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZLjava/lang/Boolean;Ljava/util/function/Function;)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;ZZ",
            "Ljava/lang/Boolean;",
            "Ljava/util/function/Function<",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;"
        }
    .end annotation

    const-string v0, "componentName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoProvider"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cachingLogic"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/database/Cursor;ZZLjava/lang/Boolean;Ljava/util/function/Function;)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    return-object v0
.end method

.method protected getAppIconInfo(Lcom/android/launcher3/icons/BaseIconFactory;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 8

    const-string v0, "li"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "appInfo.packageName"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    iget-object v6, p0, Lp3/c;->iconProvider:Lcom/android/launcher3/icons/IconProvider;

    new-instance v7, Lp3/b;

    invoke-direct {v7, p1, p0, p2, p3}, Lp3/b;-><init>(Lcom/android/launcher3/icons/BaseIconFactory;Lp3/c;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V

    move-object v3, p3

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lo3/b;->m(Ljava/lang/String;Landroid/os/UserHandle;ZLcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;Ljava/util/function/Supplier;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method protected updateTitleAndContentDescription(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Ljava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly3/b;->a:Ly3/b;

    invoke-virtual {v0, p3}, Ly3/b;->b(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateTitleAndContentDescription(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Ljava/lang/CharSequence;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method protected updateTitleAndContentDescription(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/os/UserHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cachingLogic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly3/b;->a:Ly3/b;

    invoke-virtual {v0, p4}, Ly3/b;->b(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p1}, Lcom/android/launcher3/icons/cache/CachingLogic;->getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lcom/android/launcher3/icons/cache/CachingLogic;->getDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object p0, p2, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateTitleAndContentDescription(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method
