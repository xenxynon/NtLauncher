.class public Lcom/android/systemui/shared/plugins/PluginInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;,
        Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;,
        Lcom/android/systemui/shared/plugins/PluginInstance$VersionCheckerImpl;,
        Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;,
        Lcom/android/systemui/shared/plugins/PluginInstance$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Li0/d;",
        ">",
        "Ljava/lang/Object;",
        "Li0/e;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginInstance"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mListener:Li0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li0/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mPlugin:Li0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mPluginContext:Landroid/content/Context;

.field private final mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Li0/f;Landroid/content/ComponentName;Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;Li0/d;)V
    .locals 0
    .param p5    # Li0/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Li0/f<",
            "TT;>;",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Li0/f;

    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->createPluginContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public containsPluginClass(Ljava/lang/Class;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlugin()Li0/d;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    return-object p0
.end method

.method getPluginContext()Landroid/content/Context;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    return-object p0
.end method

.method public getVersionInfo()Lcom/android/systemui/shared/plugins/VersionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->checkVersion(Li0/d;)Lcom/android/systemui/shared/plugins/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isLoaded()Z
    .locals 0

    invoke-super {p0}, Li0/e;->isLoaded()Z

    move-result p0

    return p0
.end method

.method public loadPlugin()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->createPlugin()Li0/d;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->createPluginContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->checkVersion(Li0/d;)Lcom/android/systemui/shared/plugins/VersionInfo;

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    instance-of v1, v0, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Li0/d;->h(Landroid/content/Context;Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Li0/f;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2, p0}, Li0/f;->k(Li0/d;Landroid/content/Context;Li0/e;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Li0/f;

    invoke-interface {v0, p0}, Li0/f;->n(Li0/e;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginInstance;->unloadPlugin()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginInstance;->loadPlugin()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->checkVersion(Li0/d;)Lcom/android/systemui/shared/plugins/VersionInfo;

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    instance-of v1, v0, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Li0/d;->h(Landroid/content/Context;Landroid/content/Context;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Li0/f;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2, p0}, Li0/f;->k(Li0/d;Landroid/content/Context;Li0/e;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginInstance;->unloadPlugin()V

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Li0/f;

    invoke-interface {v0, p0}, Li0/f;->p(Li0/e;)V

    return-void
.end method

.method public unloadPlugin()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Li0/f;

    invoke-interface {v1, v0, p0}, Li0/f;->c(Li0/d;Li0/e;)V

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    instance-of v1, v0, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v1, :cond_1

    invoke-interface {v0}, Li0/d;->onDestroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Li0/d;

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    return-void
.end method
