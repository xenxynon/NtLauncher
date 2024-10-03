.class public Lcom/android/launcher3/util/MainThreadInitializedObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;,
        Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final IGNORE_PREVIEW_CONTEXT_CLASS:[Ljava/lang/reflect/Type;


# instance fields
.field private final mProvider:Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    const-class v2, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/util/MainThreadInitializedObject;->IGNORE_PREVIEW_CONTEXT_CLASS:[Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mProvider:Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Class;ILandroid/content/Context;)Lcom/android/launcher3/util/ResourceBasedOverride;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->lambda$forOverride$3(Ljava/lang/Class;ILandroid/content/Context;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->lambda$get$0(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->lambda$get$1(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->lambda$ignorePreviewContext$2(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0
.end method

.method public static forOverride(Ljava/lang/Class;I)Lcom/android/launcher3/util/MainThreadInitializedObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/launcher3/util/ResourceBasedOverride;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/d0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/d0;-><init>(Ljava/lang/Class;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    return-object v0
.end method

.method private ignorePreviewContext()Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    sget-object v0, Lcom/android/launcher3/util/MainThreadInitializedObject;->IGNORE_PREVIEW_CONTEXT_CLASS:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/f0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/f0;-><init>(Ljava/lang/reflect/Type;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target generic super class type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", match = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NT-"

    invoke-static {v0, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method private static synthetic lambda$forOverride$3(Ljava/lang/Class;ILandroid/content/Context;)Lcom/android/launcher3/util/ResourceBasedOverride;
    .locals 0

    invoke-static {p0, p2, p1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$get$0(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mProvider:Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$get$1(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$ignorePreviewContext$2(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->ignorePreviewContext()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    iget-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mProvider:Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;

    invoke-static {p1, p0, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->access$000(Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lv2/a;->c()Landroid/app/Application;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nothing/launcher/NTLauncherApplication;->d(Landroid/content/Context;)V

    new-instance v0, Lcom/android/launcher3/util/g0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/g0;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)V

    const-string p1, "main.thread.object"

    invoke-static {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/e0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/e0;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getNoCreate()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    return-object p0
.end method
