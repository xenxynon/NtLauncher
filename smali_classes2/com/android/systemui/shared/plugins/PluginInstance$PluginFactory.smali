.class public Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/plugins/PluginInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Li0/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final mClassLoaderFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory<",
            "*>;"
        }
    .end annotation
.end field

.field private final mPluginClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mVersionChecker:Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;Ljava/lang/Class;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory<",
            "*>;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;

    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mComponentName:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mVersionChecker:Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;

    iput-object p6, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mPluginClass:Ljava/lang/Class;

    iput-object p7, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mClassLoaderFactory:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public checkVersion(Li0/d;)Lcom/android/systemui/shared/plugins/VersionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/systemui/shared/plugins/VersionInfo;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->createPlugin()Li0/d;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mVersionChecker:Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mPluginClass:Ljava/lang/Class;

    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;->checkVersion(Ljava/lang/Class;Ljava/lang/Class;Li0/d;)Lcom/android/systemui/shared/plugins/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public createPlugin()Li0/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-string v0, "Failed to load plugin"

    const-string v1, "PluginInstance"

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mClassLoaderFactory:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;

    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;->create(Ljava/lang/Class;)Li0/d;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public createPluginContext()Landroid/content/Context;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mClassLoaderFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    new-instance v1, Lcom/android/systemui/shared/plugins/PluginActionManager$PluginContextWrapper;

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/shared/plugins/PluginActionManager$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v0, "PluginInstance"

    const-string v1, "Failed to create plugin context"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
