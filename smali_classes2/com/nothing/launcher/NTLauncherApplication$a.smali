.class public final Lcom/nothing/launcher/NTLauncherApplication$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/NTLauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/NTLauncherApplication$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/NTLauncherApplication$a;->i(Z)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/NTLauncherApplication$a;->j(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/NTLauncherApplication$a;->k(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/nothing/launcher/NTLauncherApplication$a;->l()V

    return-void
.end method

.method public static final synthetic e(Lcom/nothing/launcher/NTLauncherApplication$a;Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/NTLauncherApplication$a;->h(Landroid/app/Application;)V

    return-void
.end method

.method private final h(Landroid/app/Application;)V
    .locals 4

    sget-object p0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {p0, p1}, Lv2/a$a;->b(Landroid/app/Application;)V

    sget-object v0, Lo3/c;->a:Lo3/c;

    invoke-virtual {v0, p1}, Lo3/c;->b(Landroid/app/Application;)V

    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Ly2/e;->a:Ly2/e;

    invoke-virtual {v1}, Ly2/e;->j()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v0

    invoke-static {v0}, Ly2/e;->m(Z)V

    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    invoke-virtual {v1}, Ly2/e;->j()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lq2/n;->g:Lq2/n;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    sget-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->INSTANCE:Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;

    invoke-virtual {v0, p1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->init(Landroid/content/Context;)V

    sget-object p1, Lq2/q;->a:Lq2/q;

    invoke-virtual {v0, p1}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->setUpdateIconFunction(Ljava/util/function/Function;)V

    sget-object p1, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p1}, Lo3/b$b;->a()Lo3/b;

    move-result-object p1

    sget-object v0, Lq2/p;->a:Lq2/p;

    invoke-virtual {p1, v0}, Lo3/b;->E(Ljava/util/function/Function;)V

    sget-object p1, Lcom/android/launcher3/util/LockedUserState;->Companion:Lcom/android/launcher3/util/LockedUserState$Companion;

    invoke-virtual {p0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/LockedUserState$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object p0

    sget-object p1, Lq2/o;->g:Lq2/o;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LockedUserState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final i(Z)V
    .locals 0

    invoke-static {p0}, Ly2/e;->a(Z)V

    return-void
.end method

.method private static final j(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz3/c;->a:Lz3/c;

    invoke-virtual {v0, p0}, Lz3/c;->b(Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final k(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->INSTANCE:Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;

    invoke-virtual {v0, p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->isBadForegroundMono(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final l()V
    .locals 2

    sget-object v0, Lcom/nothing/launcher/track/a;->a:Lcom/nothing/launcher/track/a;

    sget-object v1, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v1}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nothing/launcher/track/a;->e(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final f(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureApplicationContextExist: current application is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NTLauncherApplication"

    invoke-static {v1, v0}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    invoke-direct {p0, p1}, Lcom/nothing/launcher/NTLauncherApplication$a;->h(Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureApplicationContextExist: get non app context, context is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    const-string p0, "com.nothing.launcher"

    return-object p0
.end method
