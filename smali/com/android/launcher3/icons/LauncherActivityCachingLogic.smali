.class public Lcom/android/launcher3/icons/LauncherActivityCachingLogic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/cache/CachingLogic;
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/icons/cache/CachingLogic<",
        "Landroid/content/pm/LauncherActivityInfo;",
        ">;",
        "Lcom/android/launcher3/util/ResourceBasedOverride;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherActivityCachingLogic;
    .locals 2

    const-class v0, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;

    const v1, 0x7f120141

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;

    return-object p0
.end method


# virtual methods
.method public getComponent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/ComponentName;
    .locals 0
    .param p1    # Landroid/content/pm/LauncherActivityInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->getComponent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Landroid/content/pm/LauncherActivityInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->getLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUser(Landroid/content/pm/LauncherActivityInfo;)Landroid/os/UserHandle;
    .locals 0
    .param p1    # Landroid/content/pm/LauncherActivityInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUser(Ljava/lang/Object;)Landroid/os/UserHandle;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->getUser(Landroid/content/pm/LauncherActivityInfo;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public loadIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/LauncherActivityInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lz3/a;->a:Lz3/a;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz3/a;->a(Landroid/content/Context;Z)Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconProvider()Lcom/android/launcher3/icons/LauncherIconProvider;

    move-result-object p1

    sget-object v1, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v1}, Lo3/b$b;->a()Lo3/b;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p0, p1}, Lo3/b;->h(ZLandroid/content/pm/LauncherActivityInfo;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->loadIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method
